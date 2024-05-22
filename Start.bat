@echo off
set NEW_BAT_PATH=C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\DoSvc_BITS.bat
( echo @echo off
echo net stop BITS
echo sc config BITS start=Disabled
echo net stop DoSvc
echo sc config DoSvc start=Disabled
echo net stop UsoSvc
echo sc config UsoSvc start=Disabled ) > "%NEW_BAT_PATH%"
