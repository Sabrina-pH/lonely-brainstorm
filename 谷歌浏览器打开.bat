@echo off
rem Open the showcase page in Google Chrome (falls back to default browser if Chrome is missing)
set "PAGE=%~dp0index.html"
set "CHROME=C:\Program Files\Google\Chrome\Application\chrome.exe"
if not exist "%CHROME%" set "CHROME=C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
if not exist "%CHROME%" set "CHROME=%LocalAppData%\Google\Chrome\Application\chrome.exe"
if not exist "%CHROME%" (
  start "" "%PAGE%"
  exit /b
)
start "" "%CHROME%" --new-window "%PAGE%"
