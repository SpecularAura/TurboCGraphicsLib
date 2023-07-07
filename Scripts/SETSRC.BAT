rem echo %1
rem set SEARCH=%@word[""",0,%1]
rem echo %SEARCH
rem FOR /F "tokens=4 delims= " %%I IN ('dir /K /M | ffind /T"%@word[""",0,%1].%FEXT" /K /M') DO set SRC=%%I
rem echo %SRC
rem FOR /F "tokens=1 delims=." %%A IN ('echo %SRC%') DO set SRC=%%A
set TEMP=%1
set FEXT=%@EXT[%@filename[%@SFN[%TEMP]]]
set SRC=%@WORD[".",0,%@filename[%@SFN[%TEMP]]]