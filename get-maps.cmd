
set PMZ_DIR=pmz

rmdir /q/s %PMZ_DIR%
mkdir %PMZ_DIR%
cd %PMZ_DIR%

certutil.exe -urlcache -split -f "http://pmetro.chpeks.com/download/pMetroSetup.exe" pMetroSetup.exe

innoextract -se pMetroSetup.exe

move app\*.pmz .
rmdir /q/s app
del pMetroSetup.exe
