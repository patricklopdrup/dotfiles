# dotfiles

## Install via PowerShell as admin on Windows
```
irm get.scoop.sh | iex
scoop install git

cd ~/
git clone https://github.com/patricklopdrup/dotfiles.git ~/.dotfiles
ln -s $HOME/.dotfiles/.gitconfig $HOME/.gitconfig

scoop import $HOME/.dotfiles/scoop_apps.json
scoop update *

if (Test-Path $PROFILE) { rm $PROFILE }
ln -s $HOME/.dotfiles/.pwsh_profile.ps1 $PROFILE
```

## TODOs
- nvim config
- .ideavim config
- vscode vim config
- check that oh-my-posh works with .mytheme.omp.json
- make this into a single script
