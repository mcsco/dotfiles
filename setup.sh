#!/bin/sh

# Creating directories
mkdir -vp ~/.local/bin
mkdir -vp ~/.cache/zsh
mkdir -vp ~/.config/zsh
mkdir -vp ~/.config/shell
mkdir -vp ~/.config/nvim

# Creating history file for zsh
touch ~/.cache/zsh/history

# Create Links
ln -svf ~/Projects/dotfiles/zsh/.zprofile ~/.zprofile
ln -svf ~/Projects/dotfiles/zsh/.zshrc ~/.config/zsh/.zshrc
ln -svf ~/Projects/dotfiles/shell/aliasrc ~/.config/shell/aliasrc
# ln -svf ~/Projects/dotfiles/bin/.. ~/.local/bin/..
