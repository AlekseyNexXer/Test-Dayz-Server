@echo off
color 0a
title Server start
:start
echo Server has been started
start /wait server.bat
echo Server down,restarting!
goto start