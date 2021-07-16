echo off 
:menu 
mode 1000
cls 
color b
title MENU/TOOL FOR AMAZFIT PACE AND STRATOS 
echo. 
echo. tool created by @ivansinmas
echo.
echo tool translated by @Saratoga79
echo WELCOME %USERNAME% 
ECHO.
ECHO type a number to execute one thing or another
ECHO. 
ECHO IF YOU DO NOT SEE STRATOS SUPPORT, DO NOT TRY IT AS YOU CAN BRICK YOUR WATCH 
ECHO.ECHO ====================================================================================
ECHO = 1. reboot (turn off and on) (Stratos support)
ECHO = 2. boost BT volume (bt= bluetooth) (Stratos support)
ECHO = 3. EXIT == 
ECHO = 4. check bootloader== (Stratos support)
ECHO = 5. disable wifi (custom rom or root needed ) 
ECHO = 6. enable wifi (custom rom or root needed) (Stratos support)
ECHO = 7. exit fastboot mode (Stratos support)
ECHO = 8. show qr code without doing a factory reset (custom rom or root needed)(Stratos support)
ECHO = 9. enable applist (Stratos support)
ECHO = 10. set custom brightness  
ECHO = 11. list of connected devices (Stratos support)
ECHO = 12. tool version 
ECHO = 13. credits
ECHO = 14. enabble app installation on your watch (Stratos support)
ECHO = 15. erase cache  (Stratos support)
ECHO = 16. install temporal adb root
ECHO = 17. install temporal root for apps 
ECHO = 18. factory reset (erase everything) (Stratos support)
ECHO = 19. disable BT (bt= bluetooth) (ONLY Stratos)
ECHO = 20. enale BT (bt= bluetooth) (ONLY Stratos)
ECHO = 21. disable applist (Stratos support)
ECHO = 22. install my pack of apps
====================================================================================
ECHO. 
SET /P ver= what do you want to do?...

::REINICIAR 

if %ver%==1 color 1
if %ver%==1 cls 
if %ver%==1 adb devices
if %ver%==1 adb wait-for-device
if %ver%==1 pause
if %ver%==1 cls
if %ver%==1 adb reboot
if %ver%==1 cls

::SUBIR NIVEL DEL BT

if %ver%==2 color 2
if %ver%==2 cls 
if %ver%==2 "C:\V. 6\IN\BATS\BT_boost.bat""
if %ver%==2 cls

::SALIR

if %ver%==3 start msg * bye
if %ver%==3 goto f
 
::COMPROBAR EL BOOTLOADER


if %ver%==4 color 3
if %ver%==4 cls 
if %ver%==4 adb devices
if %ver%==4 adb wait-for-device 
if %ver%==4 adb shell reboot bootloader
if %ver%==4 fastboot getvar all
if %ver%==4 msg %USERNAME% You will see some info, look for: bootloader unlocked,  if you get yes, your bootloader is unlocked. If you get no, your bootloader is locked
if %ver%==4 pause
if %ver%==4 cls

::DESACTIVAR WIFI


if %ver%==5 color 4
if %ver%==5 cls 
if %ver%==5 adb devices 
if %ver%==5 adb wait-for-device
if %ver%==5 adb kill-server
if %ver%==5 adb root
if %ver%==5 adb shell mount -o rw,remount,rw /system
if %ver%==5 adb shell mv /system/lib/firmware/wifi /system/lib/firmware/wifi_off
if %ver%==5 adb reboot
if %ver%==5 cls

::ACTIVAR EL WIFI
 

if %ver%==6 color 5
if %ver%==6 cls 
if %ver%==6 adb devices
if %ver%==6 adb wait-for-device
if %ver%==6 adb kill-server
if %ver%==6 adb root
if %ver%==6 adb shell mount -o rw,remount,rw /system 
if %ver%==6 adb shell mv /system/lib/firmware/wifi_off /system/lib/firmware/wifi
if %ver%==6 adb reboot
if %ver%==6 cls

::SALIR DEL MODO FASTBOOT


if %ver%==7 color 6
if %ver%==7 cls 
if %ver%==7 fastboot devices 
if %ver%==7 msg %USERNAME% if you can not exit fastboot mode, push power button few seconds until your watch shuts down. Then push power button again to turn on your watch  
if %ver%==7 fastboot reboot
if %ver%==7 cls

::ACTIVAR CODIGO QR


if %ver%==8 color 7
if %ver%==8 cls 
if %ver%==8 adb devices
if %ver%==8 adb wait-for-device 
if %ver%==8 adb shell am start -n com.huami.watch.setupwizard/.InitPairQRActivity
if %ver%==8 msg %USERNAME% now you may see the qr code on the screen of your watch
if %ver%==8 cls

:: ACTIVAR APP LIST 


if %ver%==9 color 8
if %ver%==9 cls 
if %ver%==9 clip < "C:\V. 6\AMAZFIT\BATS\readme_2.txt"
if %ver%==9 cls 
if %ver%==9 smg %USERNAME% now use right click to paste the commands copied in the clipboard, to exit of adb shell type exit
if %ver%==9 cls
if %ver%==9 pause
if %ver%==9 adb shell 

::NIVEL DE BRILLO CUSTOMIZADO 


if %ver%==10 color 9
if %ver%==10 cls 
if %ver%==10 adb devices
if %ver%==10 adb wait-for-device
if %ver%==10 clip < "C:\V. 6\AMAZFIT\BATS\readme_3.txt"
if %ver%==10 cls 
if %ver%==10 msg %USERNAME% now use right click to paste the commands copied in the clipboard 
if %ver%==10 msg %USERNAME% type a number next to the two X to set custom brihtness, nothe 0 is minimum and 255 is maximum vale. (PS: default value is 60) 
if %ver%==10 cls
if %ver%==10 pause 
if %ver%==10 cls
if %ver%==10 adb shell

::LISTA DE DISPOSITIVOS


if %ver%==11 color A
if %ver%==11 cls 
if %ver%==11 adb devices
if %ver%==11 pause
if %ver%==11 cls
 
::VERSION DE LA HERRAMIENTA


if %ver%==12 color B
if %ver%==12 cls 
if %ver%==12 msg %USERNAME% version number is 6.2
if %ver%==12 pause
if %ver%==12 cls

::CREDITOS 


if %ver%==13 color C
if %ver%==13 cls 
if %ver%==13 msg %USERNAME% menu/tool for amazfit pace by @Ivansinmas
if %ver%==13 cls
if %ver%==13 pause
if %ver%==13 msg %USERNAME% translations by @Saratoga79
if %ver%==13 cls
if %ver%==13 pause
if %ver%==13 msg %USERNAME% if you like my work and you want to thank me, here you are an easy way :P : paypal.me/ivanC500
if %ver%==13 cls
if %ver%==13 pause


:: PERMITIR INSTALACION DE APPS


if %ver%==14 color D
if %ver%==14 cls 
if %ver%==14 adb devices
if %ver%==14 adb wait-for-device
if %ver%==14 adb root 
if %ver%==14 adb shell settings put global install_non_market_apps 1 
if %ver%==14 adb shell settings put global install_non_market_apps 2
if %ver%==14 adb shell settings put global install_non_market_apps 3
if %ver%==14 adb shell settings put secure install_non_market_apps 1 
if %ver%==14 adb shell settings put secure install_non_market_apps 2
if %ver%==14 adb shell settings put secure install_non_market_apps 3
if %ver%==14 msg %USERNAME% you can install now apps without a PC 
if %ver%==14 cls 
if %ver%==14 pause 

::CACHES

if %ver%==15 "C:\V. 6\IN\BATS\cache.bat"
if %ver%==15 cls 

:: ROOT ADB
 
if %ver%==16 "C:\V. 6\IN\BATS\root_adb.bat"
if %ver%==16 cls


:: ROOT APPS

if %ver%==17 adb devices
if %ver%==17 adb wait-for-device
if %ver%==17 adb push "C:\V. 6\supersu" /sdcard/
if %ver%==17 adb root
if %ver%==17 adb remount
if %ver%==17 msg %USERNAME% now use right click to paste the commands copied in the clipboard 
if %ver%==17 cls 
if %ver%==17 clip < "C:\V. 6\AMAZFIT\BATS\readme.txt"
if %ver%==17 msg %USERNAME% type exit to exit shell
if %ver%==17 cls 
if %ver%==17 pause 
if %ver%==17 adb shell




:: FORMATEAR EL RELOJ 

if %ver%==18 ECHO ##########################################################################
if %ver%==18 ECHO BE CAREFUL, THERE IS NO WAY BACK, YOU WILL ERASE EVERYTHING ON YOUR WATCH 
if %ver%==18 ECHO (APP DATA, INSTALLED APPS, CACHE,..) ARE YOU SURE YOU WANT TO DO A FACTORY 
if %ver%==18 ECHO RESET? IT CANNOT BE UNDONE, IF SO, DO NOT DICONNECT THE WATCH
if %ver%==18 ECHO ##########################################################################
if %ver%==18 pause 
if %ver%==18 msg %USERNAME% ARE YOU SURE?????
if %ver%==18 cls 
if %ver%==18 pause
if %ver%==18 pause 
if %ver%==18 msg %USERNAME% ARE YOU REALLY SURE? IF SO, GO ON...
if %ver%==18 cls 
if %ver%==18 pause  
if %ver%==18 adb devices
if %ver%==18 adb wait-for-device
if %ver%==18 adb shell reboot bootloader
if %ver%==18 fastboot devices
if %ver%==18 fastboot erase data
if %ver%==18 fastboot erase cache
if %ver%==18 fastboot reboot 
if %ver%==18 ECHO ####################################################
if %ver%==18 ECHO          FINISHED 
if %ver%==18 ECHO ####################################################
if %ver%==18 pause
if %ver%==18 cls  

:: DESACTIVAR BT 

if %ver%==19 adb devices
if %ver%==19 adb wait-for-device
if %ver%==19 adb root
if %ver%==19 adb shell service call bluetooth_manager 8
if %ver%==19 ECHO ####################################################
if %ver%==19 ECHO                    FINISHED 
if %ver%==19 ECHO ####################################################
if %ver%==19 pause
if %ver%==19 cls 

:: ACTIVAR BT 

if %ver%==20 adb devices
if %ver%==20 adb wait-for-device
if %ver%==20 adb wait-for-device
if %ver%==20 adb root
if %ver%==20 adb shell service call bluetooth_manager 6
if %ver%==20 cls 
if %ver%==20 ############################################################################### 
if %ver%==20                             FINISHED 
if %ver%==20 ###############################################################################
if %ver%==20 pause
if %ver%==20 cls 

::DESCATIVAR APP LIST 



if %ver%==21 adb devices
if %ver%==21 adb wait-for-device

if %ver%==21 adb wait-for-device
if %ver%==21 adb shell rm  sdcard/launcher_config.ini
if %ver%==21 cls
if %ver%==21 adb shell am force-stop com.huami.watch.launcher
if %ver%==21 cls 
if %ver%==21 msg %USERNAME% finished 
if %ver%==21 cls 
if %ver%==21 pause 
if %ver%==21 cls 



::apk

if %ver%==22 adb devices
if %ver%==22 adb wait-for-device
if %ver%==22 adb install "C:\V. 6\AMAZFIT\apps\calculadora.apk"
if %ver%==22 adb install "C:\V. 6\AMAZFIT\apps\Coin Flip-apk"
if %ver%==22 adb install "C:\V. 6\AMAZFIT\apps\File_Manager.apk"
if %ver%==22 adb install "C:\V. 6\AMAZFIT\apps\flappywear.apk
if %ver%==22 adb install "C:\V. 6\AMAZFIT\apps\linterna.apk"
if %ver%==22 adb install "C:\V. 6\AMAZFIT\apps\System_Info.apk"


goto :menu

f