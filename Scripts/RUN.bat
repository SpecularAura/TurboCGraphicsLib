@echo off
cd C:\%SRCDIR%
make clean
rem -nBIN to specify output directory as bin
tcc -nBIN %SRC%.%FEXT% C:\TURBOC3\LIB\GRAPHICS.LIB > errlog.txt
if ERRORLEVEL GT 0 goto end
cls
BIN\%SRC%.exe
quit

:end
cls
color bright red on black
type errlog.txt
color bright white on black