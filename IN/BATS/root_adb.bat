echo off 
:menu 
mode 1000
cls 
color E
title MENU/HERAMIENTA DE AMAZFIT PACE
echo. 
echo BIENVENIDO %USERNAME% 
ECHO.
ECHO put the difrent numbers that apears in the screent to select the diffret options
ECHO. 
ECHO ====================================================================================
ECHO = 1. root for the china rom =
ECHO = 2. root for the international =
ECHO ====================================================================================

ECHO. 
SET /P ver= what do you wan to do?...

::PARA VERSION INTERNACIONAL

if %ver%==1 adb devices
if %ver%==1 adb wait-for-device
if %ver%==1 cls
if %ver%==1 adb shell reboot bootloader
if %ver%==1 fastboot devices
if %ver%==1 fastboot boot "C:\V. 6\AMAZFIT\temp_root_adb\boot-US-adb-root.img"
if %ver%==1 adb wait-for-device
if %ver%==1 ECHO ########################################## 
if %ver%==1 ECHO    REBOOTING THE CLOCK 
if %ver%==1 ECHO ########################################## 
if %ver%==1 pause
if %ver%==1 cls
if %ver%==1 C:\V. 6\IN"

::PARA VERSION CHINA 

if %ver%==2 adb devices
if %ver%==2 adb wait-for-device
if %ver%==2 cls
if %ver%==2 adb shell reboot bootloader
if %ver%==2 fastboot devices
if %ver%==2 fastboot boot "C:\V. 6\AMAZFIT\temp_root_adb\boot-CN-adb-root.img"
if %ver%==2 adb wait-for-device
if %ver%==2 ECHO ########################################## 
if %ver%==2 ECHO    REBOOTING THE CLOCK  
if %ver%==2 ECHO ########################################## 
if %ver%==2 pause
if %ver%==2 cls
if %ver%==2 "C:\V. 6\V.6.1.bat"

