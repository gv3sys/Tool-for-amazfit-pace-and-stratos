echo off 
:menu 
mode 1000
cls 
color b
title MENU/HERAMIENTA DE MODS Y MODIFICACIONES PARA LA  AMAZFIT PACE Y STRATOS 
echo. 
echo BIENVENIDO %USERNAME% 
ECHO.
ECHO pon los difrentes numeros que aparecen para ejecutar una cosa o otra
ECHO. 
ECHO SI NO PONE QUE FUNCINA CON LA STRATOS NO LO PROBEIS SE OS PUEDE UNBRIKEAR EL RELOJ SI 
ECHO LO HACEIS 
ECHO ====================================================================================
ECHO = 1. reiniciar (apagar y encender) (funciona con la stratos)
ECHO = 2. subir el volumen del BT (bt= bluetooth) (funciona con la stratos)
ECHO = 3. SALIR == 
ECHO = 4. comprobar que el bootloader== (funciona con la stratos)
ECHO = 5. desactivar wifi (room traducida o con root ) 
ECHO = 6. activar wifi (room traducida o con root) (funciona con la stratos)
ECHO = 7. salir del modo fastboot (funciona con la stratos)
ECHO = 8. mostrar el codigo qr sin formatear el reloj (room traducida o con root)(funciona con la stratos)
ECHO = 9. activar lista de aplicaciones (funciona con la stratos)
ECHO = 10. poner el nivel del brillo "customizado" 
ECHO = 11. lista de dispositivos conectados (funciona con la stratos)
ECHO = 12. version de la herramienta 
ECHO = 13. creditos
ECHO = 14. permitir instalaciones en el reloj (funciona con la stratos)
ECHO = 15. borrar cache (cache=basura) 	(funciona con la stratos)
ECHO = 16. poner/instalar root temporal para adb 
ECHO = 17. poner/instalar  root temporal para apps
ECHO = 18. formatear el reloj (borrarlo todo) (funciona con la stratos)
ECHO = 19. desactivar el BT (bt= bluetooth) (SOLO funciona con la stratos)
ECHO = 20. activar el BT (bt= bluetooth) (SOLO funciona con la stratos)
ECHO = 21. desactivar la app list (funciona con la stratos)
ECHO = 22. instalar mi pack de apps 
====================================================================================
ECHO. 
SET /P ver= que quieres hacer?...

::REINICIAR 

if %ver%==1 color 1
if %ver%==1 cls 
if %ver%==1 adb devices
if %ver%==1 adb wait-for-device
if %ver%==1 adb reboot
if %ver%==1 cls

::SUBIR NIVEL DEL BT

if %ver%==2 color 2
if %ver%==2 cls 
if %ver%==2 "C:\V. 6\AMAZFIT\BATS\BT_boost.bat""
if %ver%==2 cls

::SALIR

if %ver%==3 start msg * adios
if %ver%==3 goto f
 
::COMPROBAR EL BOOTLOADER


if %ver%==4 color 3
if %ver%==4 cls 
if %ver%==4 adb devices
if %ver%==4 adb wait-for-device 
if %ver%==4 adb shell reboot bootloader
if %ver%==4 fastboot getvar all
if %ver%==4 msg %USERNAME% ahora tine que salir un monton de informacion, buscad donde pone: bootloader unlocked, si al lado os pone yes quiere decir que lo teneis desbloqueado, si os sale no, quiere decir que lo teneis bloqueado
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
if %ver%==6 adb device 
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
if %ver%==7 msg %USERNAME% si no se quita el modo fastboot lo que podeis hacer es mantener pulsado el boton de apagado unos segundos, hasta que la pantalla se apage, una vez se apage la pantalla lo que teneis que hacer es iniciar el reloj ,normal, pulsar el boton de incio/apagado y ya esta
if %ver%==7 cls
if %ver%==7 fastboot reboot
if %ver%==7 cls

::ACTIVAR CODIGO QR


if %ver%==8 color 7
if %ver%==8 cls 
if %ver%==8 adb devices
if %ver%==8 adb wait-for-device
if %ver%==8 adb shell am start -n com.huami.watch.setupwizard/.InitPairQRActivity
if %ver%==8 msg %USERNAME% ahora tine que aparecer el codigo qr en la pantalla del reloj
if %ver%==8 cls

:: ACTIVAR APP LIST 


if %ver%==9 color 8
if %ver%==9 cls 
if %ver%==9 clip < "C:\V. 6\AMAZFIT\BATS\readme_2.txt"
if %ver%==9 cls 
if %ver%==9 msg %USERNAME% se acaban de copiar los comandos en portapapeles lo unico que tienes que hacer es click derecho y darle a la opcion pegar, a para salir del adb shell tienes que poner el comando exit
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
if %ver%==10 msg %USERNAME% se acaban de copiar los coamandos en el porta papeles lo unico que tienes que hacer es: click derecho y darle a la opcion copiar
if %ver%==10 msg %USERNAME% donde pone las dos X tines que poner un numero entre el 0 (el minimo) y el 255 (el maximo), (P.D: el nivel de luminosidad por defecto es 60)
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
if %ver%==12 msg %USERNAME% la version es la 6.1
if %ver%==12 pause
if %ver%==12 cls

::CREDITOS 


if %ver%==13 color C
if %ver%==13 cls 
if %ver%==13 msg %USERNAME% menu/herramienta para amazfit pace hecho por gv3.sys
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
if %ver%==14 msg %USERNAME% ya le puedes instalara al reloj apks sin el ordenador
if %ver%==14 cls 
if %ver%==14 pause 

::CACHES

if %ver%==15 "C:\V. 6\AMAZFIT\BATS\cache.bat"
if %ver%==15 cls 

:: ROOT ADB
 
if %ver%==16 "C:\V. 6\AMAZFIT\BATS\root_adb.bat"
if %ver%==16 cls


:: ROOT APPS

if %ver%==17 adb devices
if %ver%==17 adb wait-for-device
if %ver%==17 adb push "C:\V. 6\supersu" /sdcard/
if %ver%==17 adb root
if %ver%==17 adb remount
if %ver%==17 msg %USERNAME% ahora con el click derecho tienes que pegar los comandos que se acaban de copiar en el porta papeles
if %ver%==17 cls 
if %ver%==17 clip < "C:\V. 6\AMAZFIT\BATS\readme.txt"
if %ver%==17 msg %USERNAME% para salir del modo shell teneis que poner esto: exit 
if %ver%==17 cls 
if %ver%==17 pause 
if %ver%==17 adb shell




:: FORMATEAR EL RELOJ 

if %ver%==18 ECHO ##########################################################################
if %ver%==18 ECHO CUIDADO HACER ESTO NO TIENE MARCHA ATRAS, BORRARAS TODO LO QUE TIENES EN
if %ver%==18 ECHO EL RELOJ (LOS DATOS DE SALUD LAS APPS QUE LE HAYAS INSTALADO, EL CACHE...)
if %ver%==18 ECHO ESTAS SEGUR@ DE QUE QUIERES FORMATEAR EL RELOJ? ESTO NO SE PUDE DESACER
if %ver%==18 ECHO Y SI ESTAS SEGURO NO DESCONECTES EL RELOJ VAJO NINGUNA SITUACION 
if %ver%==18 ECHO ##########################################################################
if %ver%==18 pause 
if %ver%==18 msg %USERNAME% ESTAS SEGUR@ DE QUE QUIERES HACERLO????
if %ver%==18 cls 
if %ver%==18 pause
if %ver%==18 msg %USERNAME% ESTAS SEGUR@, SI ES QUE SI CONTINUA????
if %ver%==18 cls 
if %ver%==18 pause  
if %ver%==18 adb wait-for-device 
if %ver%==18 adb shell reboot bootloader
if %ver%==18 fastboot devices
if %ver%==18 fastboot erase data
if %ver%==18 fastboot erase cache
if %ver%==18 fastboot reboot  
if %ver%==18 ECHO ####################################################
if %ver%==18 ECHO          TAREA TERMINADA 
if %ver%==18 ECHO ####################################################
if %ver%==18 pause
if %ver%==18 cls  

:: DESACTIVAR BT 

if %ver%==19 adb devices
if %ver%==19 adb wait-for-device
if %ver%==19 adb root
if %ver%==19 adb shell service call bluetooth_manager 8
if %ver%==19 cls 
if %ver%==19 ECHO ####################################################
if %ver%==19 ECHO                    TAREA TERMINADA 
if %ver%==19 ECHO ####################################################
if %ver%==19 pause
if %ver%==19 cls 

:: ACTIVAR BT 

if %ver%==20 adb devices
if %ver%==20 adb wait-for-device
if %ver%==20 adb root
if %ver%==20 adb shell service call bluetooth_manager 6
if %ver%==20 ECHO ############################################################################### 
if %ver%==20 ECHO                            TAREA TERMINADA 
if %ver%==20 ECHO ###############################################################################
if %ver%==20 pause
if %ver%==20 cls 

::DESCATIVAR APP LIST 



if %ver%==21 adb devices
if %ver%==21 adb wait-for-device
if %ver%==21 adb shell rm  sdcard/launcher_config.ini
if %ver%==21 adb shell am force-stop com.huami.watch.launcher
if %ver%==21 msg %USERNAME% tarea terminada 
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
