@Echo Off
 Setlocal Enabledelayedexpansion

echo FANKA手机群控脚本

echo 获取所有devices
adb devices > E:/JuKeTool/devices.text

set fn=E:/JuKeTool/devices.text
for /f "skip=1" %%i in (%fn%) do (
REM for /f "skip=1 tokens=1 delims= " %%i in (%fn%) do (
  start cmd /k qk2 %%i
) 