rm -rf .repo/local_manifests/  && 
repo init -u https://github.com/LineageOS-Revived/android.git -b lineage-18.1 --git-lfs --depth=1 
git clone https://github.com/PurpleVoyager401/local_manifests_lux --depth 1 -b lineage-18.1-msm8916 .repo/local_manifests && 
/opt/crave/resync.sh  && 
export BUILD_USERNAME=PurpleVoyager401 
export BUILD_HOSTNAME=android-build 
source build/envsetup.sh && 
lunch lineage_osprey-userdebug && make installclean && mka bacon
