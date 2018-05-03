echo off
chcp 65001
::截取当前日期
set now=%date:~3,10%
::把/替换为_
set filename=%now:/=_%
::如果文件夹不存在 就新建一个文件夹
if not exist "E:\testScreencap\%filename%" md E:\testScreencap\%filename%

::参数加时间生成文件名
set nowtime=%time:~,5%
set documentname=%1%nowtime::=_%
set documentname=%documentname: =%

::截屏 %1=文件名
adb shell screencap -p /sdcard/demo.png
adb pull /sdcard/demo.png E:\testScreencap\%filename%\%documentname%.png
adb shell rm /sdcard/demo.png
start e:/testScreencap/%filename%