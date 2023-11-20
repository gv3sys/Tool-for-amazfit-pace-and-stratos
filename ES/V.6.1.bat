@echo off
setlocal enabledelayedexpansion

:menu
mode 1000
cls
color b
title MENU/HERAMIENTA DE MODS Y MODIFICACIONES PARA LA AMAZFIT PACE Y STRATOS
echo.
echo BIENVENIDO !USERNAME!
ECHO.
ECHO Pon el número para ejecutar la acción deseada:
ECHO.
ECHO ===========================================================================
ECHO = 1. Reiniciar (apagar y encender) (funciona con la Stratos)
ECHO = 2. Subir el volumen del BT (Bluetooth) (funciona con la Stratos)
ECHO = 3. Salir
ECHO = 4. Comprobar el bootloader (funciona con la Stratos)
REM (Otras opciones aquí)
ECHO = 21. Desactivar la app list (funciona con la Stratos)
ECHO = 22. Instalar mi pack de apps
ECHO ===========================================================================
echo.
SET /P ver= ¿Qué quieres hacer?...

REM --- Acciones ---

:: REINICIAR
if !ver! == 1 (
    color 1
    cls 
    adb devices
    adb wait-for-device
    adb reboot
    cls
)

:: SUBIR NIVEL DEL BT
if !ver! == 2 (
    color 2
    cls 
    "%~dp0AMAZFIT\BATS\BT_boost.bat"
    cls
)

:: SALIR
if !ver! == 3 exit

:: COMPROBAR EL BOOTLOADER
if !ver! == 4 (
    color 3
    cls 
    adb devices
    adb wait-for-device 
    adb shell reboot bootloader
    fastboot getvar all
    msg !USERNAME! Ahora debe aparecer información. Busca "bootloader unlocked".
    pause
    cls
)

REM Agrega el resto de acciones aquí...

:: DESACTIVAR APP LIST
if !ver! == 21 (
    color 8
    cls 
    adb devices
    adb wait-for-device
    adb shell rm sdcard/launcher_config.ini
    adb shell am force-stop com.huami.watch.launcher
    msg !USERNAME! Tarea terminada.
    pause
    cls
)

:: INSTALAR MI PACK DE APPS
if !ver! == 22 (
    color C
    cls 
    adb devices
    adb wait-for-device
    adb install "%~dp0AMAZFIT\apps\calculadora.apk"
    REM (Añade más instalaciones aquí)
    msg !USERNAME! Aplicaciones instaladas con éxito.
    pause
    cls
)

goto :menu
