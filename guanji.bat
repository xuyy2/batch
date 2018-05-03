 @Echo on 
  Setlocal Enabledelayedexpansion

echo 酷派手机装机脚本

echo 获取所有devices
adb devices > E:/JuKeTool/devices.text

set fn=E:/JuKeTool/devices.text
for /f "skip=1" %%i in (%fn%) do (
REM for /f "skip=1 tokens=1 delims= " %%i in (%fn%) do (
  echo %%i
  REM start cmd /k adb -s %%i shell am start eu.chainfire.supersu/eu.chainfire.supersu.GuideActivity
  REM start cmd /k adb -s %%i shell am start de.robv.android.xposed.installer/de.robv.android.xposed.installer.WelcomeActivity
  REM start cmd /k adb -s %%i shell am start com.android.settings/com.android.settings.Settings
  REM start cmd /k adb -s %%i shell am start u0 com.jubo.customsystem/com.jubo.customsystem.ShowActivity


  REM echo 安装聚客通-酷派
  REM start cmd /k adb -s %%i install -r C:\Users\lenovo\Desktop\JuKeTool\JKT_V1.1.16-release.apk 
  REM start cmd /k adb -s %%i reboot bootloader
  start cmd /k adb -s %%i shell reboot -p
  REM start cmd /k adb -s %%i shell am start com.weike.devicehooker/com.weike.devicehooker.ui.MainActivity
  REM start cmd /k jkt-ivvi %%i


) 
