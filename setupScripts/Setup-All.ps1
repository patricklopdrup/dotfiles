# Link .gitconfig
New-Item -ItemType SymbolicLink -Path $HOME/.gitconfig -Target "$HOME/.dotfiles/git/.gitconfig" -Force

# Add git name and email to seperate file
New-Item -Path "$HOME/.dotfiles/secrets/.gituser" -Value "[user]`n" -Force
$name = Read-Host -Prompt "git username"
$email = Read-Host -Prompt "git email"
Add-Content -Path "$HOME/.dotfiles/secrets/.gituser" "`tname = $name"
Add-Content -Path "$HOME/.dotfiles/secrets/.gituser" "`temail = $email"

# Install all scoop apps and update to latest
scoop import $HOME/.dotfiles/scoop/scoop_apps.json
scoop update *

# Link nvim folder
New-Item -ItemType SymbolicLink -Path "$HOME/AppData/Local/nvim/" -Target "$HOME/.dotfiles/nvim/" -Force

# Link PowerShell profile
# Has to be run from pwsh because $HOME is in another location...
New-Item -ItemType SymbolicLink -Path $PROFILE -Target "$HOME/.dotfiles/powershell/.pwsh_profile.ps1" -Force

# Replace Windows Terminal settings.json file
Copy-Item $HOME/.dotfiles/powershell/.terminal_config.json -Destination $HOME/scoop/persist/windows-terminal/settings/settings.json -Force

# Make dev folder if it does not exist
$devExist = Test-Path $HOME/dev
if (-not $devExist) {mkdir $HOME/dev}

# Used for some vim lsp
nvm install latest
nvm use latest

# Download fonts and open explorer to install
mkdir $HOME/.dotfiles/fonts
Invoke-WebRequest -Uri "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/FiraMono.zip" -OutFile $HOME/.dotfiles/fonts/FireMono.zip
Expand-Archive $HOME/.dotfiles/fonts/FireMono.zip -DestinationPath $HOME/.dotfiles/fonts/FireMono
rm $HOME/.dotfiles/fonts/FireMono.zip
explorer $HOME\.dotfiles\fonts\FireMono\
