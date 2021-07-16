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
ECHO = 1. subir el volumen x15 (normal)
ECHO = 2. subir el volumen x20 (normal)
ECHO = 3. subir el volumen x25 (normal)
ECHO = 4. subir el volumen x30 (normal)
ECHO = 5. subir el volumen x35 (cuidado)
ECHO = 6. subir el volumen x40 (fuerte/muy alto)
ECHO = 7. subir el volumen x45 (muy fuerte/demasiado alto)
ECHO = 8. subir el volumen x50 (muy fuerte/demasiado alto)
ECHO = 9. subir el volumen x55 (muy fuerte/demasiado alto)
ECHO = 10. subir el volumen x60 (muy fuerte/demasiado alto)
ECHO = 11. subir el volumen x65 (muy fuerte/demasiado alto)
ECHO = 12. salir
ECHO ====================================================================================

ECHO. 
SET /P ver= que quieres hacer?...


:: SUBIR VOLUMEN X15

if %ver%==1 adb devices
if %ver%==1 adb wait-for-device
if %ver%==1 adb shell content insert --uri content://settings/system --bind value:s:15 --bind  name:s:volume_music_bt_a4dpname:s:volume_music_bt_a4dp
if %ver%==1 msg %USERNAME% SE LE HA SUBIDO EL VOLUMEN DE SU AMAZFIT
if %ver%==1 pase 
if %ver%==1 cls

::X20

if %ver%==2 adb devices
if %ver%==2 adb wait-for-device
if %ver%==2 adb shell content insert --uri content://settings/system --bind value:s:20 --bind  name:s:volume_music_bt_a4dpname:s:volume_music_bt_a4dp
if %ver%==2 msg %USERNAME% SE LE HA SUBIDO EL VOLUMEN DE SU AMAZFIT
if %ver%==2 pause 
if %ver%==2 cls

:: 25

if %ver%==3 adb devices
if %ver%==3 adb wait-for-device
if %ver%==3 adb shell content insert --uri content://settings/system --bind value:s:25 --bind  name:s:volume_music_bt_a4dpname:s:volume_music_bt_a4dp
if %ver%==3 msg %USERNAME% SE LE HA SUBIDO EL VOLUMEN DE SU AMAZFI
if %ver%==3 pause
if %ver%==3 cls



:: X30

if %ver%==4 adb devices
if %ver%==4 adb wait-for-device
if %ver%==4 adb shell content insert --uri content://settings/system --bind value:s:30 --bind name:s:volume_music_bt_a4dp
if %ver%==4 msg %USERNAME% SE LE HA SUBIDO EL VOLUMEN DE SU AMAZFIT 
if %ver%==4 pause
if %ver%==4 cls


:: SUBIR EL VOLUMEN X35

if %ver%==5 adb devices
if %ver%==5 adb wait-for-device
if %ver%==5 adb shell content insert --uri content://settings/system --bind value:s:35 --bind name:s:volume_music_bt_a4dp
if %ver%==5 cls 
if %ver%==5 adb reboot 
if %ver%==5 cls 
if %ver%==5 start msg * SE LE HA SUBIDO EL NIVEL DEL BT A EXTREMO 
if %ver%==5 pause 
if %ver%==5 cls



:: X40

if %ver%==6 adb devices
if %ver%==6 adb wait-for-device
if %ver%==6 adb shell content insert --uri content://settings/system --bind value:s:40 --bind name:s:volume_music_bt_a4dp
if %ver%==6 msg %USERNAME% SE LE HA SUBIDO EL VOLUMEN DE SU AMAZFIT 
if %ver%==6 adb reboot
if %ver%==6 pause 
if %ver%==6 cls



:: X45

if %ver%==7 adb devices
if %ver%==7 adb wait-for-device
if %ver%==7 adb shell content insert --uri content://settings/system --bind value:s:45 --bind name:s:volume_music_bt_a4dp
if %ver%==7 msg %USERNAME% SE LE HA SUBIDO EL VOLUMEN DE SU AMAZFIT
if %ver%==7 adb reboot 
if %ver%==7 cls
if %ver%==7 pause


::X50 

if %ver%==8 adb devices
if %ver%==8 adb wait-for-device
if %ver%==8 adb shell content insert --uri content://settings/system --bind value:s:50 --bind name:s:volume_music_bt_a4dp
if %ver%==8 msg %USERNAME% SE LE HA SUBIDO EL VOLUMEN DE SU AMAZFIT
if %ver%==8 adb reboot 
if %ver%==8 cls
if %ver%==8 pause


::X55

if %ver%==9 adb devices
if %ver%==9 adb wait-for-device
if %ver%==9 adb shell content insert --uri content://settings/system --bind value:s:55 --bind name:s:volume_music_bt_a4dp
if %ver%==9 msg %USERNAME% SE LE HA SUBIDO EL VOLUMEN DE SU AMAZFIT 
if %ver%==9 adb reboot 
if %ver%==9 cls
if %ver%==9 pause

::X60

if %ver%==10 adb devices
if %ver%==10 adb wait-for-device
if %ver%==10 adb shell content insert --uri content://settings/system --bind value:s:60 --bind name:s:volume_music_bt_a4dp
if %ver%==10 msg %USERNAME% SE LE HA SUBIDO EL VOLUMEN DE SU AMAZFIT 
if %ver%==10 adb reboot 
if %ver%==10 cls
if %ver%==10 pause


::X65

if %ver%==11 adb devices
if %ver%==11 adb wait-for-device
if %ver%==11 adb shell content insert --uri content://settings/system --bind value:s:65 --bind name:s:volume_music_bt_a4dp
if %ver%==11 msg %USERNAME% SE LE HA SUBIDO EL VOLUMEN DE SU AMAZFIT 
if %ver%==11 adb reboot 
if %ver%==11 cls
if %ver%==11 pause


if %ver%==12 "C:\V. 6\ES\V.6.1.bat"


