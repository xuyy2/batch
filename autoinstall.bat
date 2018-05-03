 @Echo on 
  Setlocal Enabledelayedexpansion

echo 酷派手机装机脚本

echo 获取所有devices
adb devices > E:/JuKeTool/devices.text

set fn=E:/JuKeTool/devices.text
for /f "skip=1" %%i in (%fn%) do (
REM for /f "skip=1 tokens=1 delims= " %%i in (%fn%) do (
  echo %%i
  @echo 群控安装
  REM start cmd /k qk %%i
  REM echo 安装聚客通-红米
  REM start cmd /k jkt-hm %%i
  echo 安装聚客通-酷派
  start cmd /k jkt-kp %%i
  REM start cmd /k adb -s %%i uninstall com.qihoo.appstore 
::其他语法 
  REM Set /a n+=1
  REM echo !n! 
  REM If !n!==1 set dn=%%i
  @REM   set str=%%i
  @REM   echo !str:sn=%sn%! >ms.txt
) 

