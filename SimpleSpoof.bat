echo SimpleSpoof
@echo off
setlocal enabledelayedexpansion

set "folderPath=%localappdata%\Roblox

if exist "!folderPath!" (
    echo Spoofing folder: !folderPath!
    rmdir /s /q "!folderPath!"
    
    if errorlevel 1 (
        echo Error: Could not spoof the folder. Please check your permissions or path.
    ) else (
        echo Folder Spoofed successfully.
    )
) else (
    echo Error: The folder "!folderPath!" does not exist.
)

endlocal
pause