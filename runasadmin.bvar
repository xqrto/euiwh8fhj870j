
@echo off
if "%1"=="--help" goto help
powershell -Command "Start-Process '%~2' -Verb runAs"
goto end
:help
 echo Usage: runasadmin.bat --run <file>
 echo Starts a file with admin rights.
:end
