echo off
echo 聚客通-酷派安装脚本

echo 安装微信6.6.5
adb -s %1 install -r C:/Users/lenovo/Desktop/JuKeTool/wechat6.6.5.apk

echo 安装xposed
adb -s %1 install C:/Users/lenovo/Desktop/JuKeTool/XposedInstaller.apk 
adb -s %1 shell mkdir -p /sdcard/Android/data/de.robv.android.xposed.installer/cache/downloads/framework
adb -s %1 push C:/Users/lenovo/Desktop/JuKeTool/xposed-v89-sdk22-arm64.zip /sdcard/Android/data/de.robv.android.xposed.installer/cache/downloads/framework/

@echo "安装Weike"
adb -s %1 install -r C:/Users/lenovo/Desktop/JuKeTool/Weike_V2.1.10-release.apk

echo "安装Weike test"
adb -s %1 install -r C:/Users/lenovo/Desktop/JuKeTool/Weike_V2.1.2-debug-androidTest.apk

echo "adb -s %1 root"
adb -s %1 root

echo "remount"
adb -s %1 remount

echo "push apk"
adb -s %1 push C:/Users/lenovo/Desktop/JuKeTool/JKT_V1.1.16-release.apk /system/app/JuKeTool.apk
REM adb -s %1 install C:/Users/lenovo/Desktop/JuKeTool/JKT_V1.1.12-release.apk

REM adb -s %1 shell rm -r /data/data/com.jubo.customsystem/shared_prefs

echo "push lib"
adb -s %1 push C:/Users/lenovo/Desktop/JuKeTool/lib/libBugly.so /vendor/lib/
adb -s %1 push C:/Users/lenovo/Desktop/JuKeTool/lib/libNameProvider.so /vendor/lib/
adb -s %1 push C:/Users/lenovo/Desktop/JuKeTool/lib64/libBugly.so /vendor/lib64/
adb -s %1 push C:/Users/lenovo/Desktop/JuKeTool/lib64/libNameProvider.so /vendor/lib64/

REM pause
echo "重启"
adb -s %1 reboot