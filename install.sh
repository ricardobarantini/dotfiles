#!/bin/bash

DOTFILES_FOLDER=$(pwd)

cd ~

HOME_DIR=$(pwd)

# Installing Oh-my-zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# Installing Antigen
curl -L git.io/antigen > antigen.zsh

# Installing Powerline fonts
# git clone https://github.com/powerline/fonts.git --depth=1
# cd fonts
# ./install.sh
# cd ..
# rm -rf fonts

# Defining powerline font
# gsettings set org.pantheon.terminal.settings font 'Meslo LG S for Powerline Regular 10'

# Copying shell files
cp $DOTFILES_FOLDER/shell/.functions $HOME_DIR
cp $DOTFILES_FOLDER/shell/.profile $HOME_DIR
cp $DOTFILES_FOLDER/shell/.zshrc $HOME_DIR
cp $DOTFILES_FOLDER/shell/.hyper.js $HOME_DIR
cp $DOTFILES_FOLDER/shell/.aliases $HOME_DIR