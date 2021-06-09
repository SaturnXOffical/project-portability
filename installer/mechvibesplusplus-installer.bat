@echo off
echo Downloading Project Portability soundpacks...
powershell -Command "Invoke-WebRequest https://download853.mediafire.com/zs1uhgp172qg/hcl6bpwkodc7gsn/modifiable.zip -Outfile modifiable.zip"
echo Installing Project Portability soundpacks...
powershell -Command "Expand-Archive modifiable.zip -DestinationPath %UserProfile%\mechvibes_custom"
echo Restarting MechvibesPlusPlus
taskkill /f /im MechvibesPlusPlus
start %UserProfile%\AppData\Local\Programs\MechvibesPlusPlus\MechvibesPlusPlus.exe
echo Installation completed!
pause