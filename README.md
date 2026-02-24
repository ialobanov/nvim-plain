# Plain Neovim Setup

It's the minimalistic Neovim setup with LazyVim manager.

## Screnshot

<img width="3763" height="1939" alt="image" src="https://github.com/user-attachments/assets/24e582f0-7c87-4aaa-a836-85322584978d" />


## Installation

#### Windows

Create a directory if it doesn't exist:

```powershell
if (!(Test-Path "$env:USERPROFILE\AppData\Local\nvim")) { New-Item -Path "$env:USERPROFILE\AppData\Local\nvim" -ItemType Directory -Force }
```

Clone repo:

```powershell
git clone https://github.com/ialobanov/nvim-plain.git $env:USERPROFILE\AppData\Local\nvim
```

#### UNIX

```shell
mkdir -p $HOME/.config/nvim && git clone https://github.com/ialobanov/nvim-plain.git $HOME/.config/nvim
```
