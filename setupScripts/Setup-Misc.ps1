# Make dev folder if it does not exist
$devExist = Test-Path $HOME/dev
if (-not $devExist) {mkdir $HOME/dev}

# Download fonts and open explorer to install
mkdir fonts
Invoke-WebRequest -Uri "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/FiraMono.zip" -OutFile fonts/FireMono.zip
Expand-Archive fonts/FireMono.zip -DestinationPath fonts/FireMono
rm fonts/FireMono.zip
explorer .\fonts\FireMono\
