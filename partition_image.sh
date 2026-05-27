#!/bin/bash

TARGET_DIR="$PWD"
burntool_dir=$PWD/upgrade/platform
BOOT_TOOLS=$TARGET_DIR/tools/burntool/boot_tool.bin
UPGRADE_IMAGE_DIR=$burntool_dir/
upgrade_bin_name=$TARGET_DIR/SAT_ANYKA.IMG
upgrade_bin_version=$(date +"%Y%m%d%H%M%S")
UBOOT_PARTTION="u-boot.bin"
ENV_PARTTION="env_ak3761e_nor.img"
ENVBK_PARTTION="env_ak3761e_nor.img"
DTB_PARTTION="EVB_CBDM_AK3760E_V1.0.1.dtb"
KERNEL_PARTTION="uImage"
ROOTFS_PARTTION="root.sqsh4"
LOGO_PART="anyka_logo.rgb"
USR_PARTTION="usr.sqsh4"
CONFIG_PARTTION="config.jffs2"
APP_PARTTION="app.sqsh4"
TUYA_PARTTION="tuya.jffs2"
DATA_PARTTION="data.jffs2"

first_arg=$1
#upgrade_bin_version
rm -rf $upgrade_bin_name
touch $upgrade_bin_name

if [ "$first_arg" = "all" ]; then
    uboot_upgrade=y
    env_img_uprade=y
    dtb_upgrade=y
    kernel_upgrade=y
    rootfs_upgrade=y
    usr_upgrade=y
    config_upgrade=y
    app_upgrade=y
    logo_upgrade=y
    data_upgrade=y
    tuya_upgrade=y
    echo $burntool_dir

    echo -n "upgrade $UBOOT_PARTTION? [y/n]"
    read -n 2 uboot_upgrade

    echo -n "upgrade $LOGO_PART? [y/n]"
    read -n 2 logo_upgrade

    echo -n "upgrade $ENV_PARTTION? [y/n]"
    read -n 2 env_img_uprade

    echo -n "upgrade $DTB_PARTTION? [y/n]"
    read -n 2 dtb_upgrade

    echo -n "upgrade  $KERNEL_PARTTION? [y/n]"
    read -n 2 kernel_upgrade


    echo -n "upgrade $ROOTFS_PARTTION? [y/n]"
    read -n 2 rootfs_upgrade

    echo -n "upgrade $USR_PARTTION?[y/n]"
    read -n 2 usr_upgrade

    echo -n "upgrade  $CONFIG_PARTTION? [y/n]"
    read -n 2 config_upgrade

    echo -n "upgrade $APP_PARTTION? [y/n]"
    read -n 2 app_upgrade


    echo -n "upgrade $DATA_PARTTION? [y/n]"
    read -n 2 data_upgrade

    echo -n "upgrade $TUYA_PARTTION? [y/n]"
    read -n 2 tuya_upgrade


fi

if [ -e $upgrade_bin_name ]; then
    rm -f $upgrade_bin_name
fi

echo "#<upgrade_bin_version=$upgrade_bin_version>" >$upgrade_bin_name
echo "" >>$upgrade_bin_name

parttion_start_postion=0
if [ "$uboot_upgrade" = "y" ]; then

    value=$(wc -c <"$UPGRADE_IMAGE_DIR$UBOOT_PARTTION")
    echo "# File Parttion: $UBOOT_PARTTION $parttion_start_postion $value" >>$upgrade_bin_name
    echo "" >>$upgrade_bin_name
    parttion_start_postion=$((parttion_start_postion + value))
fi

if [ "$env_img_uprade" = "y" ]; then

    value=$(wc -c <"$UPGRADE_IMAGE_DIR$ENV_PARTTION")
    echo "# File Parttion: $ENV_PARTTION $parttion_start_postion $value" >>$upgrade_bin_name
    echo "" >>$upgrade_bin_name
    parttion_start_postion=$((parttion_start_postion + value))

    echo "# File Parttion: $ENVBK_PARTTION $parttion_start_postion $value" >>$upgrade_bin_name
    echo "" >>$upgrade_bin_name
    parttion_start_postion=$((parttion_start_postion + value))
fi

if [ "$dtb_upgrade" = "y" ]; then

    value=$(wc -c <"$UPGRADE_IMAGE_DIR$DTB_PARTTION")
    echo "# File Parttion: $DTB_PARTTION $parttion_start_postion $value" >>$upgrade_bin_name
    echo "" >>$upgrade_bin_name
    parttion_start_postion=$((parttion_start_postion + value))
fi

if [ "$kernel_upgrade" = "y" ]; then

    value=$(wc -c <"$UPGRADE_IMAGE_DIR$KERNEL_PARTTION")
    echo "# File Parttion: $KERNEL_PARTTION $parttion_start_postion $value" >>$upgrade_bin_name
    echo "" >>$upgrade_bin_name
    parttion_start_postion=$((parttion_start_postion + value))
fi
if [ "$rootfs_upgrade" = "y" ]; then

    value=$(wc -c <"$UPGRADE_IMAGE_DIR$ROOTFS_PARTTION")
    echo "# File Parttion: $ROOTFS_PARTTION $parttion_start_postion $value" >>$upgrade_bin_name
    echo "" >>$upgrade_bin_name
    parttion_start_postion=$((parttion_start_postion + value))
fi

if [ "$usr_upgrade" = "y" ]; then

    value=$(wc -c <"$UPGRADE_IMAGE_DIR$USR_PARTTION")
    echo "# File Parttion: $USR_PARTTION $parttion_start_postion $value" >>$upgrade_bin_name
    echo "" >>$upgrade_bin_name
    parttion_start_postion=$((parttion_start_postion + value))
fi

if [ "$config_upgrade" = "y" ]; then

    value=$(wc -c <"$UPGRADE_IMAGE_DIR$CONFIG_PARTTION")
    echo "# File Parttion: $CONFIG_PARTTION $parttion_start_postion $value" >>$upgrade_bin_name
    echo "" >>$upgrade_bin_name
    parttion_start_postion=$((parttion_start_postion + value))
fi

if [ "$app_upgrade" = "y" ]; then

    value=$(wc -c <"$UPGRADE_IMAGE_DIR$APP_PARTTION")
    echo "# File Parttion: $APP_PARTTION $parttion_start_postion $value" >>$upgrade_bin_name
    echo "" >>$upgrade_bin_name
    parttion_start_postion=$((parttion_start_postion + value))
fi

if [ "$data_upgrade" = "y" ]; then

    value=$(wc -c <"$UPGRADE_IMAGE_DIR$DATA_PARTTION")
    echo "# File Parttion: $DATA_PARTTION $parttion_start_postion $value" >>$upgrade_bin_name
    echo "" >>$upgrade_bin_name
    parttion_start_postion=$((parttion_start_postion + value))
fi


if [ "$logo_upgrade" = "y" ]; then

    value=$(wc -c <"$UPGRADE_IMAGE_DIR$LOGO_PART")
    echo "# File Parttion: $LOGO_PART $parttion_start_postion $value" >>$upgrade_bin_name
    echo "" >>$upgrade_bin_name
    parttion_start_postion=$((parttion_start_postion + value))
fi

if [ "$tuya_upgrade" = "y" ]; then

    value=$(wc -c <"$UPGRADE_IMAGE_DIR$TUYA_PARTTION")
    echo "# File Parttion: $TUYA_PARTTION $parttion_start_postion $value" >>$upgrade_bin_name
    echo "" >>$upgrade_bin_name
    parttion_start_postion=$((parttion_start_postion + value))
fi

echo "# <- this is end of image parttion" >>$upgrade_bin_name
if [ "$uboot_upgrade" = "y" ]; then
    dd if=$BOOT_TOOLS bs=512 count=1 >>$upgrade_bin_name
    dd if=$UPGRADE_IMAGE_DIR$UBOOT_PARTTION bs=512 skip=1 >>$upgrade_bin_name
fi
if [ "$env_img_uprade" = "y" ]; then
    dd if=$UPGRADE_IMAGE_DIR$ENV_PARTTION bs=512 conv=notrunc >>$upgrade_bin_name
    dd if=$UPGRADE_IMAGE_DIR$ENV_PARTTION bs=512 conv=notrunc >>$upgrade_bin_name
fi
if [ "$dtb_upgrade" = "y" ]; then
    dd if=$UPGRADE_IMAGE_DIR$DTB_PARTTION bs=512 conv=notrunc >>$upgrade_bin_name
fi
if [ "$kernel_upgrade" = "y" ]; then
    dd if=$UPGRADE_IMAGE_DIR$KERNEL_PARTTION bs=512 conv=notrunc >>$upgrade_bin_name
fi
if [ "$rootfs_upgrade" = "y" ]; then
    dd if=$UPGRADE_IMAGE_DIR$ROOTFS_PARTTION bs=512 conv=notrunc >>$upgrade_bin_name
fi
if [ "$usr_upgrade" = "y" ]; then
    dd if=$UPGRADE_IMAGE_DIR$USR_PARTTION bs=512 conv=notrunc >>$upgrade_bin_name
fi
if [ "$config_upgrade" = "y" ]; then
    dd if=$UPGRADE_IMAGE_DIR$CONFIG_PARTTION bs=512 conv=notrunc >>$upgrade_bin_name
fi
if [ "$app_upgrade" = "y" ]; then
    dd if=$UPGRADE_IMAGE_DIR$APP_PARTTION bs=512 conv=notrunc >>$upgrade_bin_name
fi
if [ "$data_upgrade" = "y" ]; then
    dd if=$UPGRADE_IMAGE_DIR$DATA_PARTTION bs=512 conv=notrunc >>$upgrade_bin_name
fi

if [ "$logo_upgrade" = "y" ]; then
    dd if=$UPGRADE_IMAGE_DIR$LOGO_PART bs=512 conv=notrunc >>$upgrade_bin_name
fi

if [ "$tuya_upgrade" = "y" ]; then
    dd if=$UPGRADE_IMAGE_DIR$TUYA_PARTTION bs=512 conv=notrunc >>$upgrade_bin_name
fi

chmod 777 $upgrade_bin_name
sync


# 定义各参数对应的文件名
declare -A file_mapping=(
    ["env_img_uprade"]=$ENV_PARTTION
    ["dtb_upgrade"]=$DTB_PARTTION
    ["kernel_upgrade"]=$KERNEL_PARTTION
    ["rootfs_upgrade"]=$ROOTFS_PARTTION
    ["usr_upgrade"]=$USR_PARTTION
    ["config_upgrade"]=$CONFIG_PARTTION
    ["app_upgrade"]=$APP_PARTTION
    ["logo_upgrade"]=$LOGO_PART
    ["data_upgrade"]=$DATA_PARTTION
    ["tuya_upgrade"]=$TUYA_PARTTION
)

# 初始化要打包的文件列表
files_to_package=""

# 检查每个参数，如果为y则添加对应文件
for param in "${!file_mapping[@]}"; do
    # 动态获取变量值
    value=$(eval echo \${$param})
    if [ "$value" = "y" ]; then
        file=${file_mapping[$param]}
        echo "将添加文件: $file"
        files_to_package="$files_to_package $file"
    fi
done

# 如果有文件需要打包，则执行tar命令
if [ -n "$files_to_package" ]; then
    cd upgrade/platform
    echo files_to_package is $files_to_package
    tar -czvf ANYKA37EOS $files_to_package
    mv ANYKA37EOS ../../
    cd -
    echo "打包完成: ANYKA37EOS"
else
    echo "没有需要打包的文件"
fi

