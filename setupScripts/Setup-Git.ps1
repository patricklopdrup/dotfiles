New-Item -ItemType SymbolicLink -Path $HOME/.gitconfig -Target "$HOME/.dotfiles/git/.gitconfig" -Force

# Add git name and email to seperate file
New-Item -Path "$HOME/.dotfiles/secrets/.gituser" -Value "[user]`n" -Force
$name = Read-Host -Prompt "git username"
$email = Read-Host -Prompt "git email"
Add-Content -Path "$HOME/.dotfiles/secrets/.gituser" "`tname = $name"
Add-Content -Path "$HOME/.dotfiles/secrets/.gituser" "`temail = $email"
