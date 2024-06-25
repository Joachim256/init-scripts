@echo off
powershell -ep bypass -file H:\scripts\main.ps1

if NOT "%~1"=="" (
    echo Running %1...
    %1
    echo ---
)
if NOT "%~2"=="" (
    echo Running %2...
    %2
    echo ---
)

pause
exit