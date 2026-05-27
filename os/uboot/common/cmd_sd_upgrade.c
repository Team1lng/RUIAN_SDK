#include <common.h>
#include <command.h>
#include <s_record.h>
#include <net.h>
#include <ata.h>
#include <part.h>
#include <fat.h>
#include <fs.h>

#define UBOOT_PARTTION "u-boot.bin"
#define ENV_PARTTION "env_ak3761e_nor.img"
#define ENVBK_PARTTION "env_ak3761e_nor.img"
#define DTB_PARTTION "EVB_CBDM_AK3760E_V1.0.1.dtb"
#define KERNEL_PARTTION "uImage"
#define LOGO_PARTTION "anyka_logo.rgb"
#define ROOTFS_PARTTION "root.sqsh4"
#define USR_PARTTION "usr.sqsh4"
#define CONFIG_PARTTION "config.jffs2"
#define APP_PARTTION "app.sqsh4"
// #define RESOURCE_PARTTION "resource.sqsh4"
#define DATA_PARTTION "data.jffs2"
#define TUYA_PARTTION "tuya.jffs2"
// #define ASTERISK_PARTTION "asterisk.sqsh4"

#define ENV_SD_UPGRADEIMAGE "sd_uprade_image"
#define ENV_UPGRADEIMAGE_VERSION "uprade_image_version"
#define UPGRADE_SCRIPT_END_STR "\n# <- this is end of image parttion\n"
#define SD_UPGRDE_SCRIPT_BUF_SIZE (16 * 1024)
#define UPGARDE_PARTITIONS_NUM_MAX (12)

// 启用横屏1024x600（默认），注释此行并取消下一行注释，切换为竖屏800x1280
#define LCD_SCREEN_7IN_1024X600 1  // 启用7寸横屏1024x600
#define LCD_SCREEN_PORTRAIT 0   // 启用竖屏800x1280
#define LCD_COLOR_DEPTH_24BPP 1 // 24位BGR888
#define LCD_ROTATE_90 1         // 启用90度旋转（和壁纸方向一致）
#define LCD_FB_BASE 0x83d02000  // 显存基地址（已验证正确）

// 颜色格式转换宏（通用，横/竖屏适配）
#define RGB888_TO_RGB565(rgb888)               \
    ((((rgb888 >> 16) & 0xFF) >> 3) << 11) |   \
        ((((rgb888 >> 8) & 0xFF) >> 2) << 5) | \
        (((rgb888 & 0xFF) >> 3) << 0)

static char upgrade_type = 0;

struct upgrade_partitions_info
{
    unsigned long offset;
    unsigned long size;

    unsigned long weights;
};
struct partition_mtdparts
{
    char name[32];
    unsigned long offset;
    unsigned long size;
};

struct upgrade_partitions_param
{
    char *buffer;
    unsigned long buf_size;
    char *img_offset_base;
    char version[32];
    struct upgrade_partitions_info partitions[UPGARDE_PARTITIONS_NUM_MAX];
    struct partition_mtdparts mtdparts[UPGARDE_PARTITIONS_NUM_MAX];

    int upgrade_total;
};

typedef int (*upgrade_file_partitions_check_func)(const char *buffer, struct upgrade_partitions_info *upgrade);

static int upgarde_file_version_check(const char *buffer, char *version)
{
    char *p = strstr(buffer, "#<upgrade_bin_version=");
    if (p == NULL)
    {
        printf("file error:%s\n", buffer);
        return -1;
    }
    p += 22;
    char *e = strstr(p, ">");
    if (e == NULL)
    {
        printf("file error:%s\n", buffer);
        return -1;
    }
    strncpy(version, p, e - p);
    char *env_version = getenv(ENV_UPGRADEIMAGE_VERSION);
    printf("upgarde version:%s cur version:%s\n", version, env_version);
    if (env_version == NULL)
    {
        return 1;
    }
    return strcmp(version, env_version) ? 1 : 0;
}
static const char *str_skip_sapce(const char *str)
{
    char *p = str;
    while ((p != NULL) && ((*p) == ' '))
    {
        p++;
    }
    return p;
}
static int upgarde_file_partitions_check(const char *buffer, const char *parttions_name, struct upgrade_partitions_info *info)
{
    char *line = buffer;
    char *endptr = NULL;
    char *nextline = NULL;
    char partitons_line[256] = {0};
    char *s = NULL;
    while ((nextline = strstr(line, "\n")) != NULL)
    {
        if ((nextline + 1) == NULL)
        {
            break;
        }
        nextline += 1;
        if (nextline == '\n')
        {
            line = nextline + 1;
            continue;
        }
        memset(partitons_line, 0, sizeof(partitons_line));

        strncpy(partitons_line, line, nextline - line - 1);
        if ((s = strstr(partitons_line, parttions_name)) != NULL)
        {
            s += strlen(parttions_name);
            if (s)
            {
                info->offset = simple_strtol(str_skip_sapce(s), &endptr, 10);
                s = endptr;
                info->size = simple_strtol(str_skip_sapce(s), &endptr, 10);
                printf("imgage:%s %d %d\n", parttions_name, info->offset, info->size);
            }
            break;
        }
        line = nextline + 1;
    }
    return 0;
}

static int upgarde_file_uboot_partition_check(const char *buffer, struct upgrade_partitions_info *partition)
{
    return upgarde_file_partitions_check(buffer, UBOOT_PARTTION, partition);
}
static int upgrade_file_envimg_partition_check(const char *buffer, struct upgrade_partitions_info *partition)
{
    return upgarde_file_partitions_check(buffer, ENV_PARTTION, partition);
}
static int upgrade_file_envbkimg_partition_check(const char *buffer, struct upgrade_partitions_info *partition)
{
    return upgarde_file_partitions_check(buffer, ENVBK_PARTTION, partition);
}
static int upgrade_file_dtb_partition_check(const char *buffer, struct upgrade_partitions_info *partition)
{
    return upgarde_file_partitions_check(buffer, DTB_PARTTION, partition);
}
static int upgrade_file_uImage_partition_check(const char *buffer, struct upgrade_partitions_info *partition)
{
    return upgarde_file_partitions_check(buffer, KERNEL_PARTTION, partition);
}
static int upgrade_file_logo_partition_check(const char *buffer, struct upgrade_partitions_info *partition)
{
    return upgarde_file_partitions_check(buffer, LOGO_PARTTION, partition);
}
static int upgrade_file_rootfs_partition_check(const char *buffer, struct upgrade_partitions_info *partition)
{
    return upgarde_file_partitions_check(buffer, ROOTFS_PARTTION, partition);
}
static int upgrade_file_usr_partition_check(const char *buffer, struct upgrade_partitions_info *partition)
{
    return upgarde_file_partitions_check(buffer, USR_PARTTION, partition);
}
static int upgrade_file_config_partition_check(const char *buffer, struct upgrade_partitions_info *partition)
{
    return upgarde_file_partitions_check(buffer, CONFIG_PARTTION, partition);
}
static int upgrade_file_app_partition_check(const char *buffer, struct upgrade_partitions_info *partition)
{
    return upgarde_file_partitions_check(buffer, APP_PARTTION, partition);
}
// static int upgrade_file_resource_partition_check(const char *buffer, struct upgrade_partitions_info *partition)
// {
//     return upgarde_file_partitions_check(buffer, RESOURCE_PARTTION, partition);
// }
static int upgrade_file_data_partition_check(const char *buffer, struct upgrade_partitions_info *partition)
{
    return upgarde_file_partitions_check(buffer, DATA_PARTTION, partition);
}
static int upgrade_file_tuya_partition_check(const char *buffer, struct upgrade_partitions_info *partition)
{
    return upgarde_file_partitions_check(buffer, TUYA_PARTTION, partition);
}
// static int upgrade_file_asterisk_partition_check(const char *buffer, struct upgrade_partitions_info *partition)
// {
//     return upgarde_file_partitions_check(buffer, ASTERISK_PARTTION, partition);
// }

static int sd_logo_upgrade_file_parttions(const char *dev, const char *part, const char *file, unsigned long long offset, int partitions_index, struct upgrade_partitions_param *upgrade)
{
    int ret = 0;
    char version[32] = {0};
    int i = 0;
    char *argc[6];
    char *addr_str = getenv("loadaddr");
    if (addr_str != NULL)
    {
        upgrade->buffer = simple_strtoul(addr_str, NULL, 16);
    }
    else
    {
        ret = -1;
        printf("[%s:%d]not find uprade file name:%s\n", __func__, __LINE__, file);
        goto finish;
    }
    if (upgrade->img_offset_base == 0)
    {
        upgrade->img_offset_base = upgrade->buffer;
    }
    char addr_str_offset[24] = {0};

    sprintf(addr_str_offset, "%0x", (unsigned long)upgrade->buffer + offset);

    argc[1] = "mmc";
    argc[2] = "0";
    argc[3] = addr_str_offset;
    argc[4] = file;

    if (do_load(NULL, 0, 5, argc, FS_TYPE_FAT))
    {
        printf("load file failed :%s\n", __func__);
        ret = -1;
        goto finish;
    }

    upgrade->partitions[partitions_index].offset = offset;
    upgrade->partitions[partitions_index].size = upgrade->mtdparts[partitions_index].size;
    upgrade->partitions[partitions_index].weights = upgrade->upgrade_total + upgrade->mtdparts[partitions_index].size;
    upgrade->upgrade_total += upgrade->mtdparts[partitions_index].size;

    // printf("img offsetbase:%lu \n", upgrade->img_offset_base - upgrade->buffer);
finish:
    return ret;
}

static int sd_upgrade_file_parttions(const char *dev, const char *part, const char *file, struct upgrade_partitions_param *upgrade)
{
    int ret = 0;
    char version[32] = {0};
    int i = 0;
    char *argc[6];
    char *addr_str = getenv("loadaddr");
    if (addr_str != NULL)
    {
        upgrade->buffer = simple_strtoul(addr_str, NULL, 16);
    }
    else
    {
        ret = -1;
        printf("[%s:%d]not find uprade file name:%s\n", __func__, __LINE__, file);
        goto finish;
    }
    argc[1] = "mmc";
    argc[2] = "0";
    argc[3] = addr_str;
    argc[4] = file;
    argc[5] = "0x4000";
    if (do_load(NULL, 0, 6, argc, FS_TYPE_FAT))
    {
        printf("load file failed :%s\n", __func__);
        ret = -1;
        goto finish;
    }
    // 检查版本是否一致
    if (upgarde_file_version_check(upgrade->buffer, version) <= 0)
    {
        printf("file version :%s\n", version);
        ret = -1;
        goto finish;
    }
    argc[1] = "mmc";
    argc[2] = "0";
    argc[3] = addr_str;
    argc[4] = file;
    argc[5] = "0x1000000";
    do_load(NULL, 0, 6, argc, FS_TYPE_FAT);

    char *end = strstr(upgrade->buffer, UPGRADE_SCRIPT_END_STR);
    if (end == NULL)
    {
        ret = -1;
        printf("file error:%s\n", file);
        goto finish;
    }
    *end = 0;

    memset(upgrade->version, 0, sizeof(upgrade->version));
    strcpy(upgrade->version, version);

    upgrade_file_partitions_check_func partitions_check_funs[UPGARDE_PARTITIONS_NUM_MAX] =
        {
            upgarde_file_uboot_partition_check,
            upgrade_file_envimg_partition_check,
            upgrade_file_envbkimg_partition_check,
            upgrade_file_dtb_partition_check,
            upgrade_file_uImage_partition_check,
            upgrade_file_logo_partition_check,
            upgrade_file_rootfs_partition_check,
            upgrade_file_config_partition_check,
            upgrade_file_usr_partition_check,
            upgrade_file_app_partition_check,
            // upgrade_file_resource_partition_check,
            upgrade_file_tuya_partition_check,
            upgrade_file_data_partition_check,
            // upgrade_file_asterisk_partition_check
        };
    // 检查u-boot分区是否存在
    for (i = 0; i < UPGARDE_PARTITIONS_NUM_MAX; i++)
    {
        partitions_check_funs[i](upgrade->buffer, &upgrade->partitions[i]);

        upgrade->partitions[i].weights = upgrade->upgrade_total + upgrade->partitions[i].size;
        upgrade->upgrade_total = upgrade->partitions[i].weights;
    }
    upgrade->img_offset_base = end + strlen(UPGRADE_SCRIPT_END_STR);
    // printf("img offsetbase:%lu \n", upgrade->img_offset_base - upgrade->buffer);
finish:
    return ret;
}

static int partition_string_parse(const char *input, struct partition_mtdparts *partition)
{
    char *p = NULL;
    // Parse partition name
    const char *openParen = strchr(input, '(');
    if (openParen == NULL)
    {
        printf("[%s:%d] failed\n", __func__, __LINE__);
        return -1;
    }
    const char *closeParen = strchr(openParen, ')');
    if (closeParen == NULL)
    {
        printf("[%s:%d] failed\n", __func__, __LINE__);
        return -1;
    }
    strncpy(partition->name, openParen + 1, closeParen - input - 2);

    // Parse size and offset
    partition->offset = 0;
    const char *at = strchr(input, '@');
    if (at == NULL)
    {
        printf("[%s:%d] failed\n", __func__, __LINE__);
        return -1;
    }
    partition->offset = 0;
    for (p = at + 3; p < openParen; ++p)
    {
        if (*p >= '0' && *p <= '9')
        {
            partition->offset = partition->offset * 16 + (*p - '0');
        }
        else if (*p >= 'a' && *p <= 'f')
        {
            partition->offset = partition->offset * 16 + (*p - 'a' + 10);
        }
        else if (*p >= 'A' && *p <= 'F')
        {
            partition->offset = partition->offset * 16 + (*p - 'A' + 10);
        }
        else
        {
            break;
        }
    }

    // Manually convert offset from hex string to unsigned long
    partition->size = 0;
    for (p = input; p < at; ++p)
    {
        if (*p >= '0' && *p <= '9')
        {
            partition->size = partition->size * 10 + (*p - '0');
        }
        else
        {
            break;
        }
    }
    partition->size *= 1024;
    printf("[%s] %d %d \n", partition->name, partition->offset, partition->size);
    return 0;
}
static int partitions_mtdparts_parse(const char *mtdparts, struct upgrade_partitions_param *upgrade)
{
    char *parts = strstr(mtdparts, ":");
    if (parts == NULL)
    {
        printf("[%s:%d] failed\n", __func__, __LINE__);
        return -1;
    }

    char *token = strtok(parts + 1, ",");
    if (token == NULL)
    {
        printf("[%s:%d] failed\n", __func__, __LINE__);
        return -1;
    }
    int index = 0;
    while (token != NULL)
    {
        // Parse each token to extract name, size, and offset
        partition_string_parse(token, &upgrade->mtdparts[index]);

        // Move to the next token
        token = strtok(NULL, ",");
        index++;
    }
    return 0;
}

static int partitions_mtdparts_parse_by_sdcard(const char *dev, const char *part, const char *file, struct upgrade_partitions_param *upgrade)
{

    char *env_addres = upgrade->img_offset_base + upgrade->partitions[1].offset;
    char *s = NULL;
    char *e = NULL;
    int ret = 0;
    char mtdparts[1024] = {0};
    int offset = 0;
    s = env_addres;
    while ((s) && (offset < upgrade->partitions[1].size))
    {
        // printf("%s\n",s);
        e = strstr(s, "mtdparts=");
        if (e == NULL)
        {
            offset += strlen(s) + 1;
            s = env_addres + offset;
        }
        else
        {
            break;
        }
    }
    strcpy(mtdparts, s);
    ret = partitions_mtdparts_parse(mtdparts, upgrade);
finish:
    return ret;
}
static int partitions_mtdparts_parse_by_envimg(struct upgrade_partitions_param *upgrade)
{
    char mtdparts[1024] = {0};
    strcpy(mtdparts, getenv("mtdparts"));
    return partitions_mtdparts_parse(mtdparts, upgrade);
}

static int upgrade_partitions_mtdparts(const char *dev, const char *part, const char *file, struct upgrade_partitions_param *upgrade)
{
    if (upgrade->partitions[1].size != 0)
    {
        return partitions_mtdparts_parse_by_sdcard(dev, part, file, upgrade);
    }

    return partitions_mtdparts_parse_by_envimg(upgrade);
}

/**
 * 升级进度条绘制函数 - 在LCD屏幕上绘制或更新进度条
 *
 * @param fb_base 帧缓冲起始地址(显存地址)
 * @param x 进度条左上角x坐标
 * @param y 进度条左上角y坐标
 * @param w 进度条宽度(像素)
 * @param h 进度条高度(像素)
 * @param weights 当前进度值(分子)
 * @param total 总进度值(分母)
 * @param fcolor 已完成部分颜色(RGB888格式)
 * @param bcolor 未完成部分颜色(RGB888格式)
 * @return 0表示成功
 */
/**
 * @brief 进度条绘制函数（支持横屏1024x600/竖屏800x1280）
 * @param fb_base: 显存基地址
 * @param x: 进度条左上角X坐标
 * @param y: 进度条左上角Y坐标
 * @param w: 进度条宽度
 * @param h: 进度条高度
 * @param weights: 当前进度值
 * @param total: 总进度值
 * @param fcolor: 前景色（RGB888，显存按BGR写入）
 * @param bcolor: 背景色（RGB888，显存按BGR写入）
 * @return 0: 成功
 */
static int upgrade_progress_bar_draw(void *fb_base, int x, int y, int w, int h, 
    unsigned long weights, unsigned long total, 
    unsigned int fcolor, unsigned int bcolor)
{
int i, j;
char *src = NULL;
unsigned long progress_width ;
// 兼容NULL的显存地址，使用默认基地址
void *fb = fb_base ? fb_base : (void *)LCD_FB_BASE;

// 防止除零/空指针错误
if (total == 0 || fb == NULL)
{
return 0;
}

// ===================== 分支1：横屏1024x600（核心逻辑复用你的正常代码） =====================
#if (LCD_SCREEN_7IN_1024X600 == 1 && LCD_SCREEN_PORTRAIT == 0)
// 横屏参数：24位色深，每行1024像素
const int SCREEN_W = 1024;
const int SCREEN_H = 600;

// 计算进度条起始地址（BGR格式，3字节/像素）
src = (char *)fb + (y * SCREEN_W + x) * 3;
// 计算已完成宽度（避免精度丢失）
progress_width = (weights * w) / total;

// 1. 绘制已完成部分（前景色，强制绘制，修复白屏）
for (i = 0; i < h; i++)
{
for (j = 0; j < progress_width; j++)
{
src[i * SCREEN_W * 3 + j * 3]     = fcolor & 0xFF;        // 蓝分量
src[i * SCREEN_W * 3 + j * 3 + 1] = (fcolor >> 8) & 0xFF; // 绿分量
src[i * SCREEN_W * 3 + j * 3 + 2] = (fcolor >> 16) & 0xFF;// 红分量
}
}

// 2. 仅进度未完成时绘制背景色
if (progress_width < w)
{
// 未完成部分起始地址
src = (char *)fb + (y * SCREEN_W + x + progress_width) * 3;
unsigned long bg_width = w - progress_width;
for (i = 0; i < h; i++)
{
for (j = 0; j < bg_width; j++)
{
src[i * SCREEN_W * 3 + j * 3]     = bcolor & 0xFF;        // 蓝分量
src[i * SCREEN_W * 3 + j * 3 + 1] = (bcolor >> 8) & 0xFF; // 绿分量
src[i * SCREEN_W * 3 + j * 3 + 2] = (bcolor >> 16) & 0xFF;// 红分量
}
}
}

// ===================== 分支2：竖屏800x1280（90度旋转适配） =====================
#elif (LCD_SCREEN_PORTRAIT == 1 && LCD_SCREEN_7IN_1024X600 == 0)
// 竖屏参数：24位色深，每行800像素
const int SCREEN_W = 800;
const int SCREEN_H = 1280;
// 计算已完成宽度
progress_width = (weights * w) / total;

// 1. 绘制已完成部分（前景色，从左到右）
for (i = 0; i < h; i++)
{
for (j = 0; j < progress_width; j++)
{
// 竖屏坐标转换（90度旋转，适配显存布局）
int draw_x = SCREEN_W - 1 - (y + i); // Y轴转X轴
int draw_y = x + (w - 1 - j);        // X轴转Y轴（反向，保证从左到右）
// 防越界
if (draw_x < 0 || draw_x >= SCREEN_W || draw_y < 0 || draw_y >= SCREEN_H)
continue;
// 计算显存地址（BGR格式）
src = (char *)fb + (draw_y * SCREEN_W + draw_x) * 3;
// 写入BGR颜色
src[0] = fcolor & 0xFF;        // 蓝
src[1] = (fcolor >> 8) & 0xFF; // 绿
src[2] = (fcolor >> 16) & 0xFF;// 红
}
}

// 2. 绘制未完成部分（背景色）
if (progress_width < w)
{
unsigned long bg_width = w - progress_width;
for (i = 0; i < h; i++)
{
for (j = 0; j < bg_width; j++)
{
int draw_x = SCREEN_W - 1 - (y + i);
int draw_y = x + j;
if (draw_x < 0 || draw_x >= SCREEN_W || draw_y < 0 || draw_y >= SCREEN_H)
continue;
src = (char *)fb + (draw_y * SCREEN_W + draw_x) * 3;
src[0] = bcolor & 0xFF;        // 蓝
src[1] = (bcolor >> 8) & 0xFF; // 绿
src[2] = (bcolor >> 16) & 0xFF;// 红
}
}
}

#endif

return 0;
}

/**
 * @brief 分区升级函数（进度条正常显示，升级完成后原地闪烁）
 * @param upgrade: 升级参数结构体
 * @return 0: 成功
 */
static int upgrade_partitions_update(const struct upgrade_partitions_param *upgrade)
{
    int i = 0;
    char cmd[256] = {0};
    void *fb_base = NULL;
    // 进度条固定参数（横竖屏通用坐标，按实际需求调整）
    #if (LCD_SCREEN_7IN_1024X600 == 1 && LCD_SCREEN_PORTRAIT == 0)
    const int BAR_X = 312;//312
    const int BAR_Y = 505;//505
    const int BAR_W = 200;
    const int BAR_H = 4;
    #elif (LCD_SCREEN_PORTRAIT == 1 && LCD_SCREEN_7IN_1024X600 == 0)
    const int BAR_X = 440;
    const int BAR_Y = 300;
    const int BAR_W = 400;
    const int BAR_H = 4;
    #endif
    // 累计进度（避免进度跳变，保证逐步加载）
    unsigned long current_progress = 0;

    // 1. 初始化显存+清空进度条（白色背景）
    fb_base = (void *)(unsigned long)getenv_ulong("lcdloadaddr", 16, LCD_FB_BASE);
    upgrade_progress_bar_draw(fb_base, BAR_X, BAR_Y, BAR_W, BAR_H,
                              0, upgrade->upgrade_total, 0xFFFFFF, 0xFFFFFF);
    run_command("sf probe", 0);

    // 2. 遍历分区升级（进度逐步累加）
    for (i = 0; i < UPGARDE_PARTITIONS_NUM_MAX; ++i)
    {
        printf("upgrade->partitions[%d].size = %lu\n", i, upgrade->partitions[i].size);
        printf("upgrade->mtdparts[%d].size = %lu\n", i, upgrade->mtdparts[i].size);
        printf("upgrade->mtdparts[%d].name = %s\n", i, upgrade->mtdparts[i].name);

        // 分区大小检查（修复格式符错误：%d→%lu）
        if (upgrade->partitions[i].size > upgrade->mtdparts[i].size)
        {
            printf("[%s:%d] %s: image size(%lu) > env partitions(%lu)\n", 
                   __func__, __LINE__, upgrade->mtdparts[i].name, 
                   upgrade->partitions[i].size, upgrade->mtdparts[i].size);
            continue;
        }

        if (upgrade->partitions[i].size != 0)
        {
            // 擦除分区
            printf("\nErase:%s addr=0x%lx, partition size=%lu, image size=%lu\n", 
                   upgrade->mtdparts[i].name, upgrade->mtdparts[i].offset, 
                   upgrade->mtdparts[i].size, upgrade->partitions[i].size);
            memset(cmd, 0, sizeof(cmd));
            sprintf(cmd, "sf erase 0x%lx 0x%lx", upgrade->mtdparts[i].offset, upgrade->mtdparts[i].size);
            run_command(cmd, 0);

            // 擦除后更新进度（累加50%）
            current_progress += upgrade->partitions[i].weights / 2;
            upgrade_progress_bar_draw(fb_base, BAR_X, BAR_Y, BAR_W, BAR_H,
                                      current_progress, upgrade->upgrade_total, 
                                      0xff9326, 0xFFFFFF); // 橙色前景

            // 写入分区
            sprintf(cmd, "sf write 0x%lx 0x%lx 0x%lx", 
                   (unsigned long)(upgrade->img_offset_base + upgrade->partitions[i].offset), 
                   upgrade->mtdparts[i].offset, upgrade->partitions[i].size);
            run_command(cmd, 0);

            // 写入后更新进度（累加剩余50%）
            current_progress += upgrade->partitions[i].weights / 2;
            if (current_progress > upgrade->upgrade_total)
                current_progress = upgrade->upgrade_total; // 防止进度溢出
            upgrade_progress_bar_draw(fb_base, BAR_X, BAR_Y, BAR_W, BAR_H,
                                      current_progress, upgrade->upgrade_total, 
                                      0xff9326, 0xFFFFFF); // 橙色前景
        }
    }

    // 3. 保存版本号（原有逻辑）
    if ((upgrade->partitions[1].size == 0) && (upgrade->partitions[2].size == 0) && (upgrade_type == 0))
    {
        setenv(ENV_UPGRADEIMAGE_VERSION, upgrade->version);
        saveenv();
    }
    printf("\npartition update finish\n");

    // 4. 升级完成：原地闪烁（满进度+固定坐标+交替颜色）
    int flash_count = 0;
    const int MAX_FLASH_COUNT = 10; // 闪烁10次后停止
    while (flash_count < MAX_FLASH_COUNT)
    {
        // 橙色满进度条（原地显示）
        upgrade_progress_bar_draw(fb_base, BAR_X, BAR_Y, BAR_W, BAR_H,
                                  upgrade->upgrade_total, upgrade->upgrade_total, 
                                  0xff9326, 0xFFFFFF);
        mdelay(500);

        // 黑色满进度条（原地闪烁）
        upgrade_progress_bar_draw(fb_base, BAR_X, BAR_Y, BAR_W, BAR_H,
                                  upgrade->upgrade_total, upgrade->upgrade_total, 
                                  0x000000, 0xFFFFFF);
        mdelay(500);

        flash_count++; // 计数递增，避免死循环
    }
    

    // run_command("reset", 0); // 屏蔽重启（原有逻辑）
    return 0;
}

int do_sd_upgrade(cmd_tbl_t *cmdtp, int flag, int argc, char *const argv[])
{
    int ret = 0;
    struct upgrade_partitions_param upgrade;
    char *upgrade_filename = getenv(ENV_SD_UPGRADEIMAGE);
    if (upgrade_filename == NULL)
    {
        upgrade_filename = "SAT_ANYKA.IMG";
        setenv(ENV_SD_UPGRADEIMAGE, upgrade_filename);
        saveenv();
    }
    upgrade_type = 0;
    memset(&upgrade, 0, sizeof(struct upgrade_partitions_param));
    if (sd_upgrade_file_parttions("mmc", "0", upgrade_filename, &upgrade) < 0)
    {
        upgrade_partitions_mtdparts("mmc", "0", upgrade_filename, &upgrade);
        upgrade_filename = "anyka_logo.rgb";
        if (sd_logo_upgrade_file_parttions("mmc", "0", upgrade_filename, 0, 5, &upgrade) >= 0)
        {
            upgrade_type |= 0x01;
        }
        else
        {
            printf("[%s:%d] sd_upgrade_file_parttions failed\n", __func__, __LINE__);
            ret = 0;
            goto finish;
        }
    }
    else
    {
        upgrade_partitions_mtdparts("mmc", "0", upgrade_filename, &upgrade);
    }

    upgrade_partitions_update(&upgrade);

finish:
    return ret;
}

U_BOOT_CMD(
    sd_upgrade, 7, 0, do_sd_upgrade,
    "upgrade file from a dos filesystem",
    "<interface> [<dev[:part]>]  <addr> <filename> [bytes [pos]]\n"
    "    - Load binary file 'filename' from 'dev' on 'interface'\n"
    "      to address 'addr' from dos filesystem.\n"
    "      'pos' gives the file position to start loading from.\n"
    "      If 'pos' is omitted, 0 is used. 'pos' requires 'bytes'.\n"
    "      'bytes' gives the size to load. If 'bytes' is 0 or omitted,\n"
    "      the load stops on end of file.\n"
    "      If either 'pos' or 'bytes' are not aligned to\n"
    "      ARCH_DMA_MINALIGN then a misaligned buffer warning will\n"
    "      be printed and performance will suffer for the load.");