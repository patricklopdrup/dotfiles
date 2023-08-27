# dotfiles

## Run via normal PowerShell
```
# Install scoop and Git
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
irm get.scoop.sh | iex
scoop install git

git clone https://github.com/patricklopdrup/dotfiles.git $HOME/.dotfiles
```

## Install via Admin PowerShell
```
& $HOME/.dotfiles/setupScripts/Setup-All.ps1
```

Fonts to be installed:
- FiraMonoNerdFontMono-Bold.ttf
- FiraMonoNerdFontMono-Light.ttf
- FiraMonoNerdFontMono-Medium.ttf
- FiraMonoNerdFontMono-Regular.ttf
- FiraMonoNerdFontMono-Retina.ttf
- FiraMonoNerdFontMono-SemiBold.ttf

Other fonts can be found here: [NerdFonts](https://www.nerdfonts.com/font-downloads)

## TODOs
- .ideavim config
- vscode vim config
