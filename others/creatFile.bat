@echo off
::截取当前日期
set now=%date:~3,10%
::把/替换为_
set filename=%now:/=_%
::如果文件夹不存在 就新建一个文件夹
if not exist "E:\testScreencap\%filename%" md E:\testScreencap\%filename%
::录屏 %1 录制时间 ；%2 文件名
echo on
::参数加时间生成文件名
set nowtime=%time:~,5%
set documentname=%2%nowtime::=_%
::录制的文件保存在手机sdcard中 文件动态生成
adb shell screenrecord --time-limit %1 /sdcard/%documentname%.mp4 
adb pull /sdcard/%documentname%.mp4 E:/testVideo/%filename%/%documentname%.mp4
adb shell rm /sdcard/%documentname%.mp4
::打开文件夹
start E:\testVideo\%filename%