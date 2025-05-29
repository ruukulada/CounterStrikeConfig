@echo off

echo.
echo Enter the installation directory, for example:
echo C:\Program Files (x86)\Steam\steamapps\common\Counter-Strike Global Offensive
echo.
set /p "Cs2Dir=Install location: "

set "CfgDir=%Cs2Dir%\game\csgo\cfg"
set "RepoDir=%~dp0"

mklink /D "%CfgDir%\movement"         "%RepoDir%\movement"
mklink    "%CfgDir%\autoexec.cfg"     "%RepoDir%\autoexec.cfg"
mklink    "%CfgDir%\listenserver.cfg" "%RepoDir%\listenserver.cfg"
mklink    "%CfgDir%\+jump.cfg"        "%RepoDir%\+jump.cfg"
mklink    "%CfgDir%\-jump.cfg"        "%RepoDir%\-jump.cfg"
