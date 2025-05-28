@echo off

set "cfgDir=%ProgramFiles(x86)%\Steam\steamapps\common\Counter-Strike Global Offensive\game\csgo\cfg"

for /f "delims=" %%A in ('cd') do (
  mklink /D "%cfgDir%\movement" "%%A\movement"
  mklink /H "%cfgDir%\autoexec.cfg" "%%A\autoexec.cfg"
  mklink /H "%cfgDir%\listenserver.cfg" "%%A\listenserver.cfg"
  mklink /H "%cfgDir%\+jump.cfg" "%%A\+jump.cfg"
  mklink /H "%cfgDir%\-jump.cfg" "%%A\-jump.cfg"
)
