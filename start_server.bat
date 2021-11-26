@ echo off
pushd %~dp0
cd /d %CD%
taskkill /f /im bec.exe
taskkill /f /im DayZServer_x64.exe
ping 127.0.0.1 -n 2 >NUL

rem ***if you are using a different map, then call a different batch file below.
call startserver.bat

ping 127.0.0.1 -n 2 >NUL
cd "D:\DayzServer\server_tools\Bec"
start /min Bec.exe -f "Config.cfg"
ping 127.0.0.1 -n 2 >NUL
exit
