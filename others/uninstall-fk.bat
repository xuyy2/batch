@Echo off
echo delete devicehooker
adb uninstall com.weike.devicehooker
echo delete tantan
adb uninstall com.p1.mobile.putong
echo 删除wxhook
adb uninstall com.weike.wxhook
echo delete phonehook
adb uninstall com.weike.phonehook
REM echo delete UCMobile
REM adb uninstall com.UCMobile
echo delete QQ
adb uninstall com.tencent.mobileqq
echo delete weixinhelprer
adb uninstall com.weike.helper
echo delete test
adb uninstall com.jubo.kyd.test
echo delete weike
adb uninstall com.jubo.kyd
echo uninstall UCMobile
adb uninstall com.UCMobile
echo remount
adb remount
echo rm JuKeTool
adb shell rm /system/app/JuKeTool.apk
adb shell rm /vendor/lib/libBugly.so 
adb shell rm /vendor/lib/libNameProvider.so/
adb shell rm /vendor/lib64/libBugly.so 
adb shell rm /vendor/lib64/libNameProvider.so 

echo rm launcher3
adb shell rm -r /data/data/com.android.launcher3
adb shell pm list packages -3
echo reboot
adb reboot