echo off
echo ***********安装群控**************************
echo 删除粉宝apk
adb -s %1 uninstall com.njmomlnnmcmlml.beishanadsa
echo 删除粉宝
adb -s %1 uninstall com.b3ad.marketing
echo 删除人脉通
adb -s %1 uninstall com.bizsocialnet
echo 删除Y3云监控
adb -s %1 uninstall com.agsoft.wechatx
echo 删除探探
adb -s %1 uninstall com.p1.mobile.putong
echo 删除leb
adb -s %1 uninstall com.lbe.security
@rem adb shell pm list packages -s
@rem adb shell pm path com.xx.xx
@rem adb shell rm path com.agsoft.share
::挂在读写权限
adb -s %1 remount
::s删除系统包
adb -s %1 shell rm /system/app/OldDriver/OldDriver.apk

adb -s %1 shell mkdir -p /sdcard/Android/data/de.robv.android.xposed.installer/cache/downloads/framework

adb -s %1 push E:/weike/apks/suits/xposed-v89-sdk22-arm64.zip /sdcard/Android/data/de.robv.android.xposed.installer/cache/downloads/framework/



echo 安装deviceshooker
adb -s %1 install -r -d E:\weike\apks\suits\DeviceHooker-1.6.7.apk

echo 安装test
adb -s %1 install -r -d E:\weike\apks\suits\weike_test_V1.6.1.apk

echo 安装聚播工具箱
adb -s %1 install -r -d E:\weike\apks\suits\weike_V1.6.1.apk

echo 安装spersu
adb -s %1 install -r -d E:\weike\apks\suits\supersu-2-79.apk

echo 安装xposed
adb -s %1 install -r E:\weike\apks\suits\XposedInstaller.apk

REM echo安装kingroot
REM adb -s %1 install E:\weike\apks\suits\KingRoot.apk


echo 安装UC
adb -s %1 install -r E:\weike\apks\app\UCBrowser.apk

echo 安装探探
adb -s %1 install -r E:\weike\apks\app\tantan.apk

echo 安装微信6.6.1
adb -s %1 install -r E:\weike\apks\app\wx6.6.1.apk

adb -s %1 shell pm list packages -3
echo  ok
