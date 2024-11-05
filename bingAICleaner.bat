echo scripted by Bing AI - prompt="make me a batch file that is similar to ccleaner"
@echo off
REM Batch file to perform basic cleanup tasks

REM Clean temporary files
del /f /q C:\Windows\Temp\*.*
del /f /q C:\Users\%USERNAME%\AppData\Local\Temp\*.*

REM Clean browser cache (adjust paths as needed)
del /f /q "C:\Users\%USERNAME%\AppData\Local\Google\Chrome\User Data\Default\Cache\*.*"
del /f /q "C:\Users\%USERNAME%\AppData\Local\Mozilla\Firefox\Profiles\*\cache2\*.*"

REM Clean Recycle Bin
rd /s /q C:\$Recycle.Bin

REM Clean Windows logs (requires admin privileges)
wevtutil.exe cl Application
wevtutil.exe cl Security
wevtutil.exe cl Setup
wevtutil.exe cl System

REM Optimize disk (defragmentation)
defrag C: /O

REM Optional: Restart the computer
shutdown /r /t 0

echo Cleanup completed!
echo scripted by Bing AI - prompt="make me a batch file that is similar to ccleaner"
pause
