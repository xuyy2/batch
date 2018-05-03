@Echo Off
 Setlocal Enabledelayedexpansion

echo AA3s手机设置脚本

echo 获取所有devices
adb devices > E:/JuKeTool/devices.text

set fn=E:/JuKeTool/devices.text
for /f "skip=1" %%i in (%fn%) do (
REM for /f "skip=1 tokens=1 delims= " %%i in (%fn%) do (
  echo 卸载devices
  start cmd /k adb -s %%i uninstall com.weike.devicehooker
) 
