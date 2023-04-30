@echo off
setlocal
@REM type nul > settings.json
set "srcdir=Code"
if exist "%srcdir%" rmdir /s "%srcdir%"
for /F "tokens=*" %%I in ('chdir') do (
	set "mountdir=%%I"
)
set "mountdir=%mountdir:\=\\%" 
mkdir %srcdir%
call makeSettings.bat
@REM echo { > settings.json
@REM echo.	"MOUNTDIR": "%mountdir%", >> settings.json
@REM echo.	"SRCDIR": "%srcdir%", >> settings.json
@REM echo.	"terminal.integrated.automationProfile.windows": { >> settings.json
@REM echo.	"path": "${env:windir}\\System32\\cmd.exe", >> settings.json
@REM echo.	"args": [ >> settings.json
@REM echo.	], >> settings.json
@REM echo.	"icon": "terminal-cmd" >> settings.json
@REM echo.	} >> settings.json
@REM echo } >> settings.json
rem type settings.json
mkdir "%srcdir%\.vscode"
mkdir "%srcdir%\BIN"
copy settings.json "%srcdir%\.vscode"
copy tasks.json "%srcdir%\.vscode"
copy Makefile "%srcdir%"
copy Scripts\INIT.BAT ".\TURBOC3\BIN"
copy Scripts\RUN.BAT ".\TURBOC3\BIN"
copy Scripts\SETSRC.BAT ".\TURBOC3\BIN"
del settings.json
echo Setup Has Completed
pause
cmd /k "code Code"
endlocal
quit
