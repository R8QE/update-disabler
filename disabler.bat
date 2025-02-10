@echo off
:: Disable Windows Update service
echo MAKE SURE TO RUN AS ADMIN OR ERROR
echo Disabling Windows Update...
timeout /t 4 /nobreak > nul
sc config wuauserv start= disabled
net stop wuauserv
echo Done.

:: Wait for 5 seconds before closing
timeout /t 5 /nobreak > nul
exit
