@echo off
setlocal
net session >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
  sudo "%~f0" %*
  exit /b
)

echo. & echo.Enter the CS2 installation directory, for example:
echo.C:\Program Files (x86)\Steam\steamapps\common\Counter-Strike Global Offensive & echo.
set /p "Cs2Dir=Install location: "

set "CfgDir=%Cs2Dir%\game\csgo\cfg\"
set "GitDir=%~dp0"

echo. & echo.Linking ~ dir:
echo.  %CfgDir%~
echo     to & echo.  %GitDir%~
mklink /D "%CfgDir%~" "%GitDir%~"

echo. & echo.Linking AUTOEXEC.cfg:
echo.  %CfgDir%AUTOEXEC.cfg
echo     to & echo.  %GitDir%AUTOEXEC.cfg
mklink "%CfgDir%AUTOEXEC.cfg" "%GitDir%AUTOEXEC.cfg"

echo.Config install complete & echo. & pause
