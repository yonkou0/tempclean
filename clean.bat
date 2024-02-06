
@echo off
echo Cleaning up temporary files...

:: Clear the system temp folder
echo Cleaning system %temp% folder...
del /q /f /s "%temp%\*"
for /d %%p in ("%temp%\*.*") do rmdir "%%p" /s /q

:: Clear the Windows temp folder
echo Cleaning Windows temp folder...
del /q /f /s "%windir%\Temp\*"
for /d %%p in ("%windir%\Temp\*.*") do rmdir "%%p" /s /q

:: Clear the Prefetch folder
echo Cleaning Prefetch folder...
del /q /f /s "%windir%\Prefetch\*"

echo Cleanup complete.
pause
