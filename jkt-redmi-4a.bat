echo off
echo. 卸载 直播
adb -s %1 uninstall com.mi.liveassistant

echo. 卸载 秒拍
adb -s %1 uninstall com.yixia.videoeditor

echo. 卸载 Excel
adb -s %1 uninstall com.microsoft.office.excel

echo. 卸载 小米支持
adb -s %1 uninstall com.mi.misupport

echo. 卸载 小米金融
adb -s %1 uninstall com.xiaomi.jr

echo. 卸载 talkback
adb -s %1 uninstall com.google.android.marvin.talkback

echo. 卸载 outlook
adb -s %1 uninstall com.microsoft.office.outlook

echo. 卸载 小米论坛
adb -s %1 uninstall com.miui.miuibbs

echo. 卸载 word
adb -s %1 uninstall com.microsoft.office.word

echo. 卸载 ppt
adb -s %1 uninstall com.microsoft.office.powerpoint

echo. 卸载 小米商店
adb -s %1 uninstall com.xiaomi.shop

echo. 卸载 小米020
adb -s %1 uninstall com.xiaomi.o2o

echo. 卸载 喜马拉雅
adb -s %1 uninstall com.ximalaya.ting.android

echo. 卸载 cortana
adb -s %1 uninstall com.microsoft.cortana

echo. 卸载 鲁大师
adb -s %1 uninstall com.ludashi.benchmark

echo. 卸载 米家
adb -s %1 uninstall com.xiaomi.smarthome

echo. 卸载 WPS
adb -s %1 uninstall cn.wps.moffice_eng

echo. 卸载 米聊
adb -s %1 uninstall com.xiaomi.channel

echo. 卸载 阅读
adb -s %1 uninstall com.duokan.reader

echo. 卸载 美团
adb -s %1 uninstall com.sankuai.meituan

echo. 卸载 猎豹清理
adb -s %1 uninstall com.cleanmaster.mguard_cn

echo. 卸载 一点资讯
adb -s %1 uninstall com.yidian.xiaomi

echo. 卸载 QQ空间
adb -s %1 uninstall com.qzone

echo. 卸载 com.wali.live
adb -s %1 uninstall com.wali.live

echo. 卸载 微博
adb -s %1 uninstall com.sina.weibo

echo. 卸载爱奇艺
adb -s %1 uninstall com.qiyi.video

echo. 删除 Xposed.zip
REM adb -s %1 shell rm /sdcard/xposed-v87-sdk23-arm64-MIUI-edition-by-SolarWarez-20161126.zip
adb -s %1 push D:\JKT\RedMi4A\xposed-v87-sdk23-arm64-MIUI-edition-by-SolarWarez-20161126.zip /sdcard

echo 安装聚客通

echo. 安装 XposedInstall
adb -s %1 install D:\JKT\1.1.10\XposedInstaller_3.1.2-release.apk

echo. 安装 Weike Test
adb -s %1 install D:\JKT\1.1.10\Weike_V2.1.2-debug-androidTest.apk

echo. 安装 Weike
adb -s %1 install D:\JKT\1.1.10\Weike_V2.1.10-release.apk

echo. 安装 JKT
adb -s %1 install -r D:\JKT\1.1.10\JKT_V1.1.16-release.apk

echo. 安装 微信
adb -s %1 install D:\JKT\1.1.10\Wechat_V6.6.5.apk

adb -s %1 reboot bootloader