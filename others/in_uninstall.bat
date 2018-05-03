chcp 65001
echo 删除粉宝apk
adb uninstall com.njmomlnnmcmlml.beishanadsa
echo 删除粉宝
adb uninstall com.b3ad.marketing
echo 删除人脉通
adb uninstall com.bizsocialnet
echo 删除Y3云监控
adb uninstall com.agsoft.wechatx
echo 删除探探
adb uninstall com.p1.mobile.putong
echo 删除leb
adb uninstall com.lbe.security

@rem adb shell pm list packages -s
@rem adb shell pm path com.xx.xx
@rem adb shell rm path com.agsoft.share
::挂在读写权限
adb remount
::s删除系统包
adb shell rm /system/app/OldDriver/OldDriver.apk

adb install -r -d E:\30p\KingRoot.apk
adb install -r -d E:\30p\XposedInstaller_3.1.1-release.apk
adb install -r -d E:\30p\UCBrowser_V11.4.5.937.apk
adb install -r -d E:\30p\Wechat_V6.5.10.apk


adb install -r -d E:\30p\PhoneHook_V1.0.7-dev-release.apk
adb install -r -d E:\30p\weike_test_V1.7.4.apk
adb install -r -d E:\30p\Weike_V1.8.0-dev-release.apk
adb install -r -d E:\30p\WeiXinHelper_V1.1.0-dev-release.apk
adb install -r -d E:\30p\WxHook_V1.0.8-dev-release.apk
echo 安装完成
