#!/bin/bash
#script to sync repos for oppo A37
#run this in your rom root dir
echo This is a script to sync trees for oppo A37 

Architecture=$1

echo Please give your selection Of Architecture as 32bit rakeshbhagat5615 or 64bit DeepakChaurasia30
read Architecture
echo Syncing Trees!

if [ $1=32 ]; then
    git clone https://github.com/DeepakChaurasia30/rb_device_oppo_A37.git device/oppo/A37
    cd vendor 
    git clone https://github.com/DeepakChaurasia30/rb-vendor_oppo.git oppo
    cd ../..
    git clone https://github.com/rakeshbhagat5615/kernel_oppo_msm8939.git kernel/oppo/msm8939 
fi 

elif [ $1=64 ] then 
    git clone https://github.com/DeepakChaurasia30/android-device_oppo_A37.git device/oppo/A37
    git clone https://github.com/DeepakChaurasia30/-android_device_cyanogen_msm8916-common.git device/cyanogen/msm8916
    git clone https://github.com/DeepakChaurasia30/kernel_oppo_msm8939.git kernel/oppo/msm8939
    cd vendor 
    git clone https://github.com/DeepakChaurasia30/rb-vendor_oppo.git oppo
    cd ../..
fi

