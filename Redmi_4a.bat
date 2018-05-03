 @Echo on 
  Setlocal Enabledelayedexpansion

echo 聚客通-Redmi_4A装机脚本

echo 获取所有devices
adb devices > E:/JuKeTool/devices.text

set fn=E:/JuKeTool/devices.text
for /f "skip=1" %%i in (%fn%) do (
REM for /f "skip=1 tokens=1 delims= " %%i in (%fn%) do (
  echo 安装聚客通-红米4A
  start cmd /k jkt-redmi-4a %%i

) 

