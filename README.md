# dotfiles

## Install via PowerShell as admin on Windows
```
# Install scoop and Git
irm get.scoop.sh | iex
scoop install git

git clone https://github.com/patricklopdrup/dotfiles.git $HOME\.dotfiles

$HOME\.dotfiles\setupScripts\Setup-Git.ps1
$HOME\.dotfiles\setupScripts\Setup-Scoop.ps1
$HOME\.dotfiles\setupScripts\Setup-Nvim.ps1
$HOME\.dotfiles\setupScripts\Setup-PowerShell.ps1
$HOME\.dotfiles\setupScripts\Setup-Terminal.ps1
$HOME\.dotfiles\setupScripts\Setup-Misc.ps1
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
