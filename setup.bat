@echo off
echo. & echo.Enter the CS2 installation directory, for example:
echo.C:\Program Files (x86)\Steam\steamapps\common\Counter-Strike Global Offensive & echo.
set /p "Cs2Dir=Install location: "

set "CfgDir=%Cs2Dir%\game\csgo\cfg\"
set "GitDir=%~dp0"

echo. & echo.Linking ~ dir: & echo.  %CfgDir%~
echo     to & echo.  %GitDir%~
mklink /D "%CfgDir%~" "%GitDir%~"

echo. & echo.Linking AUTOEXEC.cfg: & echo.  %CfgDir%AUTOEXEC.cfg
echo     to & echo.  %GitDir%AUTOEXEC.cfg
mklink "%CfgDir%AUTOEXEC.cfg" "%GitDir%AUTOEXEC.cfg"

echo. & echo.Linking LISTENSERVER.cfg: & echo.  %CfgDir%LISTENSERVER.cfg
echo     to & echo.  %GitDir%LISTENSERVER.cfg
mklink "%CfgDir%LISTENSERVER.cfg" "%GitDir%LISTENSERVER.cfg" & echo.

echo Config install complete & echo. & pause
