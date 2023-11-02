@echo off

:: Set PowerShell execution policy to bypass for the current process
powershell -Command "Set-ExecutionPolicy Bypass -Scope Process -Force"

:: Set the security protocol to TLS 1.2 and install Chocolatey
powershell -Command "[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))"

:: Update the Path environment variable
powershell -Command "$env:Path = [System.Environment]::GetEnvironmentVariable('Path','Machine') + ';' + [System.Environment]::GetEnvironmentVariable('Path','User')"

:: Enable global confirmation for Chocolatey
powershell -Command "choco feature enable -n=allowGlobalConfirmation"

:: Prompt the user to enter the package type
:package_type_prompt
set /p package_type=Enter package type (full/slim):

:: Copy the appropriate config file based on the package type
if /i "%package_type%"=="full" (
    powershell -Command "copy %USERPROFILE%\dev-config\windows\packages-full.config %USERPROFILE%\packages.config"
) else if /i "%package_type%"=="slim" (
    powershell -Command "copy %USERPROFILE%\dev-config\windows\packages-slim.config %USERPROFILE%\packages.config"
) else (
    echo Invalid package type. Please enter either "full" or "slim".
    goto package_type_prompt
)

:: Install the packages from the config file
powershell -Command "choco install packages.config"

:: Install Oh My Posh using winget
powershell -Command "winget install JanDeDobbeleer.OhMyPosh -s winget"

:: Clone the dev-config repository
powershell -Command "git clone https://github.com/NeoPrint3D/dev-config"

:: Copy the nvim config files
powershell -Command "copy -r %USERPROFILE%\dev-config\nvim %USERPROFILE%\AppData\Local\nvim"

:: Install the Terminal-Icons, PSReadLine, and Bash modules
powershell -Command "Install-module -Name Terminal-Icons"
powershell -Command "Install-module -Name PSReadLine"
powershell -Command "Install-module -Name Bash"

:: Copy the PowerShell settings file
powershell -Command "copy %USERPROFILE%\dev-config\windows\powershell-settings.ps1 %USERPROFILE%\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1"

:: Copy the terminal settings file for each Windows Terminal package
for /d %%i in ("%LOCALAPPDATA%\Packages\Microsoft.WindowsTerminal_*") do (
    powershell -Command "copy %USERPROFILE%\dev-config\windows\terminal-settings.json "%%i"\LocalState\settings.json"
)

:: Update the Path environment variable again
powershell -Command "$env:Path = [System.Environment]::GetEnvironmentVariable('Path','Machine') + ';' + [System.Environment]::GetEnvironmentVariable('Path','User')"

:: Install the Oh My Posh font
powershell -Command "oh-my-posh font install"