echo off
cd C:\%SRCDIR%
make clean
rem -nBIN to specify output directory as bin
tcc %SRC%.%FEXT% C:\TURBOC3\LIB\GRAPHICS.LIB && cls || goto end
%SRC%.exe
echo on

:end
cls
color bright red on black
tcc %SRC%.%FEXT% C:\TURBOC3\LIB\GRAPHICS.LIB
color bright white on black