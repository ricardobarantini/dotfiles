if command -v tmux > /dev/null && [ -z "$TMUX" ]; then
  tmux attach || tmux new-session
fi

export GTK_IM_MODULE=ibus
export PHPSTORM_JDK="$HOME/.jbr/jbr_jcef-21.0.9-linux-x64-b1038.75"
export GOPATH="$HOME/.local/share/go"
export GOBIN="$GOPATH/bin"

ZDOTDIR="$HOME/.zsh"
ZOXIDE_CMD_OVERRIDE="cd"
# Bindkeys
bindkey '^ ' autosuggest-accept

# Antidote
ANTIDOTE_HOME="$ZDOTDIR/.antidote"

if [ ! -d "$ANTIDOTE_HOME" ]; then
  git clone --depth=1 https://github.com/mattmc3/antidote.git $ANTIDOTE_HOME
fi

source $ANTIDOTE_HOME/antidote.zsh
antidote load

# History
HISTDUP=erase
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_find_no_dups

# Aliases
alias cat="bat"
alias grep="rg"
alias ls='eza -lh --group-directories-first --icons=auto'
alias lsa='ls -a'
alias lt='eza --tree --level=2 --long --icons --git'
alias lta='lt -a'
alias ff="fzf --preview 'bat --style=numbers --color=always {}'"
alias sail="./vendor/bin/sail"
alias pint="./vendor/bin/pint"
alias docker-compose="docker compose"
alias tmux="tmux a || tmux"
alias vim="nvim"
alias gg="goto-ssh"
alias copy="wl-copy"

# Functions
function clone() {
  git clone git@github.com:"$1".git
}

# bun completions
[ -s "/home/ricardo/.bun/_bun" ] && source "/home/ricardo/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# phpenv
export PATH="$PATH:$HOME/.phpenv/bin"
export PATH="$PATH:$HOME/.config/composer/vendor/bin"

# filen-cli
PATH=$PATH:~/.filen-cli/bin

eval "$(phpenv init -)"
