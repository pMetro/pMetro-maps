@echo off
SETLOCAL EnableDelayedExpansion

set ZIP7=C:\WinApps\7-Zip\7z.exe
set PMZ_DIR=pmz
set MAPS_DIR=maps

for /f %%F in ('dir /b %PMZ_DIR%\*.pmz') do (
  set FILENAME=%%F
  set OUT_DIR=%MAPS_DIR%\!FILENAME:~0,-4!
  mkdir !OUT_DIR!
  %ZIP7% x -bb0 -o!OUT_DIR! pmz\%%F > nul
  )
