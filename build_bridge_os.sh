#/bin/sh

if test ! -d "bridge" ;then
    echo " tar xzvf bridge.tar.gz ... "
    tar xzvf bridge.tar.gz
fi

if test ! -f "rootfs/utils/usr/sbin/main_backup.sh" ;then
        echo "  backup main.sh ... "
        cp -rf rootfs/utils/usr/sbin/main.sh rootfs/utils/usr/sbin/main_backup.sh
        cp -rf bridge/main_bridge.sh  rootfs/utils/usr/sbin/main.sh
    else
        cp -rf bridge/main_bridge.sh  rootfs/utils/usr/sbin/main.sh
fi

if test ! -f "os/kernel/arch/arm/configs/anycloud_ak37e_mini_defconfig_bridge" ;then
    echo "  copy anycloud_ak37e_mini_defconfig_bridge ... "
        cp -rf bridge/anycloud_ak37e_mini_defconfig_bridge os/kernel/arch/arm/configs/anycloud_ak37e_mini_defconfig_bridge
        cp -rf os/kernel/arch/arm/configs/anycloud_ak37e_mini_defconfig os/kernel/arch/arm/configs/anycloud_ak37e_mini_defconfig_backup
        cp -rf bridge/anycloud_ak37e_mini_defconfig_bridge os/kernel/arch/arm/configs/anycloud_ak37e_mini_defconfig
    else
        cp -rf bridge/anycloud_ak37e_mini_defconfig_bridge os/kernel/arch/arm/configs/anycloud_ak37e_mini_defconfig
fi

if test  -f "bridge/EVB_CBDM_AK3760E_V1.0.1.dts" ;then
    echo " ---------- copy dts---------- "
    cp -rf bridge/EVB_CBDM_AK3760E_V1.0.1.dts os/kernel/arch/arm/boot/dts/EVB_CBDM_AK3760E_V1.0.1.dts
fi

if test ! -f "os/kernel/drivers/input/touchscreen/goodix_backup.tar.gz" ;then
    tar -czvf os/kernel/drivers/input/touchscreen/goodix_backup.tar.gz os/kernel/drivers/input/touchscreen/goodix.c
        cp -rf bridge/goodix.c os/kernel/drivers/input/touchscreen/
    else
        cp -rf bridge/goodix.c os/kernel/drivers/input/touchscreen/
fi


echo " ---------- build kenel---------- "
cd os/kernel/
make  mrproper
#make O=../bd mrproper
make O=../bd anycloud_ak37e_mini_defconfig CROSS_COMPILE=arm-anykav500-linux-uclibcgnueabi-
make O=../bd menuconfig
make O=../bd -j16
make O=../bd dtbs modules uImage -j8 CROSS_COMPILE=arm-anykav500-linux-uclibcgnueabi-
cd ../../

echo " ---------- build KO---------- "
if test  -d "os/driver_src/gsl1680" ;then
    echo " make ts_gsl.ko ... "
    cd os/driver_src/gsl1680 
    make clean
    make
    cd -
    cp -rf os/driver_src/gsl1680/ts_gsl.ko os/driver/external/
fi

if test  -d "os/driver_src/ak_eth" ;then
    echo " make ak_eth.ko ... "
    cd os/driver_src/ak_eth 
    make clean
    make
    cd -
    cp -rf os/driver_src/ak_eth/ak_eth.ko os/driver/external/
fi

if test  -d "os/driver_src/Hi3881V100R001C00SPC021B006" ;then
    echo " make hi3881.ko ... "
    cd os/driver_src/Hi3881V100R001C00SPC021B006
    make clean
    make linux_driver
    cd -
    cp -rf os/driver_src/Hi3881V100R001C00SPC021B006/driver/hi3881.ko  os/driver/external/

fi

if test  -d "os/driver_src/ak_mmc_hi3881/ak_mmc" ;then
    echo " make ak_mci.ko ... "
    cd os/driver_src/ak_mmc_hi3881/ak_mmc
    make clean
    make 
    cd -
    cp -rf os/driver_src/ak_mmc_hi3881/ak_mmc/ak_mci.ko  os/driver/external/ak_mci.ko
fi

if test ! -d "rootfs/resource/usr/share/firmware" ;then
    echo " copy Hi3881 firmware ... "
    cp -rf bridge/firmware rootfs/resource/usr/share/firmware
fi

if test ! -f "rootfs/scripts/wifi/hi3881.sh" ;then
    echo " copy hi3881.sh ... "
    cp -rf bridge/hi3881.sh rootfs/scripts/wifi/hi3881.sh
fi


if test ! -d "rootfs/resource/usr/lib/ts" ;then
    echo " copy usr/lib ... "
    cp -rf bridge/resource rootfs/resource
fi


echo " ---------- copy new bulid .ko ---------- "
cp -rf  os/bd/crypto/af_alg.ko          rootfs/ko/internal/lib/modules/4.4.192V2.4/kernel/crypto/ 
cp -rf  os/bd/crypto/algif_aead.ko          rootfs/ko/internal/lib/modules/4.4.192V2.4/kernel/crypto/ 
cp -rf  os/bd/crypto/algif_hash.ko          rootfs/ko/internal/lib/modules/4.4.192V2.4/kernel/crypto/
cp -rf  os/bd/crypto/algif_rng.ko          rootfs/ko/internal/lib/modules/4.4.192V2.4/kernel/crypto/
cp -rf  os/bd/crypto/algif_skcipher.ko          rootfs/ko/internal/lib/modules/4.4.192V2.4/kernel/crypto/
cp -rf  os/bd/crypto/cbc.ko          rootfs/ko/internal/lib/modules/4.4.192V2.4/kernel/crypto/
cp -rf  os/bd/crypto/crypto_user.ko          rootfs/ko/internal/lib/modules/4.4.192V2.4/kernel/crypto/
cp -rf  os/bd/crypto/cts.ko          rootfs/ko/internal/lib/modules/4.4.192V2.4/kernel/crypto/
cp -rf  os/bd/crypto/ecb.ko          rootfs/ko/internal/lib/modules/4.4.192V2.4/kernel/crypto/
cp -rf  os/bd/crypto/lrw.ko          rootfs/ko/internal/lib/modules/4.4.192V2.4/kernel/crypto/
cp -rf  os/bd/crypto/pcbc.ko          rootfs/ko/internal/lib/modules/4.4.192V2.4/kernel/crypto/
cp -rf  os/bd/crypto/xts.ko          rootfs/ko/internal/lib/modules/4.4.192V2.4/kernel/crypto/
cp -rf  os/bd/drivers/mmc/card/mmc_block.ko          rootfs/ko/internal/lib/modules/4.4.192V2.4/kernel/drivers/mmc/card/
cp -rf  os/bd/drivers/mmc/core/mmc_core.ko          rootfs/ko/internal/lib/modules/4.4.192V2.4/kernel/drivers/mmc/core/
cp -rf  os/bd/drivers/net/ppp/bsd_comp.ko          rootfs/ko/internal/lib/modules/4.4.192V2.4/kernel/drivers/net/ppp/
cp -rf  os/bd/drivers/net/ppp/ppp_async.ko          rootfs/ko/internal/lib/modules/4.4.192V2.4/kernel/drivers/net/ppp/
cp -rf  os/bd/drivers/net/ppp/ppp_deflate.ko          rootfs/ko/internal/lib/modules/4.4.192V2.4/kernel/drivers/net/ppp/
cp -rf  os/bd/drivers/net/ppp/ppp_generic.ko          rootfs/ko/internal/lib/modules/4.4.192V2.4/kernel/drivers/net/ppp/
cp -rf  os/bd/drivers/net/ppp/ppp_mppe.ko          rootfs/ko/internal/lib/modules/4.4.192V2.4/kernel/drivers/net/ppp/
cp -rf  os/bd/drivers/net/ppp/ppp_synctty.ko          rootfs/ko/internal/lib/modules/4.4.192V2.4/kernel/drivers/net/ppp/
cp -rf  os/bd/drivers/net/ppp/pppoe.ko          rootfs/ko/internal/lib/modules/4.4.192V2.4/kernel/drivers/net/ppp/
cp -rf  os/bd/drivers/net/ppp/pppox.ko          rootfs/ko/internal/lib/modules/4.4.192V2.4/kernel/drivers/net/ppp/
cp -rf  os/bd/drivers/net/slip/slhc.ko          rootfs/ko/internal/lib/modules/4.4.192V2.4/kernel/drivers/net/ppp/
cp -rf  os/bd/drivers/scsi/scsi_mod.ko          rootfs/ko/internal/lib/modules/4.4.192V2.4/kernel/drivers/scsi/
cp -rf  os/bd/drivers/scsi/sd_mod.ko          rootfs/ko/internal/lib/modules/4.4.192V2.4/kernel/drivers/scsi/
cp -rf  os/bd/drivers/scsi/sg.ko          rootfs/ko/internal/lib/modules/4.4.192V2.4/kernel/drivers/scsi/
cp -rf  os/bd/drivers/staging/rtl8188eu/r8188eu.ko          rootfs/ko/internal/lib/modules/4.4.192V2.4/kernel/drivers/staging/rtl8188eu/
cp -rf  os/bd/drivers/usb/class/cdc-acm.ko          rootfs/ko/internal/lib/modules/4.4.192V2.4/kernel/drivers/usb/class/
cp -rf  os/bd/drivers/usb/class/cdc-wdm.ko          rootfs/ko/internal/lib/modules/4.4.192V2.4/kernel/drivers/usb/class/
cp -rf  os/bd/drivers/usb/common/usb-common.ko          rootfs/ko/internal/lib/modules/4.4.192V2.4/kernel/drivers/usb/common/
cp -rf  os/bd/drivers/usb/core/usbcore.ko          rootfs/ko/internal/lib/modules/4.4.192V2.4/kernel/drivers/usb/core/
cp -rf  os/bd/drivers/usb/gadget/function/usb_f_mass_storage.ko          rootfs/ko/internal/lib/modules/4.4.192V2.4/kernel/drivers/usb/gadget/function/
cp -rf  os/bd/drivers/usb/gadget/legacy/g_mass_storage.ko          rootfs/ko/internal/lib/modules/4.4.192V2.4/kernel/drivers/usb/gadget/legacy/
cp -rf  os/bd/drivers/usb/gadget/libcomposite.ko          rootfs/ko/internal/lib/modules/4.4.192V2.4/kernel/drivers/usb/gadget/legacy/
cp -rf  os/bd/drivers/usb/gadget/udc/udc-core.ko          rootfs/ko/internal/lib/modules/4.4.192V2.4/kernel/drivers/usb/gadget/udc/
cp -rf  os/bd/drivers/usb/serial/option.ko          rootfs/ko/internal/lib/modules/4.4.192V2.4/kernel/drivers/usb/serial/
cp -rf  os/bd/drivers/usb/serial/usb_wwan.ko          rootfs/ko/internal/lib/modules/4.4.192V2.4/kernel/drivers/usb/serial/
cp -rf  os/bd/drivers/usb/serial/usbserial.ko          rootfs/ko/internal/lib/modules/4.4.192V2.4/kernel/drivers/usb/serial/
cp -rf  os/bd/drivers/usb/storage/usb-storage.ko          rootfs/ko/internal/lib/modules/4.4.192V2.4/kernel/drivers/usb/storage
cp -rf  os/bd/fs/configfs/configfs.ko          rootfs/ko/internal/lib/modules/4.4.192V2.4/kernel/fs/configfs/
cp -rf  os/bd/fs/lockd/lockd.ko          rootfs/ko/internal/lib/modules/4.4.192V2.4/kernel/fs/lockd/
cp -rf  os/bd/fs/nfs/nfs.ko          rootfs/ko/internal/lib/modules/4.4.192V2.4/kernel/fs/nfs/
cp -rf  os/bd/fs/nfs/nfsv2.ko          rootfs/ko/internal/lib/modules/4.4.192V2.4/kernel/fs/nfs/
cp -rf  os/bd/fs/nfs/nfsv3.ko          rootfs/ko/internal/lib/modules/4.4.192V2.4/kernel/fs/nfs/
cp -rf  os/bd/fs/nfs_common/grace.ko          rootfs/ko/internal/lib/modules/4.4.192V2.4/kernel/fs/nfs_common/
cp -rf  os/bd/lib/crc-ccitt.ko          rootfs/ko/internal/lib/modules/4.4.192V2.4/kernel/lib/
cp -rf  os/bd/net/bridge/br_netfilter.ko           rootfs/ko/internal/lib/modules/4.4.192V2.4/kernel/net/bridge/
cp -rf  os/bd/net/mac80211/mac80211.ko          rootfs/ko/internal/lib/modules/4.4.192V2.4/kernel/net/mac80211/
cp -rf  os/bd/net/sunrpc/sunrpc.ko          rootfs/ko/internal/lib/modules/4.4.192V2.4/kernel/net/sunrpc/
cp -rf  os/bd/net/wireless/cfg80211.ko          rootfs/ko/internal/lib/modules/4.4.192V2.4/kernel/net/wireless/

echo " ---------- copy external .ko ---------- "

cp -rf  os/driver/external/*.ko  rootfs/ko/external/

echo " ---------- build image ---------- "

if test  -f "bridge/make_image.sh" ;then
    echo " copy make_image.sh ... "
    cp -rf bridge/make_image.sh ./make_image.sh
fi
./make_image.sh


echo " ---------- copy image ---------- "
cp -rf os/bd/arch/arm/boot/dts/EVB_CBDM_AK3760E_V1.0.1.dtb ./image
cp -rf os/bd/arch/arm/boot/uImage ./image
cp -rf os/uboot/u-boot.bin ./image

cp -rf image/* tools/burntool