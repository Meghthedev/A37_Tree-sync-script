#!/bin/bash
#script to sync repos for oppo A37
#run this in your rom root dir
cd device
mkdir oppo && cd oppo
git clone https://github.com/DeepakChaurasia30/rb_device_oppo_A37.git A37
cd ..
cd ..
cd vendor
mkdir oppo && cd oppo
git clone https://github.com/DeepakChaurasia30/rb-vendor_oppo.git
#make sure to edit this script and change your rom path
cd rb-vendor_oppo && mv A37 /mnt/500/android/carbon/vendor/oppo/ && mv .git/ /mnt/500/android/carbon/vendor/oppo/ && cd .. && rm -rf rb-vendor_oppo 
cd ..
cd ..
cd kernel
mkdir oppo && cd oppo
git clone https://github.com/rakeshbhagat5615/kernel_oppo_msm8939.git msm8939 
cd ..
