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

# Exports
export PHPENV_ROOT="/home/ricardo/.phpenv"
if [ -d "${PHPENV_ROOT}" ]; then
  export PATH="${PHPENV_ROOT}/bin:${PATH}"
  eval "$(phpenv init -)"
fi

# Aliases
alias ls='eza -lh --group-directories-first --icons=auto'
alias lsa='ls -a'
alias lt='eza --tree --level=2 --long --icons --git'
alias lta='lt -a'
alias ff="fzf --preview 'bat --style=numbers --color=always {}'"
alias yayf="yay -Slq | fzf --multi --preview 'yay -Sii {1}' --preview-window=down:75% | xargs -ro yay -S"
alias sail="./vendor/bin/sail"
alias docker-compose="docker compose"
alias pacman="sudo pacman"
alias pacman-update="sudo pacman -Syu"

# Functions
function clone() {
  git clone git@github.com:"$1".git
}

function copy() {
  xclip -selection c <"$1"
}

function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}
