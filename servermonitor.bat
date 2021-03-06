@echo off
title DayzServer Monitor

:start
C:\Windows\System32\tasklist /FI "IMAGENAME eq DayZServer_x64.exe" 2>NUL | C:\Windows\System32\find /I /N "DayZServer_x64.exe">NUL
if "%ERRORLEVEL%"=="0" goto loop
cls
echo Server is not running, restarting... 
start "Restarting Server" /wait "D:\DayzServer\startserver.bat"
echo Server started succesfully, switching to monitor loop
timeout 30
cls
goto started

:loop
cls
echo Server is running, continuing with monitoring loop...
:started

taskkill /f /im WerFault.exe /fi "WINDOWTITLE eq ArmA 2 OA">NUL
C:\Windows\System32\timeout /t 20
C:\Windows\System32\tasklist /FI "IMAGENAME eq DayZServer_x64.exe" 2>NUL | C:\Windows\System32\find /I /N "DayZServer_x64.exe">NUL
if "%ERRORLEVEL%"=="0" goto loop
goto start
