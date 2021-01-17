@echo off
SETLOCAL EnableDelayedExpansion

set ZIP7=7z.exe
set ZIP_DIR=download
set PMZ_DIR=pmz
set MAPS_DIR=maps


del /q /f %ZIP_DIR%\* > nul

FOR /D %%G in ("%MAPS_DIR%\*") DO (
rem  %ZIP7% a -tzip -bb0 %PMZ_DIR%\%%~nxG.pmz .\%MAPS_DIR%\%%~nxG\*  > nul
  %ZIP7% a -tzip -bb0 %ZIP_DIR%\%%~nxG     .\%PMZ_DIR%\%%~nxG.pmz > nul
rem  del %PMZ_DIR%\%%~nxG.pmz
 )
