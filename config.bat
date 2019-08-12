@ECHO OFF
:: This file reveals OS, hardware, and networking configuration.
TITLE My System Info
ECHO Please wait.. Checking system information
:: Section 1: OS Information
ECHO *********
ECHO OS INFO
ECHO *********
systeminfo | findstr /c:"OS Name"
systeminfo | findstr /c:"OS Version"
systeminfo | findstr /c:"System Type"
:: Section 2: HARDWARE INFORMATION
ECHO ****************
ECHO HARDWARE INFO
ECHO ****************
systeminfo | findstr /c:"Total Physical Memory"
wmic cpu get name
:: Section 3: NETWORK INFORMATION
ECHO ***************
ECHO NETWOK INFO
ECHO ***************
ipconfig | findstr IPv4
ipconfig | findstr IPv6
PAUSE