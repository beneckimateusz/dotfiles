# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export LANG=en_US.UTF-8

ZSH_THEME="robbyrussell"

# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
plugins=(git npm docker docker-compose colored-man-pages zsh-z zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

export BROWSER=/usr/bin/google-chrome-stable
export PATH=$PATH:$HOME/stuff/scripts:$HOME/.local/bin
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
export GPG_TTY=$(tty)
export IC="$HOME/Library/Mobile Documents/com~apple~CloudDocs"

alias vim="nvim"
alias l="exa -l -g --icons"
alias la="l -a"
alias cat="bat"
alias mv="mv -i"
alias op="open"

alias d="docker"
alias dc="docker-compose"

alias zshrc="nvim ~/.zshrc"
alias lb="livebook server --data-path ~/stuff/notebooks/livebook --home ~/stuff/notebooks ~/stuff/notebooks"
alias gbmD="git branch | grep -E \"feature|bug\" | xargs git branch -D"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
. $(brew --prefix asdf)/libexec/asdf.sh

# Start tmux
if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
  exec tmux
fi

# Source tmux theme
tmux source $HOME/.tmux_theme

# Starship
eval "$(starship init zsh)"
