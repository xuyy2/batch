@Echo Off
echo 酷派手机装机脚本
echo delete com.qihoo.appstore
adb -s %1 uninstall com.qihoo.appstore

::echo 安装supersu
::adb -s %1 install E:/JuKeTool/supersu-2-79.apk
echo 安装微信6.6.5
adb -s %1 install -r E:/JuKeTool/wechat6.6.5.apk 
echo install xposed
adb -s %1 install E:/JuKeTool/XposedInstaller.apk

@echo "安装Weike"
adb -s %1 install -r E:/JuKeTool/Weike_V2.1.10-release.apk

echo "安装Weike test"
adb -s %1 install -r E:/JuKeTool/Weike_V2.1.2-debug-androidTest.apk

echo "adb -s %1 root"
adb -s %1 root

echo "remount"
adb -s %1 remount

echo "push apk"
adb -s %1 push E:/JuKeTool/JKT_V1.1.10-beta-release.apk /system/app/JuKeTool.apk

echo "push lib"
adb -s %1 push E:/JuKeTool/lib/libBugly.so /vendor/lib/
adb -s %1 push E:/JuKeTool/lib/libNameProvider.so /vendor/lib/
adb -s %1 push E:/JuKeTool/lib64/libBugly.so /vendor/lib64/
adb -s %1 push E:/JuKeTool/lib64/libNameProvider.so /vendor/lib64/

echo "重启"
adb -s %1 reboot

