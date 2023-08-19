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

# Install all scoop apps and update to latest
scoop import $HOME/.dotfiles/scoop_apps.json
scoop update *

# Link the PowerShell profile
ln --symbolic --force $HOME/.dotfiles/.pwsh_profile.ps1 $PROFILE

# Set Windows Terminal settings
ln --symbolic --force $HOME/.dotfiles/.terminal_config.json $HOME/scoop/persist/windows-terminal/settings/settings.json



# Should be last step!
# Download fonts and open explorer to install
Invoke-WebRequest -Uri "https://github.com/ryanoasis/nerd-fonts/releases/latest/download/FiraCode.zip" -OutFile FireCode.zip
Expand-Archive FireCode.zip -DestinationPath FireCode
rm FireCode.zip
explorer FireCode
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
