@echo off
:menu
mode 1000
cls
color b
title MENU/HERAMIENTA DE AMAZFIT PACE Y STRATOS
title MENU/TOOL OF AMAZFIT PACE AND STRATOS 
echo. 
echo BIENVENIDO %USERNAME% 
ECHO.
ECHO put a number to select your idiom
ECHO pon un numero para seleccionar tu idioma
ECHO. ====================================================================================
ECHO = 1. castellano/spanish
ECHO = 2. english/ingles
ECHO = 3. Exit/Salir
====================================================================================
ECHO. 
SET /P ver= que quieres hacer/what do you want to do?..

::ESPAÑOL
if %ver%==1 (
    cls
    echo Lanzando la herramienta en español...
    start "" "%~dp0V.6\ES\V.6.1.bat"
    pause
    cls
    goto menu
)

::INGLES
if %ver%==2 (
    cls
    echo Launching the tool in English...
    start "" "%~dp0V.6\IN\V.6.1_IN.bat"
    pause
    cls
    goto menu
)

::SALIR
if %ver%==3 (
    cls
    echo Saliendo del menú...
    pause
    exit
)

goto menu
