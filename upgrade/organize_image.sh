#!/bin/sh
# 制作根文件系统及各种只读，可读写文件系统，拷贝库、脚本、驱动等文件到相对应的文件系统下
make_rootfs()
{
        cd ..
        ./make_image.sh
        cd -
}

# #创建一个用于保存升级文件的目录
create_platform()
{
	if [ -d "platform" ]; then
                echo "remove platform dir"
                rm -rf "platform"
                mkdir "platform"
        else
                echo "mkdir "platform""
                mkdir "platform"
        fi
}
# 拷贝 root.sqsh4 tuya.jffs2 data/jffs2 app.sqsh4  到升级目录 platform/ 下
copy_rootfs_kernel_images()
{

        cp  ../rootfs/root.sqsh4  platform/ 
        cp  ../rootfs/app.sqsh4  platform/ 
        cp  ../rootfs/usr.sqsh4  platform/ 
        cp  ../rootfs/tuya.jffs2  platform/ 
        cp  ../rootfs/data.jffs2  platform/
        cp  ../rootfs/config.jffs2  platform/

}

# 拷贝 uboot、设备树、uImage 到升级目录 platform/ 下
copy_uboot_kernel_images()
{
        cp  ../os/uboot/u-boot.bin                                                platform/
        cp  ../os/bd/arch/arm/boot/dts/EVB_CBDM_AK3760E_V1.0.1.dtb            platform/
        cp  ../os/bd/arch/arm/boot/uImage                                      platform/
}

# 拷贝 分区表、logo文件 到升级目录 platform/ 下
copy_env_logo_images()
{
        cp ../tools/envtool/env.img     platform/env_ak3761e_nor.img
        cp logo/anyka_logo.rgb           platform/
}

# 把 升级脚本 和 进度条显示程序 也放进去打包压缩
images_compress()
{
        # cp ../rootfs/scripts/flash/update.nor.sh        platform/update.sh
        cp upgrade_progress/upgrade_progress            platform/
        rm -rf ANYKA37EOS
        rm -rf ../tools/burntool/platform
        cp -r platform/ ../tools/burntool/
        cd platform/
        tar -zcvf ANYKA37EOS *
        mv ANYKA37EOS ../
        cd ../
}

make_rootfs

create_platform

copy_uboot_kernel_images

copy_env_logo_images

copy_rootfs_kernel_images
# echo    "-a) cp  ../rootfs/app.sqsh4  platform/;;
#         -b) cp  ../os/uboot/u-boot.bin platform/;;
#         -c) cp  ../rootfs/config.jffs2  platform/;;
#         -d) cp  ../rootfs/data.jffs2  platform/;;
#         -e) cp  ../os/bd/arch/arm/boot/dts/EVB_CBDM_AK3760E_V1.0.1.dtb  platform/;;
#         -l) cp  logo/anyka_logo.rgb     platform/;;
#         -r) cp  ../rootfs/root.sqsh4  platform/;;
#         -t) cp  ../rootfs/tuya.jffs2  platform/;;
#         -u) cp  ../rootfs/usr.sqsh4  platform/;;
#         -v) cp  ../tools/envtool/env.img     platform/env_ak3761e_nor.img;;
#         -all)"
        
#         while [ -n "$1" ];
#         do
#                 case "$1" in
#                         -a) cp  ../rootfs/app.sqsh4  platform/;;
#                         -b) cp  ../os/uboot/u-boot.bin platform/;;
#                         -c) cp  ../rootfs/config.jffs2  platform/;;
#                         -d) cp  ../rootfs/data.jffs2  platform/;;
#                         -e) cp  ../os/bd/arch/arm/boot/dts/EVB_CBDM_AK3760E_V1.0.1.dtb  platform/;;
#                         -l) cp  logo/anyka_logo.rgb     platform/;;
#                         -r) cp  ../rootfs/root.sqsh4  platform/;;
#                         -t) cp  ../rootfs/tuya.jffs2  platform/;;
#                         -u) cp  ../rootfs/usr.sqsh4  platform/;;
#                         -v) cp  ../tools/envtool/env.img     platform/env_ak3761e_nor.img;;
#                         -all)
#                                 cp  ../rootfs/root.sqsh4  platform/
#                                 cp  ../rootfs/app.sqsh4  platform/
#                                 cp  ../rootfs/usr.sqsh4  platform/
#                                 cp  ../rootfs/resource.sqsh4  platform/
#                                 cp  ../rootfs/data.jffs2  platform/
#                                 cp  ../rootfs/config.jffs2  platform/
#                                 cp ../tools/envtool/env.img     platform/env_ak3761e_nor.img
#                                 cp logo/anyka_logo.rgb     platform/
#                                 cp  ../os/uboot/u-boot.bin     platform/
#                                 cp  ../os/bd/arch/arm/boot/dts/EVB_CBDM_AK3760E_V1.0.1.dtb   platform/;;
#                         *)  echo "$1 is not an option";;
#                 esac
#                 shift
#         done

images_compress

