deviceDir=$(gettop)/device/xiaomi/blossom/

# apply patches
${deviceDir}/applyPatches.sh ${deviceDir}/patches
${deviceDir}/patch_camera.sh
# For now, just skip the ABI checks to fix build errors.
export SKIP_ABI_CHECKS=true

export TARGET_BOARD_PLATFORM=mt6765

add_lunch_combo custom_blossom-user
add_lunch_combo custom_blossom-userdebug
add_lunch_combo custom_blossom-eng
