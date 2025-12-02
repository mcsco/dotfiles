#!/bin/bash

# Creating directories
mkdir -vp ~/.local/bin
mkdir -vp ~/.cache/zsh
mkdir -vp ~/.config/zsh
mkdir -vp ~/.config/shell
mkdir -vp ~/.config/nvim

# Creating history file for zsh
touch ~/.cache/zsh/history

# Create Links
ln -svf ~/Development/dotfiles/zsh/.zprofile ~/.zprofile
ln -svf ~/Development/dotfiles/zsh/.zshrc ~/.config/zsh/.zshrc
ln -svf ~/Development/dotfiles/shell/aliasrc ~/.config/shell/aliasrc
# ln -svf ~/Projects/dotfiles/bin/.. ~/.local/bin/..

# clone neovim kickstart
git clone https://github.com/nvim-lua/kickstart.nvim.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim

# Changing shell to zsh
echo "Changing the defautl shell to zsh. You will need to provide a root password."
chsh -s $(which zsh) $USER

echo "Would you like to clean up your home directory? (y/n) " 
read response

if [[ "$response" =~ ^[Yy]$ ]]; then
    mkdir -vp ~/.bash_folder
    mv ~/.bash_history ~/.bash_folder/
    mv ~/.bash_logout ~/.bash_folder/
    mv ~/.bashrc ~/.bash_folder/
    mv ~/.bash_profile ~/.bash_folder/ #fedora uses .bash_profile not .profile

    echo "Bash files cleaned up."
elif [[ "$response" =~ ^[Nn]$ ]]; then
    echo "Script complete."
else
    echo "Invalid response."
fi
