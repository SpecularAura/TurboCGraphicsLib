@echo off
setlocal
set CONF_FILE=Config.conf
type nul > %CONF_FILE%
echo."MOUNTDIR"="%mountdir%" >> %CONF_FILE%
echo."SRCDIR"="%srcdir%" >> %CONF_FILE% 
endlocal
