@echo off
if "%~1" == "" (start "" /min "%comspec%" /c "%~f0" any_word & exit /b)
set OUTPUT=nul
if "%STDOUT_REDIRECTED%" == "" (
set STDOUT_REDIRECTED=yes
cmd.exe /c %0 1>%OUTPUT% 2>%OUTPUT%
exit /b %ERRORLEVEL%
)

net stop BITS
net stop DoSvc
sc config DoSvc start=Disabled
sc config BITS start=Disabled
