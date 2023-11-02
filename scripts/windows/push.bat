




@Rem Pushes the configuration to the local nvim folder.
@echo off
setlocal




echo Pushing configuration to local nvim folder...
set "SOURCE_DIR=%UserProfile%/dev-config/nvim/lua/custom"
set "TARGET_DIR=%UserProfile%/AppData/Local/nvim/lua/custom"

if exist "%TARGET_DIR%" (
    echo Folder "%TARGET_DIR%" already exists.
    choice /M "Do you want to replace it"
    if errorlevel 2 goto :EOF
    xcopy /S /I /Q /Y "%SOURCE_DIR%" "%TARGET_DIR%"
) else (
    xcopy /S /I /Q /Y "%SOURCE_DIR%" "%TARGET_DIR%"
)

echo Operation completed.
endlocal



echo Pushing PowerShell settings to local nvim folder...
set "SOURCE_DIR=%UserProfile%/dev-config/windows/powershell-settings.ps1"
set "TARGET_DIR=%UserProfile%/Documents/WindowsPowerShell/Microsoft.PowerShell_profile.ps1"

if exist "%TARGET_DIR%" (
    echo Folder "%TARGET_DIR%" already exists.
    choice /M "Do you want to replace it"
    if errorlevel 2 goto :EOF
    xcopy /S /I /Q /Y "%SOURCE_DIR%" "%TARGET_DIR%"
) else (
    xcopy /S /I /Q /Y "%SOURCE_DIR%" "%TARGET_DIR%"
)

echo Operation completed.
endlocal


echo Pushing PowerShell settings to local nvim folder...
set "SOURCE_DIR=%UserProfile%/dev-config/windows/powershell-settings.ps1"
set "TARGET_DIR=%UserProfile%/AppData/Local/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/LocalState/settings.json

if exist "%TARGET_DIR%" (
    echo Folder "%TARGET_DIR%" already exists.
    choice /M "Do you want to replace it"
    if errorlevel 2 goto :EOF
    xcopy /S /I /Q /Y "%SOURCE_DIR%" "%TARGET_DIR%"
) else (
    xcopy /S /I /Q /Y "%SOURCE_DIR%" "%TARGET_DIR%"
)

echo Operation completed.
endlocal



