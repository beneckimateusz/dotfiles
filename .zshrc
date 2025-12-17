export ZSH="$HOME/.oh-my-zsh"
export LANG=en_US.UTF-8

ZSH_THEME="robbyrussell"

# standard plugins can be found in $ZSH/plugins/
# custom plugins may be added to $ZSH_CUSTOM/plugins/
plugins=(git npm docker docker-compose mise colored-man-pages z zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

export BROWSER=/usr/bin/google-chrome-stable
export EDITOR="nvim"

export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:/opt/homebrew/opt/libpq/bin"

# https://www.atlassian.com/git/tutorials/dotfiles
alias dotfiles='git --git-dir=$HOME/.dotfiles --work-tree=$HOME'

alias vim="nvim"
alias l="eza -l -g --icons --group-directories-first"
alias la="eza -a -l -g --icons --group-directories-first"
alias cat="bat"
alias mv="mv -i"
alias op="open"
alias gs="echo '🙈'"
alias d="docker"
alias dc="docker-compose"
alias lg="lazygit"
alias k="kubectl"
alias zshrc="nvim ~/.zshrc"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

eval "$(starship init zsh)"

eval "$(~/.local/bin/mise activate)"

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/mateusz/.lmstudio/bin"
# End of LM Studio CLI section

# Added by Windsurf
export PATH="/Users/mateusz/.codeium/windsurf/bin:$PATH"

ff() {
  aerospace list-windows --all | fzf --delimiter '\|' --bind 'enter:execute(bash -c "aerospace focus --window-id {1}")+abort'
}
