#!/bin/bash

rm -fr ~/.local/share/dotfiles
git clone git@github.com:ricardobarantini/dotfiles.git ~/.local/share > /dev/null

source ~/.local/share/dotfiles/install.sh