echo off 
:menu 
mode 1000
cls 
color b
title MENU/HERAMIENTA DE AMAZFIT PACE

adb push "C:\V. 6\supersu" /sdcard/
adb remount
msg %USERNAME% ahora con el click derecho tienes que pegar los comandos que se acaban de copiar en el porta papeles, PERO TEN CUIDADO tienes que poner uno por uno los comandos 
cls 
clip < "C:\V. 6\AMAZFIT\BATS\readme.txt"
cls
pause
adb shell  