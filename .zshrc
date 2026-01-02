export ZSH="$HOME/.oh-my-zsh"
export LANG=en_US.UTF-8

plugins=(git npm docker docker-compose mise colored-man-pages zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

export BROWSER=/opt/homebrew/bin/zen
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
eval "$(zoxide init zsh)"
eval "$(atuin init zsh)"
eval "$(~/.local/bin/mise activate)"
eval "$(ruby ~/.local/try.rb init ~/stuff/tries)"

export CARAPACE_BRIDGES='zsh,fish,bash,inshellisense' # optional
zstyle ':completion:*' format $'\e[2;37mCompleting %d\e[m'
source <(carapace _carapace)

ff() {
  aerospace list-windows --all | fzf --delimiter '\|' --bind 'enter:execute(bash -c "aerospace focus --window-id {1}")+abort'
}
