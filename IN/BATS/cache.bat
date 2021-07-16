echo off 
:menu 
mode 1000
cls 
color F
title TOOL/MENU FOR AMAZFIT PACE
echo. 
echo BIENVENIDO %USERNAME% 
ECHO.
ECHO. put a numer to execute the difrent options
ECHO. 
ECHO ====================================================================================
ECHO = 1. errase cache "normal"  =
ECHO = 2. reoptimize apps  =
ECHO ====================================================================================

ECHO. 
SET /P ver= what do you won to do?...

:: BORRAR CACHE NORMAL	

if %ver%==1 adb devices
if %ver%==1 adb wait-for-device
if %ver%==1 cls
if %ver%==1 adb remount rw
if %ver%==1 adb wait-for-device
if %ver%==1 adb shell rm -rf /data/dalvik-cache
if %ver%==1 adb wait-for-device
if %ver%==1 adb remount ro
if %ver%==1 adb wait-for-device
if %ver%==1 adb reboot
if %ver%==1 cls
if %ver%==1 cls
if %ver%==1 ECHO *********************
if %ver%==1 ECHO  THE WORK IS FINISH
if %ver%==1 ECHO *********************
if %ver%==1 pause 
if %ver%==1 cls 
if %ver%==1 "C:\V. 6\V.6.1.bat"


::RE-OPTIMIZAR APPS 

if %ver%==2 adb devices
if %ver%==2 adb wait-for-device
if %ver%==2 adb shell reboot fastboot 
if %ver%==2 cls 
if %ver%==2 fastboot erase cache
if %ver%==2 pause 
if %ver%==2 fastboot reboot 
if %ver%==2 adb wait-for-device  
if %ver%==2 adb reboot 
if %ver%==2 ECHO *********************
if %ver%==2 ECHO  THE WORK IS FINISH
if %ver%==2 ECHO *********************
if %ver%==2 pause 
if %ver%==2 cls 
if %ver%==2 "C:\V. 6\V.6.1.bat"


