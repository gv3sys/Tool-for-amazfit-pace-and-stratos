echo off 
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
ECHO pon un numero paea selecionar tu idioma
ECHO. ====================================================================================
ECHO = 1. castellano/spanish
ECHO = 2. english/ingles
====================================================================================
ECHO. 
SET /P ver= que quieres hacer/what you won to do?..
::ESPAÑOL

if %ver%==1 "C:\V. 6\ES\V.6.1.bat"
if %ver%==1 cls

::INGLES

if %ver%==2 "C:\V. 6\IN\V.6.1_IN.bat"
if %ver%==2 cls

