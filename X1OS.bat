@echo off
Mode 52,16
chcp 65001>nul
set Version=3
set "logospacing=       "
set green=[0;32m
set yellow=[93m
set lime=[0;92m
set red=[0;91m
set reset=[0m
set bold=[1m
set white=[97m
set cyan=[36m
set aqua=[96m
set blue=[34m
set grey=[90m
set magenta=[40;35m
set pink=[38;5;13m
IF NOT EXIST "tmp.uif" (
    echo >> tmp.uif
    goto start
) ELSE (
    goto skip_admin313212
)
:start
cls && PING 1.1.1.1 -n 1 -w 500 >NUL
title X1-OS
echo %lime% %logospacing% Yb  dP   .d           dP"Yb  .dP"Y8
echo %lime% %logospacing%  YbdP  .d88 ________ dP   Yb `Ybo." 
echo %lime% %logospacing%  dPYb    88 """""""" Yb   dP o.`Y8b 
echo %lime% %logospacing% dP  Yb   88           YbodP  8bodP'
timeout /t 1 /nobreak >nul && echo %logospacing% %grey% [          %aqua%X%Version%%reset%-%aqua%OS %red%MALWARE%grey%          ] &echo.&echo.&echo.&echo.&echo.&echo.&echo.&echo.&echo.&echo.&title X1-OS MALWARE
timeout /t 1 /nobreak >nul && cls & title X1-OS MALWARE Ver.%Version%
echo %lime% %logospacing% Yb  dP   .d           dP"Yb  .dP"Y8
echo %lime% %logospacing%  YbdP  .d88 ________ dP   Yb `Ybo." 
echo %lime% %logospacing%  dPYb    88 """""""" Yb   dP o.`Y8b 
echo %lime% %logospacing% dP  Yb   88           YbodP  8bodP'%reset% ver.%red%%Version%
echo %logospacing% %grey% [          %aqua%X%Version%%reset%-%aqua%OS %red%MALWARE%grey%          ]&echo.
title X1-OS MALWARE                            ver.%Version%
echo.
timeout /t 4 /nobreak >nul
:: logo ^^^^
::Get Admin Rights
whoami /priv | find "SeDebugPrivilege" >nul
if %errorlevel% == 0 (
    echo                   %red%Admin %grey%activated%reset%
    echo.
    timeout /t 1 /nobreak >nul 
    Call:InputPassword	 "________________Enter Admin Password________________" usr_pwd	
    goto skip_admin313212
) else (
    echo                      No %red%Admin? 
	timeout /t 3 /nobreak >nul 
	echo                	 %grey%requesting %red%Admin...%reset%
)
goto jumpadmin
:InputPassword
set "psCommand=powershell -Command "$pword = read-host '%1' -AsSecureString ; ^
    $BSTR=[System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($pword); ^
      [System.Runtime.InteropServices.Marshal]::PtrToStringAuto($BSTR)""
        for /f "usebackq delims=" %%p in (`%psCommand%`) do set %2=%%p
:jumpadmin
::Get Admin Rights
rmdir %SystemDrive%\Windows\system32\adminrightstest >nul 2>&1
mkdir %SystemDrive%\Windows\system32\adminrightstest >nul 2>&1
if %errorlevel% neq 0 (
echo.&echo.&echo            *Run X1-OS MALWARE as Admin*
timeout /t 5 /nobreak >nul
powershell -NoProfile -NonInteractive -Command start -verb runas "'%~s0'" >nul 2>&1
if !errorlevel! equ 0 exit /b
timeout /t 1 /nobreak >nul
exit /b
)
:skip_admin313212
title X1-OS MALWARE
:Check_For_Internet
Ping www.google.nl -n 1 -w 1000 >nul
if %errorlevel% neq 0 (
echo.
cls & echo. & echo. & echo. & echo. &echo               %red%No %grey%Internet Connection :(%reset%
timeout /t 3
exit /b
)
cls && PING 1.1.1.1 -n 1 -w 500 >NUL
title X1-OS
:other_start
echo %lime% %logospacing% Yb  dP   .d           dP"Yb  .dP"Y8
echo %lime% %logospacing%  YbdP  .d88 ________ dP   Yb `Ybo." 
echo %lime% %logospacing%  dPYb    88 """""""" Yb   dP o.`Y8b 
echo %lime% %logospacing% dP  Yb   88           YbodP  8bodP'
timeout /t 1 /nobreak >nul && echo %logospacing%%grey% [          %aqua%X%Version%%reset%-%aqua%OS %red%MALWARE%grey%          ] &echo.&echo.&echo.&echo.&echo.&echo.&echo.&echo.&echo.&echo.&title X1-OS MALWARE
timeout /t 1 /nobreak >nul && cls & title X1-OS MALWARE Ver.%Version%
echo %lime% %logospacing% Yb  dP   .d           dP"Yb  .dP"Y8
echo %lime% %logospacing%  YbdP  .d88 ________ dP   Yb `Ybo." 
echo %lime% %logospacing%  dPYb    88 """""""" Yb   dP o.`Y8b 
echo %lime% %logospacing% dP  Yb   88           YbodP  8bodP'%reset% ver.%red%%Version%
echo %logospacing% %grey% [          %aqua%X%Version%%reset%-%aqua%OS %red%MALWARE%grey%          ]&echo.
title X1-OS MALWARE                            ver.%Version%
echo.
timeout /t 4 /nobreak >nul
set "item___1=mild_run"
set "item___2=hard_run"
set "item___3=show_src"
set "item___4=show_dev"
set "item___5=hash_str"
set "item___6=open_fle"
set "item___7=show_cpt"
set "item___8=wifI_chk"
set "page=1"
:page
cls
echo %lime% %logospacing% Yb  dP   .d           dP"Yb  .dP"Y8
echo %lime% %logospacing%  YbdP  .d88 ________ dP   Yb `Ybo." 
echo %lime% %logospacing%  dPYb    88 """""""" Yb   dP o.`Y8b 
echo %lime% %logospacing% dP  Yb   88           YbodP  8bodP'%reset% ver.%red%%Version%
echo %logospacing% %grey% [          %aqua%X%Version%%reset%-%aqua%OS %red%MALWARE%grey%          ]&echo.
title X1-OS MALWARE                            ver.%Version%
echo %grey%" +----------------------------------------------+ "
echo %grey%" |                 made by 3hy                  | "
echo %grey%" +----------------------------------------------+ "
echo %grey%" |  [1] %red%%item___1%%grey%        | Manufacturer: %lime%X-OS%grey%    | "
echo %grey%" |  [2] %red%%item___2%%grey%        | Page: %red%1%grey%               | "
echo %grey%" |  [3] %red%%item___3%%grey%        | Day: %red%%DATE%%reset%   | "
echo %grey%" |  [4] %red%%item___4%%grey%        | Made For %lime%X3%reset%-%lime%OS%grey% system | "
echo %grey%" +----------------------------------------------+ " 
choice /c:"Q1234" /n /m "                        Use Q to navigate "
if '%errorlevel%''=='1' goto page1
if '%errorlevel%''=='2' goto mild_run
if '%errorlevel%''=='3' goto hard_run
if '%errorlevel%''=='4' goto show_src
if '%errorlevel%''=='5' goto show_dev
goto page1
:page1
set "page=2"
cls & title X1-OS MALWARE Ver.%Version%
echo %lime% %logospacing% Yb  dP   .d           dP"Yb  .dP"Y8
echo %lime% %logospacing%  YbdP  .d88 ________ dP   Yb `Ybo." 
echo %lime% %logospacing%  dPYb    88 """""""" Yb   dP o.`Y8b 
echo %lime% %logospacing% dP  Yb   88           YbodP  8bodP'%reset% ver.%red%%Version%
echo %logospacing% %grey% [          %aqua%X%Version%%reset%-%aqua%OS %red%MALWARE%grey%          ]&echo.
title X1-OS MALWARE                            ver.%Version%
echo %grey%" +----------------------------------------------+ "
echo %grey%" |                 made by 3hy                  | "
echo %grey%" +----------------------------------------------+ "
echo %grey%" |  [4] %red%%item___5%%grey%        | Manufacturer: %lime%X-OS%grey%    | "
echo %grey%" |  [5] %red%%item___6%%grey%        | Page: %red%2%grey%               | "
echo %grey%" |  [6] %red%%item___7%%grey%        | Day: %red%%DATE%%reset%   | "
echo %grey%" |  [7] %red%%item___8%%grey%        | Made For %lime%X3%reset%-%lime%OS%grey% system | "
echo %grey%" +----------------------------------------------+ " 
choice /c:"Q1234" /n /m "                        Use Q to navigate "
if '%errorlevel%''=='1' goto page
if '%errorlevel%''=='2' goto hash_str
if '%errorlevel%''=='3' goto open_fle
if '%errorlevel%''=='4' goto show_cpt
if '%errorlevel%''=='5' goto wifi_chk
goto page
