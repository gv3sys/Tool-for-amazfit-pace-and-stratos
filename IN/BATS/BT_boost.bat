echo off 
:menu 
mode 1000
cls 
color b
title MENU/TOOL FOR AMAZFIT PACE AND STRATOS 
echo. 
echo. tool created by @ivansinmas
echo.
echo WELCOME %USERNAME% 
ECHO.
ECHO type a number to execute one thing or another
ECHO. 
ECHO IF YOU DO NOT SEE STRATOS SUPPORT, DO NOT TRY IT AS YOU CAN BRICK YOUR WATCH 
ECHO ====================================================================================
ECHO = 1. boost the volume  x15 (stratos support)
ECHO = 2. boost the volume  x20 (stratos support)
ECHO = 3. boost the volume  x25 (stratos support)
ECHO = 4. boost the volume  x30 (stratos support)
ECHO = 5. boost the volume  x35 (stratos support)
ECHO = 6. boost the volume  x40 (stratos support)
ECHO = 7. boost the volume  x45 (stratos support)
ECHO = 8. boost the volume  x50 (stratos support)
ECHO = 9. boost the volume  x55 (stratos support)
ECHO = 10.boost the volume  x60 (stratos support)
ECHO = 11.boost the volume  x65 (stratos support)
ECHO = 12. return
ECHO ====================================================================================

ECHO. 
SET /P ver= que quieres hacer?...


:: SUBIR VOLUMEN X15

if %ver%==1 adb devices
if %ver%==1 adb wait-for-device
if %ver%==1 adb shell content insert --uri content://settings/system --bind value:s:15 --bind  name:s:volume_music_bt_a4dpname:s:volume_music_bt_a4dp
if %ver%==1 msg %USERNAME% the volumen has been bosted
if %ver%==1 pase 
if %ver%==1 cls



::X20

if %ver%==2 adb devices
if %ver%==2 adb wait-for-device
if %ver%==2 adb shell content insert --uri content://settings/system --bind value:s:20 --bind  name:s:volume_music_bt_a4dpname:s:volume_music_bt_a4dp
if %ver%==2 msg %USERNAME% the volumen has been bosted
if %ver%==2 pause 
if %ver%==2 cls



:: 25

if %ver%==3 adb devices
if %ver%==3 adb wait-for-device

if %ver%==3 adb shell content insert --uri content://settings/system --bind value:s:25 --bind  name:s:volume_music_bt_a4dpname:s:volume_music_bt_a4dp
if %ver%==3 the volumen has been bosted
if %ver%==3 pause
if %ver%==3 cls



:: X30

if %ver%==4 adb devices
if %ver%==4 adb wait-for-device
if %ver%==4 adb shell content insert --uri content://settings/system --bind value:s:30 --bind name:s:volume_music_bt_a4dp
if %ver%==4 msg %USERNAME% the volumen has been bosted
if %ver%==4 pause
if %ver%==4 cls


:: SUBIR EL VOLUMEN X35

if %ver%==5 adb devices
if %ver%==5 adb wait-for-device
if %ver%==5 adb shell content insert --uri content://settings/system --bind value:s:35 --bind name:s:volume_music_bt_a4dp
if %ver%==5 cls 
if %ver%==5 adb reboot 
if %ver%==5 cls 
if %ver%==5 start msg *  the volumen has been bosted
if %ver%==5 pause 
if %ver%==5 cls



:: X40

if %ver%==6 adb devices
if %ver%==6 adb wait-for-device
if %ver%==6 pause 
if %ver%==6 adb root
if %ver%==6 adb shell content insert --uri content://settings/system --bind value:s:40 --bind name:s:volume_music_bt_a4dp
if %ver%==6 msg %USERNAME% the volumen has been bosted
if %ver%==6 adb reboot
if %ver%==6 pause 
if %ver%==6 cls



:: X45

if %ver%==7 adb devices
if %ver%==7 adb wait-for-device
if %ver%==7 pause 
if %ver%==7 adb root
if %ver%==7 adb shell content insert --uri content://settings/system --bind value:s:45 --bind name:s:volume_music_bt_a4dp
if %ver%==7 msg %USERNAME% SE LE HA SUBIDO EL VOLUMEN DE SU AMAZFIT
if %ver%==7 adb reboot 
if %ver%==7 cls
if %ver%==7 pause


::X50 

if %ver%==8 adb devices
if %ver%==8 adb wait-for-device
if %ver%==8 pause 
if %ver%==8 adb root
if %ver%==8 adb shell content insert --uri content://settings/system --bind value:s:50 --bind name:s:volume_music_bt_a4dp
if %ver%==8 msg %USERNAME% SE LE HA SUBIDO EL VOLUMEN DE SU AMAZFIT
if %ver%==8 adb reboot 
if %ver%==8 cls
if %ver%==8 pause


::X55

if %ver%==9 adb devices
if %ver%==9 adb wait-for-device
if %ver%==9 pause 
if %ver%==9 adb root
if %ver%==9 adb shell content insert --uri content://settings/system --bind value:s:55 --bind name:s:volume_music_bt_a4dp
if %ver%==9 msg %USERNAME% the volumen has been bosted
if %ver%==9 adb reboot 
if %ver%==9 cls
if %ver%==9 pause

::X60

if %ver%==10 adb devices
if %ver%==10 adb wait-for-device
if %ver%==10 pause 
if %ver%==10 adb root
if %ver%==10 adb shell content insert --uri content://settings/system --bind value:s:60 --bind name:s:volume_music_bt_a4dp
if %ver%==10 msg %USERNAME% the volumen has been bosted
if %ver%==10 adb reboot 
if %ver%==10 cls
if %ver%==10 pause


::X65

if %ver%==11 adb devices
if %ver%==11 adb wait-for-device
if %ver%==11 pause 
if %ver%==11 adb root
if %ver%==11 adb shell content insert --uri content://settings/system --bind value:s:65 --bind name:s:volume_music_bt_a4dp
if %ver%==11 msg %USERNAME% the volumen has been bosted
if %ver%==11 adb reboot 
if %ver%==11 cls
if %ver%==11 pause

:: VOLVER 

if %ver%==12 "C:\V. 6\V.6.1.bat"



goto :menu
f


