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

# Changing shell to zsh
echo "Changing the defautl shell to zsh. You will need to provide a root password."
chsh -s $(which zsh) $USER

echo "Would you like to clean up your home directory? (y/n) " response

if [ $response == "y" ]; then
    mkdir -vp .bash_folder
    mv .bash_history .bash_folder/
    mv .bash_logout .bash_folder/
    mv .bashrc .bash_folder/
    mv .profile .bash_folder/

    echo "Bash files cleaned up."
elif [ $response ==  "n" ]; then
    echo "Script complete."
else
    echo "Invalid response."
fi
