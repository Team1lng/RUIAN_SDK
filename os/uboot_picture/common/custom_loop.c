/*
 * @Author: error: error: git config user.name & please set dead value or install git && error: git config user.email & please set dead value or install git & please set dead value or install git
 * @Date: 2024-09-20 17:10:12
 * @LastEditors: error: error: git config user.name & please set dead value or install git && error: git config user.email & please set dead value or install git & please set dead value or install git
 * @LastEditTime: 2024-10-07 18:32:43
 * @FilePath: /uboot/common/custom/custom_loop.c
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
#include <common.h>
#include <command.h>

extern int lcd_get_pixel_width(void);
extern int lcd_get_pixel_height(void);
extern int uboot_logo_sjpg_decode(unsigned char *src, int len, unsigned char *lcd_base);

static int jffs2_partition_detection_jpg(char *buf, char *index)
{
#define DEFAULT_JFFS2_PART_NAME "DATA"
#define DEFAULT_JPG_PART_PATH "/JPG-LOGO/"
    char cmd[64];
    memset(cmd, 0, sizeof(cmd));
    // sprintf(cmd, "fsload %s 0x%lx %s%d_%d_logo%d.jpg", DEFAULT_JFFS2_PART_NAME, (ulong)buf, DEFAULT_JPG_PART_PATH, lcd_get_pixel_width(), lcd_get_pixel_height(), index);
    sprintf(cmd, "fsload %s 0x%lx %s%dX%d%c.jpg", DEFAULT_JFFS2_PART_NAME, (ulong)buf, DEFAULT_JPG_PART_PATH, lcd_get_pixel_width(), lcd_get_pixel_height(), 'a' + index);
    // printf("====jffs2_partition_detection_jpg, cmd:%s\n", cmd);
    return !run_command(cmd, 0) ? 0 : -1;
}

static int jffs2_read_jpg_data(int index, void *fb_base, unsigned char *jpg_data, int jpg_size)
{

    memset(jpg_data, 0xff, jpg_size);

    if (jffs2_partition_detection_jpg(jpg_data, index) == -1)
    {
        printf("jffs2_partition_detection_jpg [Fail]!!!!!!\n");
        return -1;
    }

    if (uboot_logo_sjpg_decode(jpg_data, jpg_size, fb_base) == -1)
    {
        printf("uboot_logo_sjpg_decode [Fail]!!!!!!\n");
        return -1;
    }
    return 0;
}

int do_jpg_logo_display(cmd_tbl_t *cmdtp, int flag, int argc, char *const argv[])
{
    int index = 0;
    static int jpg_size = 500 * 1024;
    static unsigned char *jpg_data = NULL;
    static unsigned char *rgb_data = NULL;

    printf("Starting Display Jpg Logo...\n");

    void *fb_base = getenv_ulong("lcdloadaddr", 16, 0x83d02000);
    if (fb_base == 0)
    {
        printf("eror:lcd init fb_base == 0\n");
        return -1;
    }

    jpg_data = malloc(jpg_size);
    if (jpg_data == NULL)
    {
        printf("eror:jpg cache malloc fail....\n");
        return -1;
    }

    rgb_data = malloc(lcd_get_pixel_width() * lcd_get_pixel_height() * 3);
    if (rgb_data == NULL)
    {
        free(jpg_data);
        printf("eror:rgb cache malloc fail....\n");
        return -1;
    }

    while (1)
    {
        printf("logo index :%d fb_base:%p\n", index,fb_base);
        if (jffs2_read_jpg_data(index++, rgb_data, jpg_data, jpg_size) == 0)
        {
            memcpy(fb_base, rgb_data, lcd_get_pixel_width() * lcd_get_pixel_height() * 3);
            mdelay(1000 * 5); // 每次循环等待 10 秒
        }
        index %= 8;
    }

    free(jpg_data);
    free(rgb_data);

    printf("Jpg Display finished.\n");
    return 0;
}

// 命令注册
U_BOOT_CMD(
    jpg_logo_display, 1, 0, do_jpg_logo_display,
    "Loop to print environment variables",
    "Usage: loopprint\n");
