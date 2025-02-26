# Plain Neovim Setup

It's Neovim setup fo my Windows machine.
Plugins are installing by LazyVim manager.

## Installation

Create a directory if it doesn't exist:

```powershell
if (!(Test-Path "$env:USERPROFILE\AppData\Local\nvim")) { New-Item -Path "$env:USERPROFILE\AppData\Local\nvim" -ItemType Directory -Force }
```

Clone repo:

```shell
git clone git@github.com:ialobanov/nvim-plain.git $env:USERPROFILE\AppData\Local\nvim
```
