title login
call loginpack.bat || goto setup

:login
cls
call username.bat
call password.bat

set /p user=username : 
set /p pass=password : 

if %user% == %username% goto validatepass
goto login

:validatepass
if %pass% == %password% goto ext

goto login

:setup
cls
echo Set your username and pasword
set /p username=username : 
set /p password=password : 

echo set username=%username% > username.bat
echo set password=%password% > password.bat
echo echo [OK] > loginpack.bat
goto login

:ext