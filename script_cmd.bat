@echo off
setlocal enabledelayedexpansion
set "targetDirectory=C:\Users\AppData\Local\Microsoft\Outlook"

for /d %%i in (C:\Users\*) do (
    if exist "%%i\AppData\Local\Microsoft\Outlook" (
        echo Deleting "%%i\AppData\Local\Microsoft\Outlook\Offline Address Books"
        rmdir /s /q "%%i\AppData\Local\Microsoft\Outlook\Offline Address Books"
    )
)

echo Completed.
