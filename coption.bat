color 1e
echo off
cls
:home
title ARC coption
echo setting up...
set "connection=[OK]"
set "disk=[OK]"
set "nmap=[OK]"
set "curl=[OK]"
set "interface=[OK]"
cls
echo Checking error [=             ] [1/5]
ping 8.8.8.8 > Data.arc || set "connection=[NO]"
choice /C:op /T "1" /D o /N > chace
cls
echo Checking error [====          ] [2/5]
echo p > Data.arc || set "disk=[NO]"
choice /C:op /T "1" /D o /N > chace
cls
echo Checking error [========      ] [3/5]
nmap www.google.com > Data.arc || set "nmap=[NO]"
choice /C:op /T "1" /D o /N > chace
cls
echo Checking error [============  ] [4/5]
curl --get www.github.com > Data.arc || set "curl=[NO]"
choice /C:op /T "1" /D o /N > chace
cls
echo Checking error [==============] [5/5]
ping 192.168.43.118  > Data.arc || set "interface=[NO]"
choice /C:op /T "1" /D o /N > chace
cls
echo Loading data [.   ]
choice /C:op /T "1" /D o /N > chace
cls
echo Loading data [..  ]
choice /C:op /T "1" /D o /N > chace
cls
echo Loading data [... ]
choice /C:op /T "1" /D o /N > chace
cls
echo Loading data [....]
choice /C:op /T "1" /D o /N > chace
cls
echo Parsing data [#...]
choice /C:op /T "1" /D o /N > chace
cls
echo Parsing data [##..]
choice /C:op /T "1" /D o /N > chace
cls
echo Parsing data [###.]
choice /C:op /T "1" /D o /N > chace
cls
echo Parsing data [####]
choice /C:op /T "1" /D o /N > chace
cls
echo ======================================
echo Internet connection %connection%
echo disk permission %disk%
echo nmap %nmap%
echo curl %curl%
echo wlan interface %interface%
echo ======================================
echo Done.
echo [Press any key to exit]
pause > Data.arc
goto termc

:termc
cd C:\Program Files\Acro
