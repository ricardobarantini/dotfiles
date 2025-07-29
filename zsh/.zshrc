# Antigen
if [ ! -f $HOME/.antigen.zsh ]; then
  curl -L git.io/antigen > .antigen.zsh
fi

if [ -f $HOME/.antigen.zsh ]; then
  source $HOME/.antigen.zsh
  antigen bundle git
  antigen bundle zsh-users/zsh-completions
  antigen bundle zsh-users/zsh-syntax-highlighting
  antigen bundle zsh-users/zsh-autosuggestions
  antigen apply
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

plugins=(git github)

source $ZSH/oh-my-zsh.sh

# User configuration
if [ -f $HOME/.exports ]; then
  source $HOME/.exports
fi

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

DEFAULT_USER=$USER

eval "$(starship init zsh)"
