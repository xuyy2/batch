echo off
rem chcp 65001
:: %1 循环次数
:: %2 录制时长
:: %3 文件名
rem for /L %%i in (1,1,5) do echo %%i
for /L %%i in (1,1,%1) do call screenrecord %2 %3
