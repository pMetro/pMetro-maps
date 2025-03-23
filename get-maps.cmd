
set PMZ_DIR=pmz

del /q /f %PMZ_DIR%\* > nul
cd %PMZ_DIR%

certutil.exe -urlcache -split -f "https://pmetro.su/download/pMetroSetup.exe" pMetroSetup.exe

innoextract -se pMetroSetup.exe

move app\*.pmz .
rd /q/s app
del pMetroSetup.exe
