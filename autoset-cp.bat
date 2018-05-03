@Echo Off
 Setlocal Enabledelayedexpansion

echo 酷派手机设置脚本

echo 获取所有devices
adb devices > E:/JuKeTool/devices.text

set fn=E:/JuKeTool/devices.text
for /f "skip=1" %%i in (%fn%) do (
REM for /f "skip=1 tokens=1 delims= " %%i in (%fn%) do (
  echo %%i
  REM adb -s %%i shell am start de.robv.android.xposed.installer/de.robv.android.xposed.installer.WelcomeActivity
  REM   adb -s %%i shell am start com.kingroot.kinguser/com.kingroot.kinguser.activitys.MainActivity
    adb -s %%i shell am start dcom.jubo.customsystem/com.jubo.customsystem.ShowActivity
) 

