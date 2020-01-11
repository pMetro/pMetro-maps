@echo off
SETLOCAL EnableDelayedExpansion

set ZIP7=7z.exe
set ZIP_DIR=download
set MAPS_DIR=maps


del /qf %ZIP_DIR%\* > nul

FOR /D %%G in ("%MAPS_DIR%\*") DO (
  %ZIP7% a -tzip -bb0 %ZIP_DIR%\%%~nxG.pmz .\%MAPS_DIR%\%%~nxG\*  > nul
  %ZIP7% a -tzip -bb0 %ZIP_DIR%\%%~nxG     .\%ZIP_DIR%\%%~nxG.pmz > nul
  del %ZIP_DIR%\%%~nxG.pmz
 )
