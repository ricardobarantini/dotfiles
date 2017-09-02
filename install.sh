#!/bin/bash

cd ~

# Installing Oh-my-zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# Installing Antigen
curl -L git.io/antigen > antigen.zsh

FILES=/dotfiles/shell/*
for f in $FILES
do
  echo "Processing $f file..."
  # take action on each file. $f store current file name
  cp $f ~
done