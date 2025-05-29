@echo off

echo.
echo Enter the installation directory, for example:
echo C:\Program Files (x86)\Steam\steamapps\common\Counter-Strike Global Offensive
echo.
set /p "Cs2Dir=Install location: "

set "CfgDir=%Cs2Dir%\game\csgo\cfg"
set "RepoDir=%~dp0"

mklink /J "%CfgDir%\movement"         "%RepoDir%\movement"
mklink /H "%CfgDir%\autoexec.cfg"     "%RepoDir%\autoexec.cfg"
mklink /H "%CfgDir%\listenserver.cfg" "%RepoDir%\listenserver.cfg"
mklink /H "%CfgDir%\+jump.cfg"        "%RepoDir%\+jump.cfg"
mklink /H "%CfgDir%\-jump.cfg"        "%RepoDir%\-jump.cfg"
