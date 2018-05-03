echo off
setlocal enabledelayedexpansion
@rem 根据当前时间生成一串数字，作为serial
set serialnumber=%time:~,11%
set sn=%serialnumber::=%
set sn=%sn:.=%
@rem 需要创建一个txt文件 作为修改的模板 
set fn=C:\Users\lenovo\batch\ms.txt
@rem 所有的列 每行以空格分隔
for /f "tokens=* delims= " %%i in (%fn%) do (
  echo %%i
  set str=%%i
  @rem 将行中sn字符替换成自己生成的随机数，并写入ms.txt;这里的ms.txt和之前创建的ms.txt不是同一个文件；
  @rem 这个文件应该在系统的根目录下
  echo !str:sn=%sn%! >ms.txt
)
@REM 将exit追加道ms.txt的最后；这样这修改完devices后会退出shell
echo exit >> ms.txt
REM 执行脚本
adb shell < ms.txt
REM start ms.txt

REM adb kill-server
REM adb devices
