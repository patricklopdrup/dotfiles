Function vimhome {Set-Location -Path $HOME\AppData\Local\nvim }
Function viminit {nvim $HOME\AppData\Local\nvim\init.vim }
Function set-helix {helix $HOME\AppData\Roaming\helix\config.toml}
Function dev {Set-Location -Path C:\dev }

Set-Alias -Name vim -Value nvim

Set-PSReadLineKeyHandler -Chord Tab -Function Complete
Set-PSReadLineKeyHandler -Key Tab -Function MenuComplete

Set-PSReadLineKeyHandler -Chord Ctrl+o -ScriptBlock {
    lfcd;
    [Microsoft.PowerShell.PSConsoleReadLine]::Insert('cls;')
    [Microsoft.PowerShell.PSConsoleReadLine]::AcceptLine()
    [Microsoft.PowerShell.PSConsoleReadLine]::Insert('ls;')
    [Microsoft.PowerShell.PSConsoleReadLine]::AcceptLine()
}

Import-Module posh-git

# Example of path to default theme: $env:POSH_THEMES_PATH/star.omp.json
oh-my-posh init pwsh --config "~/.dotfiles/.mytheme.omp.json" | Invoke-Expression
