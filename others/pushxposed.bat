echo 获取所有devices
adb devices > E:/JuKeTool/devices.text

set fn=E:/JuKeTool/devices.text
for /f "skip=1" %%i in (%fn%) do (
REM for /f "skip=1 tokens=1 delims= " %%i in (%fn%) do (
  start cmd /k adb -s %%i push D:/JKT/RedMi4X/xposed-v89-sdk25-arm64.zip /sdcard

) 
call bootloader_all