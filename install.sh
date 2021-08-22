#!/bin/bash

DOTFILES_FOLDER=$(pwd)

cd "$HOME" || exit

HOME_DIR=$(pwd)

if [ ! -d $HOME/.oh-my-zsh ]; then
  # Installing Oh-my-zsh
  sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
fi

if [ ! -a $HOME/.antigen ]; then
  # Installing Antigen
  curl -L git.io/antigen > .antigen.zsh
fi

# Installing Powerline fonts
# git clone https://github.com/powerline/fonts.git --depth=1
# cd fonts
# ./install.sh
# cd ..
# rm -rf fonts

# Defining powerline font
# gsettings set org.pantheon.terminal.settings font 'Meslo LG S for Powerline Regular 10'

# Copying shell files
cd shell || exit

for file in \.*; do
  [ -e $file ] || continue
  cp $file $HOME_DIR
done

cd $DOTFILES_FOLDER || exit

# Reloads .zshrc file
source $HOME/.zshrc