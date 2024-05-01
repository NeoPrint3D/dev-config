@echo off

:: Set PowerShell execution policy to bypass for the current process
powershell -Command "Set-ExecutionPolicy Bypass -Scope Process -Force"

:: Set the security protocol to TLS 1.2 and install Chocolatey
powershell -Command "[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))"

cmd "$Env:Path = [System.Environment]::GetEnvironmentVariable('Path','Machine')"
cmd "$Env:Path = [System.Environment]::GetEnvironmentVariable('Path','User')"

:: Enable global confirmation for Chocolatey
powershell -Command "choco feature enable -n=allowGlobalConfirmation"

::  Install git first

powershell -Command "choco install git -y"

powershell -Command "Import-Module $env:ChocolateyInstall\helpers\chocolateyProfile.psm1"

:: Refresh the Path environment variable

powershell -Command "refreshenv"

powershell -Command "git clone https://github.com/NeoPrint3D/dev-config"



:: Prompt the user to enter the package type
:package_type_prompt
set /p package_type=Enter package type (full/slim):

:: Copy the appropriate config file based on the package type
if /i "%package_type%"=="full" (
    powershell -Command "copy ~\dev-config\windows\packages-full.config ~\dev-config\packages.config"
) else if /i "%package_type%"=="slim" (
    powershell -Command "copy ~\dev-config\windows\packages-slim.config ~\dev-config\packages.config"
) else (
    echo Invalid package type. Please enter either "full" or "slim".
    goto package_type_prompt
)

:: Install the packages from the config file
powershell -Command "choco install packages.config"

:: Install Oh My Posh using winget
powershell -Command "winget install JanDeDobbeleer.OhMyPosh -s winget"



powershell -Command "refreshenv"

:: Clone the dev-config repository

:: Copy the nvim config files
powershell -Command "copy -r ~\dev-config\nvim ~\AppData\Local\nvim"

:: Install the Terminal-Icons, PSReadLine, and Bash modules
powershell -Command "Install-module -Name Terminal-Icons"
powershell -Command "Install-module -Name PSReadLine"
powershell -Command "Install-module -Name Bash"

:: Copy the PowerShell settings file
powershell -Command "copy ~\dev-config\windows\powershell-settings.ps1 ~\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1"

:: Copy the terminal settings file for each Windows Terminal package
powershell -Command "copy ~\dev-config\windows\terminal-settings.json ~\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json"

:: Install the Oh My Posh font
powershell -Command "oh-my-posh font install JetBrainsMono"

powershell -Command "refreshenv"

powershell -Command "nvm install lts"

powershell -Command "nvm use lts"
