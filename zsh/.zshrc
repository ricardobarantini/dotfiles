export GTK_IM_MODULE=ibus

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

# Exports
export PHPENV_ROOT="/home/ricardo/.phpenv"
if [ -d "${PHPENV_ROOT}" ]; then
  export PATH="${PHPENV_ROOT}/bin:${PATH}"
  eval "$(phpenv init -)"
fi

GOPATH="$HOME/.local/share/go"
GOBIN="$GOPATH/bin"
PATH="$PATH:$HOME/.local/bin:$HOME/.config/composer/vendor/bin:$GOBIN"

# Aliases
alias cat="bat"
alias grep="rg"
alias ls='eza -lh --group-directories-first --icons=auto'
alias lsa='ls -a'
alias lt='eza --tree --level=2 --long --icons --git'
alias lta='lt -a'
alias ff="fzf --preview 'bat --style=numbers --color=always {}'"
alias sail="./vendor/bin/sail"
alias docker-compose="docker compose"
alias t="tmux a || tmux"

# Functions
function clone() {
  git clone git@github.com:"$1".git
}

# bun completions
[ -s "/home/ricardo/.bun/_bun" ] && source "/home/ricardo/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
