rm -rf .repo/local_manifests/  && 
repo init -u https://gitlab.e.foundation/e/os/android.git -b v3.3-t --git-lfs --depth=1 
git clone https://github.com/PurpleVoyager401/local_manifests_starq --depth 1 -b lineage-20-wip .repo/local_manifests && 
/opt/crave/resync.sh  && 
export BUILD_USERNAME=PurpleVoyager401 
export BUILD_HOSTNAME=android-build 
sudo ln -s /usr/lib/x86_64-linux-gnu/libncurses.so.6 /usr/lib/x86_64-linux-gnu/libncurses.so.5 && 
sudo ln -s /usr/lib/x86_64-linux-gnu/libtinfo.so.6 /usr/lib/x86_64-linux-gnu/libtinfo.so.5 && 
bash patches/apply.sh && 
source build/envsetup.sh && 
lunch lineage_starqltechn-userdebug && make installclean && mka bacon && lunch lineage_star2qltechn-userdebug && make installclean && mka bacon && lunch lineage_crownqltechn-userdebug && make installclean && mka bacon
