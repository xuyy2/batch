@Echo Off
REM echo 粉咖新机装机脚本
REM echo 先删除手机中的无用的app
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
REM echo 删除leb
REM adb -s %1 uninstall com.lbe.security
REM echo 删除QQ
REM adb -s %1 uninstall com.tencent.mobileqq
REM echo 删除UC
REM adb -s %1 uninstall com.UCMobile
REM @rem adb shell pm list packages -s
REM @rem adb shell pm path com.xx.xx
REM @rem adb shell rm path com.agsoft.share
REM ::挂在读写权限
REM adb -s %1 remount
REM ::s删除系统包
REM adb -s %1 shell rm /system/app/OldDriver/OldDriver.apk

echo 删除wxhook
adb -s %1 uninstall com.weike.wxhook
echo delete phonehook
adb -s %1 uninstall com.weike.phonehook
echo delete UCMobile
adb -s %1 uninstall com.UCMobile
echo delete QQ
adb -s %1 uninstall com.tencent.mobileqq
echo delete weixinhelprer
adb -s %1 uninstall com.weike.helper


echo 安装聚客通相关app
:REM echo 安装supersu
@REM adb -s %1 install E:/JuKeTool/supersu-2-79.apk
echo 安装微信6.6.5
adb -s %1 install -r E:/JuKeTool/wechat6.6.5.apk 

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

