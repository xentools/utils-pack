@ECHO OFF
rem command /C
set term=vt100
set home=C:\Util\lynx
set temp=%HOME%\tmp
set lynx_cfg=%HOME%\lynx.cfg
set lynx_lss=%HOME%\opaque.lss
%HOME%\lynx.exe %1 %2 %3 %4 %5
