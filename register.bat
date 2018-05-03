@echo off
Setlocal EnableDelayedExpansion

echo. ************这是自动输入注册码的脚本********************
echo. ************请先打开输入注册码的界面********************

echo 获取所有devices
adb devices > E:/JuKeTool/devices.text
::adb -s %1 shell am instrument -w -r -e debug false -e s0 %2  -e class com.jubo.kyd.FillNumberTest com.jubo.kyd.test/android.support.test.runner.AndroidJUnitRunner

set fn=E:/JuKeTool/devices.text
set fn2=C:\Users\lenovo\batch\registercode.text
for /f "skip=1" %%i in (%fn%) do (
    echo *****************************
    set /a n+=1
    set /a N=!n!%%15
    echo 第!n!个设备，设备号是%%i
    
    for /f "tokens=2" %%j in (%fn2%) do (
        set /a m+=1
        REM echo !m!
        set /a M=!m!%%15
        IF !N! == !M! (
            echo 第!M!个注册码是%%j
            REM echo 第!m!个注册码
            start cmd /k adb -s %%i shell am instrument -w -r -e debug false -e s0 %%j -e class com.jubo.kyd.FillNumberTest com.jubo.kyd.test/android.support.test.runner.AndroidJUnitRunner
            REM adb -s %%i shell am instrument -w -r -e debug false -e s0 %%j -e class com.jubo.kyd.FillNumberTest com.jubo.kyd.test/android.support.test.runner.AndroidJUnitRunner
        )
    ) 
    echo *****************************
    echo.
) 
