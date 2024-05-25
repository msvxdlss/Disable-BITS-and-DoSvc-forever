@echo off
set NEW_BAT_PATH=C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\DoSvc_BITS.bat
( echo @echo off
echo timeout /t 30 /nobreak >nul
echo net stop BITS
echo sc config BITS start=Disabled
echo net stop DoSvc
echo sc config DoSvc start=Disabled
) > "%NEW_BAT_PATH%"
