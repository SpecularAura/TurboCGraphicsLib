@echo off
setlocal
set "mountdir=%1"
set "srcdir=%3"
echo %mountdir%
rem FOR /F "tokens=1,2* delims=." %%I IN ("%2") DO (
rem	set "filename=%%I"
rem	set "fileext=%%J"
rem )
set "filename=%2"
set "filename=%filename:"=%"
set "filename=%filename: =$%"
rem set "fileext=%fileext:"=%"
echo %2 %filename%.%fileext%
if exist "%~2" (
rem "%mountdir%\DOSBox-x\dosbox-x.exe" -defaultdir "%mountdir%" -c "MOUNT C '%mountdir%'" -c "C:\TURBOC3\BIN\INIT.BAT %filename% %fileext% %srcdir%" -nogui
"%mountdir:"=%\DOSBox-x\dosbox-x.exe" -defaultdir "%mountdir:"=%" -c "MOUNT C '%mountdir:"=%'" -c "C:\TURBOC3\BIN\INIT.BAT %filename% %srcdir%" -nogui
)
endlocal
