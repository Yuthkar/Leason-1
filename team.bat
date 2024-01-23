@echo off
setlocal enabledelayedexpansion

cd C:\Users

for /d %%A in (*) do (
    set "user=%%A"
    
    REM Check if Teams is running for the user
    tasklist /fi "imagename eq Teams.exe" /fi "username eq !user!" 2>nul | find /i "Teams.exe" >nul
    if errorlevel 1 (
        if exist "C:\Users\!user!\AppData\Local\Microsoft\Teams\current\" (
            rd /s /q "C:\Users\!user!\AppData\Local\Microsoft\Teams\current\"
            echo Removed: !user!
        ) else (
            echo Not found: !user!
        )
    ) else (
        echo Teams is running for !user!. Please close Teams and run the script again.
    )
)

endlocal
