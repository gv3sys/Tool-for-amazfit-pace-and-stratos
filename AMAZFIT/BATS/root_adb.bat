echo off 
:menu 
mode 1000
cls 
color E
title MENU/HERAMIENTA DE AMAZFIT PACE
echo. 
echo BIENVENIDO %USERNAME% 
ECHO.
ECHO pon numeros para ejecutar una cosa o otra
ECHO. 
ECHO ====================================================================================
ECHO = 1. root para rom china =
ECHO = 2. root para rom internacional =
ECHO ====================================================================================

ECHO. 
SET /P ver= que quieres hacer?...

::PARA VERSION INTERNACIONAL

if %ver%==1 adb devices
if %ver%==1 adb wait-for-device
if %ver%==1 adb shell reboot bootloader
if %ver%==1 fastboot devices
if %ver%==1 fastboot boot "C:\V. 6\AMAZFIT\temp_root_adb\boot-US-adb-root.img"
if %ver%==1 adb wait-for-device
if %ver%==1 ECHO ########################################## 
if %ver%==1 ECHO   REINICIADO EL RELOJ 
if %ver%==1 ECHO ########################################## 
if %ver%==1 cls 
if %ver%==1 pause 
if %ver%==1 msg %USERNAME% pulsa una tecla cualquiera para volver al menu principal
if %ver%==1 cls
if %ver%==1 pause 
if %ver%==1 "C:\V. 6\V.6.1.bat"

::PARA VERSION CHINA 

if %ver%==2 adb devices
if %ver%==2 adb wait-for-device
if %ver%==2 adb shell reboot bootloader
if %ver%==2 fastboot devices
if %ver%==2 fastboot boot "C:\V. 6\AMAZFIT\temp_root_adb\boot-CN-adb-root.img"
if %ver%==2 adb wait-for-device
if %ver%==2 ECHO ########################################## 
if %ver%==2 ECHO  REINICIADO EL RELOJ 
if %ver%==2 ECHO ########################################## 
if %ver%==2 cls 
if %ver%==2 pause 
if %ver%==2 msg %USERNAME% pulsa una tecla cualquiera para volver al menu principal
if %ver%==2 cls
if %ver%==2 pause 
if %ver%==2 "C:\V. 6\V.6.1.bat"

