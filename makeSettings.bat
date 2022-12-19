type nul > settings.json
echo { > settings.json
echo.	"MOUNTDIR": "%mountdir%", >> settings.json
echo.	"SRCDIR": "%srcdir%", >> settings.json
echo.	"terminal.integrated.automationProfile.windows": { >> settings.json
echo.	"path": "${env:windir}\\System32\\cmd.exe", >> settings.json
echo.	"args": [ >> settings.json
echo.	], >> settings.json
echo.	"icon": "terminal-cmd" >> settings.json
echo.	} >> settings.json
echo } >> settings.json