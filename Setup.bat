@echo off
setlocal
@REM type nul > settings.json
set "srcdir=Code"
set "setupdir=SetupFiles"
if exist "%srcdir%" rmdir /s "%srcdir%"
for /F "tokens=*" %%I in ('chdir') do (
	set "mountdir=%%I"
)
mkdir %srcdir%
call "%setupdir%\makeConfig.bat"
set "mountdir=%mountdir:\=\\%" 
call "%setupdir%\makeSettings.bat"
mkdir "%srcdir%\.vscode"
mkdir "%srcdir%\BIN"
copy "%setupdir%\task.bat" "%srcdir%"
copy "%setupdir%\TURBOC.cbp" "%srcdir%"
copy "Config.conf" "%srcdir%"
copy "settings.json" "%srcdir%\.vscode"
copy "%setupdir%\tasks.json" "%srcdir%\.vscode"
copy "%setupdir%\Makefile" "%srcdir%"
copy Scripts\INIT.BAT ".\TURBOC3\BIN"
copy Scripts\RUN.BAT ".\TURBOC3\BIN"
copy Scripts\SETSRC.BAT ".\TURBOC3\BIN"
del settings.json
del Config.conf
echo Setup Has Completed
pause
endlocal
quit
