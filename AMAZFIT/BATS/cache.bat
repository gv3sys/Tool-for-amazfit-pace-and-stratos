echo off 
:menu 
mode 1000
cls 
color b
title MENU/HERAMIENTA DE AMAZFIT PACE
echo. 
echo BIENVENIDO %USERNAME% 
ECHO.
ECHO pon numeros para ejecutar una cosa o otra
ECHO. 
ECHO ====================================================================================
ECHO = 1. borrar cache "normal"  =
ECHO ====================================================================================

ECHO. 
SET /P ver= que quieres hacer?...

:: BORRAR CACHE NORMAL	

if %ver%==1 adb devices
if %ver%==1 adb wait-for-device
if %ver%==1 adb remount rw
if %ver%==1 adb shell rm -rf /data/dalvik-cache
if %ver%==1 adb wait-for-device 
if %ver%==1 adb remount ro
if %ver%==1 adb wait-for-device
if %ver%==1 adb reboot
if %ver%==1 cls
if %ver%==1 ECHO *********************
if %ver%==1 ECHO  FIN DE LA LIMPIEZA
if %ver%==1 ECHO *********************
if %ver%==1 ECHO *****************************
if %ver%==1 ECHO  TAREA TERMINADA. A CORRER!!
if %ver%==1 ECHO *****************************
if %ver%==1 pause 
if %ver%==1 cls 



