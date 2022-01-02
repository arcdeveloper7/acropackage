set /p ip=Ping : 
ping %ip% > Net.arc || goto fail

:valid
echo ==========================
echo          [Active]
echo [%ip%]

:info
echo ===========Info===========
ping %ip%
goto ext

:fail
echo ==========================
echo          [Error]
echo [%ip%] Not found
goto info

:ext
