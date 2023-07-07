C:
set PATH="C:\TURBOC3\BIN"
rem set SRCDIR="%3"
set SRCDIR="%2"
cd %SRCDIR%
rem set FEXT=%2
rem set SRC=%1
set TEMP="%1"
echo %TEMP
set TEMP=%@replace[$, ,%TEMP]
set FEXT=%@EXT[%@filename[%@SFN[%TEMP]]]
set SRC=%@WORD[".",0,%@filename[%@SFN[%TEMP]]]
rem call SETSRC.bat %TEMP
RUN.BAT