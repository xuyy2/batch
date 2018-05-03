echo off
echo ***********安装群控**************************
REM echo 删除粉宝apk
REM adb -s %1 uninstall com.njmomlnnmcmlml.beishanadsa
REM echo 删除粉宝
REM adb -s %1 uninstall com.b3ad.marketing
REM echo 删除人脉通
REM adb -s %1 uninstall com.bizsocialnet
REM echo 删除Y3云监控
REM adb -s %1 uninstall com.agsoft.wechatx
REM echo 删除探探
REM adb -s %1 uninstall com.p1.mobile.putong
REM echo delete QQ
REM adb -s %1 uninstall com.tencent.mobileqq
REM echo 删除leb
REM adb -s %1 uninstall com.lbe.security
@rem adb shell pm list packages -s
@rem adb shell pm path com.xx.xx
@rem adb shell rm path com.agsoft.share
::挂在读写权限
REM adb -s %1 remount
::s删除系统包
REM adb -s %1 shell rm /system/app/OldDriver/OldDriver.apk

REM adb -s %1 shell mkdir -p /sdcard/Android/data/de.robv.android.xposed.installer/cache/downloads/framework

REM adb -s %1 push E:/weike/apks/suits/xposed-v89-sdk22-arm64.zip /sdcard/Android/data/de.robv.android.xposed.installer/cache/downloads/framework/

echo rm JuKeTool
adb -s %1 root
adb -s %1 remount
adb -s %1 shell rm -r /system/app/JuKeTool.apk
adb -s %1 shell rm -r /vendor/lib/libBugly.so 
adb -s %1 shell rm -r /vendor/lib/libNameProvider.so/
adb -s %1 shell rm -r /vendor/lib64/libBugly.so 
adb -s %1 shell rm -r /vendor/lib64/libNameProvider.so 

echo 安装deviceshooker
adb -s %1 install -r -d E:\weike\apks\suits\DeviceHooker-1.6.7.apk

echo 安装test
adb -s %1 install -r -d E:\weike\apks\suits\weike_test_V1.6.1.apk

echo 安装聚播工具箱
adb -s %1 install -r -d E:\weike\apks\suits\weike_V1.6.1.apk

REM echo 安装spersu
REM adb -s %1 install -r -d E:\weike\apks\suits\supersu-2-79.apk

echo 安装xposed
adb -s %1 install -r E:\weike\apks\suits\XposedInstaller.apk

echo安装kingroot
adb -s %1 install E:\weike\apks\suits\KingRoot.apk


echo 安装UC
adb -s %1 install -r E:\weike\apks\app\UCBrowser.apk

echo 安装探探
adb -s %1 install -r E:\weike\apks\app\tantan.apk

echo 安装微信6.6.1
adb -s %1 install -r -d E:\weike\apks\app\wx6.6.1.apk

echo. 打开devicehook
REM adb -s %1 shell am start com.weike.devicehooker/com.weike.devicehooker.ui.MainActivit
adb -s %1 shell am start com.weike.devicehooker/com.weike.devicehooker.ui.MainActivity

REM pause
REM echo. 重启
REM adb -s %1 reboot
echo  ok
