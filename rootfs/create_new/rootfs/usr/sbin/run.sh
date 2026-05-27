#!/bin/sh
# 运行flash里的app
run_flash_app()
{
    echo "run flash app"
    /app/app/ANYKA37E.BIN &
    /app/app/daemon_client &
    echo "finish"
    exit
}

# 挂载sd卡到/mnt/tf/目录下
mount_sd_card()
{
    if [ -e /dev/mmcblk0p1 ]; then
        echo "SD card inserted, starting to mount"
        mkdir /mnt/tf
        mount /dev/mmcblk0p1 /mnt/tf/
    elif [ -e /dev/mmcblk0 ]; then
        echo "SD card inserted, starting to mount"
        mkdir /mnt/tf
        mount /dev/mmcblk0 /mnt/tf/
    else    
        echo "SD card not inserted"
        run_flash_app
    fi
}

# 检测升级包是否存在，存在则启动升级脚本
upgrade()
{
    if [ -e /mnt/tf/ANYKA37EOS ]; then
        echo "Upgrade package exists, starting upgrade"
        cp -f /mnt/tf/ANYKA37EOS /tmp
        tar -zxvf /tmp/ANYKA37EOS -C /tmp
        cd /tmp
        /sbin/update.sh
    else
        echo "Upgrade package does not exist"
        run_flash_app
    fi
}


usleep 200000 #延时200ms等待sd卡设备节点产生
mount_sd_card
# /app/data/update_flag 文件是升级的标志，文件不存在 或 内容为1 表示已升级
if [ -e /app/data/update_flag ]; then

    echo "Upgraded"
    rm -rf /app/data/update_flag
    run_flash_app

elif [ -e /mnt/tf/ANYKA37EOS ]; then
        echo "Upgrading"
        upgrade
fi
    echo "not find uograde files"
    run_flash_app
fi


