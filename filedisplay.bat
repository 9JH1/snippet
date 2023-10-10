@if (@CodeSection == @Batch) @then
@echo off & setlocal & setlocal EnableDelayedExpansion & color 0a && cd /d  E:\
SET SendKeys=CScript //nologo //E:JScript "%~F0"
%SendKeys% "{F11}" & rem if not "%1" == "max" start /MAX cmd /c %0 max & exit/b
:loop
for /f "delims=" %%i in ('dir /s ') do (
        echo  %%i
	timeout /t 1 >nul
    )
 goto loop




@end
// JScript section
var WshShell = WScript.CreateObject("WScript.Shell");
WshShell.SendKeys(WScript.Arguments(0));0
