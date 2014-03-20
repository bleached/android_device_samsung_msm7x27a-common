echo "Obtaining build directory..."
rootdirectory="$PWD"
cd $rootdirectory
cd frameworks/base
echo "Applying frameworks/base patches..."
git am $rootdirectory/device/samsung/msm7x27a-common/patches/frameworks_base/*.patch
cd $rootdirectory
cd frameworks/native
echo "Applying frameworks/native patches..."
git am $rootdirectory/device/samsung/msm7x27a-common/patches/frameworks_native/*.patch
cd $rootdirectory
cd build
echo "Applying build patches..."
git am $rootdirectory/device/samsung/msm7x27a-common/patches/build/*.patch
cd $rootdirectory
cd packages/apps/Settings
echo "Applying packages/apps/Settings patches..."
git am $rootdirectory/device/samsung/msm7x27a-common/patches/packages_apps_settings/*.patch
cd $rootdirectory
cd system/core
echo "Applying system/core patches..."
git am $rootdirectory/device/samsung/msm7x27a-common/patches/system_core/*.patch
cd $rootdirectory
cd hardware/libhardware_legacy
echo "Applying hardware/libhardware_legacy patches..."
git am $rootdirectory/device/samsung/msm7x27a-common/patches/libhardware_legacy/*.patch
cd $rootdirectory
#cd vendor/tmobile/apps/ThemeChooser
#echo "Applying vendor/tmobile/apps/ThemeChooser patches..."
#git am $rootdirectory/device/samsung/msm7x27a-common/patches/vendor_tmobile_apps_ThemeChooser/*.patch
#cd $rootdirectory