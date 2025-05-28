@echo off

echo.
echo Enter the installation directory, for example:
echo C:\Program Files (x86)\Steam\steamapps\common\Counter-Strike Global Offensive
echo.
set /p "InstallDir=Install location: "

set "CfgDir=%InstallDir%\game\csgo\cfg"

for /f "delims=" %%A in ('cd') do (
  mklink /D "%CfgDir%\movement" "%%A\movement"
  mklink /H "%CfgDir%\autoexec.cfg" "%%A\autoexec.cfg"
  mklink /H "%CfgDir%\listenserver.cfg" "%%A\listenserver.cfg"
  mklink /H "%CfgDir%\+jump.cfg" "%%A\+jump.cfg"
  mklink /H "%CfgDir%\-jump.cfg" "%%A\-jump.cfg"
)
