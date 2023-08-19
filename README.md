# dotfiles

## Install via PowerShell as admin on Windows
```
# Install scoop and Git
irm get.scoop.sh | iex
scoop install git

# Go to HOME dir, clone dotfiles, and link global .gitconfig
cd ~/
git clone https://github.com/patricklopdrup/dotfiles.git ~/.dotfiles
ln --symbolic --force $HOME/.dotfiles/.gitconfig $HOME/.gitconfig

# Add git name and email to seperate file
New-Item -Path "$HOME/.dotfiles/secrets/.gituser" -Value "[user]`n" -Force
$name = Read-Host -Prompt "git username"
$email = Read-Host -Prompt "git email"
Add-Content -Path "$HOME/.dotfiles/secrets/.gituser" "`tname = $name"
Add-Content -Path "$HOME/.dotfiles/secrets/.gituser" "`temail = $email"

# Install all scoop apps and update to latest
scoop import $HOME/.dotfiles/scoop_apps.json
scoop update *

# Link the PowerShell profile
ln --symbolic --force $HOME/.dotfiles/.pwsh_profile.ps1 $PROFILE

# Set Windows Terminal settings
ln --symbolic --force $HOME/.dotfiles/.terminal_config.json $HOME/scoop/persist/windows-terminal/settings/settings.json



# Should be last step!
# Download fonts and open explorer to install
mkdir fonts
Invoke-WebRequest -Uri "https://github.com/ryanoasis/nerd-fonts/releases/latest/download/FiraCode.zip" -OutFile fonts/FireCode.zip
Expand-Archive fonts/FireCode.zip -DestinationPath fonts/FireCode
rm fonts/FireCode.zip
explorer .\fonts\FireCode\
```

Fonts to be installed:
- FireCodeNerdFontMono-Bold.ttf
- FireCodeNerdFontMono-Light.ttf
- FireCodeNerdFontMono-Medium.ttf
- FireCodeNerdFontMono-Regular.ttf
- FireCodeNerdFontMono-Retina.ttf
- FireCodeNerdFontMono-SemiBold.ttf

Other fonts can be found here: [NerdFonts](https://www.nerdfonts.com/font-downloads)

## TODOs
- nvim config
- .ideavim config
- vscode vim config
- check that oh-my-posh works with .mytheme.omp.json
- make this into a single script
