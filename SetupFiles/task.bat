@echo off
setlocal enabledelayedexpansion

rem Set the path to the file
set "file=Config.conf"

rem Clear the variables
set "MOUNTDIR="
set "SRCDIR="

rem Read the file line by line
for /f "usebackq tokens=1,2 delims==" %%a in ("%file%") do (
    rem Trim leading and trailing spaces from the values
    set "key=%%a"
    set "value=%%b"
    set "key=!key:~1,-1!"
    set "value=!value: =!"
    set "value=!value:~1,-1!"
    echo !key!
    echo !value!

    rem Check if the key matches and assign the value to the appropriate variable
    if "!key!"=="MOUNTDIR" set "MOUNTDIR=!value!"
    if "!key!"=="SRCDIR" set "SRCDIR=!value!"
)

rem Display the loaded variables
echo MOUNTDIR: %MOUNTDIR%
echo SRCDIR: %SRCDIR%
set "SRC=%~1"
for /f "tokens=1" %%I in ("%SRC%") do (
    set "FILE=%%~nxI"
)
echo "%FILE%"
call "%MOUNTDIR%\exec.bat" %MOUNTDIR% %FILE% %SRCDIR%
endlocal