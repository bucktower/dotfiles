# Setup Windows devironment using Powershell
# Built targeting Windows 10

Write-Host 'Beginning Windows setup...'

# INSTALLATION
# Largely using Scoop (https://scoop.sh) as a package manager. I like it better than Chocolatey
Write-Host 'Installing Scoop as package manager...'
Invoke-Expression (new-object net.webclient).downloadstring('https://get.scoop.sh')(new-object net.webclient).downloadstring('https://get.scoop.sh')

Write-Host 'Installing various Scoop packages for general usability...'
Invoke-Expression 'scoop install calibre-normal discord filezilla flux hexchat libreoffice-fresh slack'

Write-Host 'Installing various Scoop packages for development...'
Invoke-Expression 'scoop install sudo'
Invoke-Expression 'sudo scoop install 7zip openssh --global'
Invoke-Expression 'scoop install curl grep sed less touch'
Invoke-Expression 'scoop install python ruby go nodejs-lts'
Invoke-Expression 'scoop install dotnet-sdk'
Invoke-Expression 'scoop install vim'

Invoke-Expression 'scoop install conemu devdocs insomnia vscode' # Not in main Scoop bucket, but still useful to have

Invoke-Expression 'scoop install autohotkey' # Useful for hotkeys (see below)

# HOTKEYS
Write-Host 'Setting up hotkeys...'
Copy-Item ".\hotkeys\windows\swap_ctrl_alt.ahk" "$HOME\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup" # Swap CTRL with ALT for a more Mac-like feel

# EDITORS
Write-Host 'Setting up editor configurations...'
New-Item -ItemType SymbolicLink -Path $HOME\.vimrc -Value $HOME\dotfiles\editors\.vimrc # Symlink ~/.vimrc to our git-tracked vimrc
