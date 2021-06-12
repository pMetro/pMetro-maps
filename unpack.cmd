@echo off
SETLOCAL EnableDelayedExpansion

set ZIP7=7z.exe
set PMZ_DIR=pmz
set MAPS_DIR=maps

rd /q/s %MAPS_DIR%
md %MAPS_DIR%

for /f %%F in ('dir /b %PMZ_DIR%\*.pmz') do (
  set FILENAME=%%F
  set OUT_DIR=%MAPS_DIR%\!FILENAME:~0,-4!
  md !OUT_DIR!
  %ZIP7% x -bb0 -o!OUT_DIR! pmz\%%F > nul
  )
