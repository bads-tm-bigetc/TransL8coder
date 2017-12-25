@echo off
@if defined E128DEBUGTOOL_DIRTY_DEBUGMODE (@echo on) else (@echo off)
:engine128
REM Made by bads.tm
REM Working on this since 2017 12 25
REM ENGINE128 is core to most bads.tm programs
set engine128.app.name=TransL8coder
set engine128.app.copyyear=2017
set engine128.firstdir=%cd%

set FilenameForUpdate=%~n0

:engine128.checkdepos
if exist %appdata%\bads.tm\engine128deps\engine128depos.e128 set engine128.deposplace=%appdata%\bads.tm\engine128deps\
set engineappwantstoread=%appdata%\bads.tm\engine128deps\engine128depos.e128
call %appdata%\bads.tm\engine128deps\readcstextension.dll

REM <-- PROGRAM CODE -->
%engine128.deposplace%\wget https://github.com/bads-tm-bigetc/TransL8coder/raw/master/batch/translationdatabase.bat
call translationdatabase.bat
