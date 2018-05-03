@Echo Off
 Setlocal Enabledelayedexpansion

echo 酷派手机设置脚本

echo 获取所有devices
adb devices > E:/JuKeTool/devices.text

set fn=E:/JuKeTool/devices.text
for /f "skip=1" %%i in (%fn%) do (
REM for /f "skip=1 tokens=1 delims= " %%i in (%fn%) do (
  echo 安装聚客通-ChinaMobile_A3s
  start cmd /k jkt-a3s %%i
) 
