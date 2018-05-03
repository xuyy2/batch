@Echo Off
Setlocal Enabledelayedexpansion
echo 粉咖手机uninstall脚本
echo 获取所有devices
adb devices > E:/JuKeTool/devices.text
set fn=E:/JuKeTool/devices.text
for /f "skip=1" %%i in (%fn%) do (
REM for /f "skip=1 tokens=1 delims= " %%i in (%fn%) do (
  echo %%i
  start cmd /k C:\Users\lenovo\batch\uninstall-fk.bat %%i
) 

