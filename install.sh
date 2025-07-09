#!/bin/bash

dotfiles=~/.local/share/dotfiles

# Bash
ln -sf $dotfiles/bash/.bashrc ~/.
ln -sf $dotfiles/bash/.profile ~/.

# Git
ln -sf $dotfiles/git/.gitconfig ~/.

# Zsh
ln -sf $dotfiles/zsh/.aliases ~/.
ln -sf $dotfiles/zsh/.exports ~/.