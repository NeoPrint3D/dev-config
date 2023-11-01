




@Rem Pushes the configuration to the local nvim folder.
@echo off
setlocal

set "SOURCE_DIR=%UserProfile%/dev-config/nvim"
set "TARGET_DIR=%UserProfile%/AppData/Local/nvim"

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
