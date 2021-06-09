@echo off
echo Downloading Project Portability soundpacks...
powershell -Command "Invoke-WebRequest https://download853.mediafire.com/zs1uhgp172qg/hcl6bpwkodc7gsn/modifiable.zip -Outfile modifiable.zip"
echo Installing Project Portability soundpacks...
powershell -Command "Expand-Archive modifiable.zip -DestinationPath %UserProfile%\mechvibes_custom"
echo Restarting Mechvibes
taskkill /f /im Mechvibes
start %UserProfile%\AppData\Local\Programs\MechvibesPlusPlus\Mechvibes.exe
echo Installation completed!
pause