# Plain Neovim Setup

It's the minimalistic Neovim setup with Lazyvim manager.

## Screenshot

<img width="1882" height="900" alt="image" src="https://github.com/user-attachments/assets/fa03aab9-3a8e-44c2-b4f5-c014df9683ac" />

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
