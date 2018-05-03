echo off
REM echo 删除粉宝apk
REM adb uninstall com.njmomlnnmcmlml.beishanadsa
REM echo 删除粉宝
REM adb uninstall com.b3ad.marketing
REM echo 删除人脉通
REM adb uninstall com.bizsocialnet
REM echo 删除Y3云监控
REM adb uninstall com.agsoft.wechatx
REM echo 删除探探
REM adb uninstall com.p1.mobile.putong
REM echo 删除leb
REM adb uninstall com.lbe.security
REM echo 删除QQ
REM adb uninstall com.tencent.mobileqq

@rem adb shell pm list packages -s
@rem adb shell pm path com.xx.xx
@rem adb shell rm path com.agsoft.share
REM ::挂在读写权限
REM adb remount
REM ::s删除系统包
REM adb shell rm /system/app/OldDriver/OldDriver.apk

REM adb shell rm /sdcard/weike/mmMsg.db
REM adb shell rm /sdcard/weike/mmMsg.db-journal
REM adb shell ls /sdcard/weike

echo 安装phonehook
adb install -r -d D:\marketPhone\PhoneHook_V1.1.2-release.apk
echo 安装weiketest
adb install -r -d D:\marketPhone\Weike_V2.0.14-debug-androidTest.apk
echo 安装weike
adb install -r -d D:\marketPhone\Weike_V2.1.9-release.apk
echo 安装weixinhelper
adb install -r  D:\marketPhone\WeiXinHelper_V2.1.5-release_215_jiagu_sign.apk
echo 安装wxhook
adb install -r D:\marketPhone\WxHook_V2.1.2-release.apk

echo 安装微信6.6.5
REM adb install -r D:\marketPhone\wechat6.6.5.apk

echo 安装xposed
adb install -r D:\marketPhone\XposedInstaller.apk

REM echo 安装SuperSU
REM adb install D:\marketPhone\supersu-2-79.apk

echo 安装kingroot
adb install D:\marketPhone\KingRoot.apk

echo 安装完成
adb shell pm list packages -3