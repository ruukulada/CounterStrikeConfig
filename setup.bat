@echo off

echo.
echo Enter the CS2 installation directory, for example:
echo C:\Program Files (x86)\Steam\steamapps\common\Counter-Strike Global Offensive
echo.
set /p "Cs2Dir=Install location: "

set "CfgDir=%Cs2Dir%\game\csgo\cfg"
set "RepoDir=%~dp0"

echo.
echo Copying ~: mklink /D "%CfgDir%\~" "%RepoDir%~"
mklink /D "%CfgDir%\~" "%RepoDir%~"
echo Copying MOVEMENT: mklink /D "%CfgDir%\MOVEMENT" "%RepoDir%MOVEMENT"
mklink /D "%CfgDir%\MOVEMENT" "%RepoDir%MOVEMENT"
echo Copying AUTOEXEC.cfg: mklink "%CfgDir%\AUTOEXEC.cfg" "%RepoDir%AUTOEXEC.cfg"
mklink "%CfgDir%\AUTOEXEC.cfg" "%RepoDir%AUTOEXEC.cfg"
echo Copying LISTENSERVER.cfg: mklink "%CfgDir%\LISTENSERVER.cfg" "%RepoDir%LISTENSERVER.cfg"
mklink "%CfgDir%\LISTENSERVER.cfg" "%RepoDir%LISTENSERVER.cfg"
echo.

echo Config install complete
