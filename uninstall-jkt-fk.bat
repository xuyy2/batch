echo rm JuKeTool
adb -s %1 root
adb -s %1 remount
adb -s %1 shell rm -r /system/app/JuKeTool.apk
adb -s %1 shell rm -r /vendor/lib/libBugly.so 
adb -s %1 shell rm -r /vendor/lib/libNameProvider.so/
adb -s %1 shell rm -r /vendor/lib64/libBugly.so 
adb -s %1 shell rm -r /vendor/lib64/libNameProvider.so 
REM adb -s %1 shell reboot

REM adb shell rm -r /data/data/com.jubo.customsystem/shared_prefs
REM adb shell ls -l /data/data/com.jubo.customsystem
REM pause