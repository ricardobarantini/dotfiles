#!/bin/bash

DOTFILES_FOLDER=$(pwd)

cd "$HOME" || exit

if [ ! -d $HOME/.oh-my-zsh ]; then
  # Installing Oh-my-zsh
  sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
fi

if [ ! -e $HOME/.antigen.zsh ]; then
  # Installing Antigen
  curl -L git.io/antigen > $HOME/.antigen.zsh
fi

# Installing Powerline fonts
# git clone https://github.com/powerline/fonts.git --depth=1
# cd fonts
# ./install.sh
# cd ..
# rm -rf fonts

# Defining powerline font
# gsettings set org.pantheon.terminal.settings font 'Meslo LG S for Powerline Regular 10'

cd "$DOTFILES_FOLDER" || exit

# Installing Spaceship Theme (oh-my-zsh)
git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1

ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# Copying shell files
for file in $(ls -a "$DOTFILES_FOLDER/shell" | tail -n +3); do
  # [ -e "$HOME/$file" ] && continue
  cp "shell/$file" $HOME
done

# Reloads .zshrc file
source $HOME/.zshrc