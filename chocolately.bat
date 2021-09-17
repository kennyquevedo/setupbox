@echo off
CLS
set currentpath=%cd%
echo "Starting automatic file installation by chocolatey"
echo "Script needs to run in admin mode"
ECHO.
:MENU
ECHO ...............................................
ECHO PRESS 1 for COMMON APPS
ECHO PRESS 2 for OFFICE APPS
ECHO PRESS 3 for DEV APPS
ECHO PRESS 4 for UPGRADE APPS
ECHO PRESS 5 for EXIT
ECHO ...............................................
ECHO.
ECHO 1 - Basic apps
ECHO 2 - Office apps
ECHO 3 - Chocolatey
ECHO 4 - Upgrade apps
ECHO 5 - EXIT
ECHO.


SET /P M=Type 1, 2, 3, or 4 then press ENTER:
IF %M%==1 GOTO COMMON
IF %M%==2 GOTO OFFICE
IF %M%==3 GOTO DEV
IF %M%==4 GOTO UPG
IF %M%==5 GOTO EOF


REM developer tools
:FIR
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
choco feature enable -n allowGlobalConfirmation
choco upgrade chocolatey
ECHO ...............................................
ECHO A RESTART OF THE BATCH FILE IS MAYBE NECESSARY!!
ECHO ...............................................
ECHO ...............................................
GOTO MENU


:COMMON
REM basic apps
choco install %currentpath%\commonapps.config
ECHO commonapps installation completed.
GOTO MENU


:OFFICE
REM basic apps
choco install %currentpath%\officeapps.config
ECHO officeapps installation completed.
GOTO MENU


:DEV
REM developer tools
choco install %currentpath%\devapps.config   
ECHO devapps installation completed.
GOTO MENU


:UPG
choco upgrade all
GOTO MENU


:EOF