# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
plugins=(git npm asdf colored-man-pages zsh-z zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

alias mv="mv -i"
alias o="xdg-open"
alias op="open" # macOS

alias wpm="python -m wpm"
alias notebook="python -m jupyter notebook"

alias d="docker"
alias dc="docker-compose"

alias n="nvim"

alias tls="tmux ls"
alias tkill="tmux kill-session -t"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export BROWSER=/usr/bin/google-chrome-stable
export PATH=$PATH:$HOME/stuff/scripts

# For GPG on macOS
export GPG_TTY=$(tty)

# Start tmux
if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
  exec tmux
fi

# Source tmux theme
tmux source $HOME/.tmux_theme
