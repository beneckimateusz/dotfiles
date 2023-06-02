# path to my oh-my-zsh installation
export ZSH="$HOME/.oh-my-zsh"
export LANG=en_US.UTF-8

ZSH_THEME="robbyrussell"

# standard plugins can be found in $ZSH/plugins/
# custom plugins may be added to $ZSH_CUSTOM/plugins/
plugins=(git npm docker docker-compose colored-man-pages zsh-z zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# exports
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

export BROWSER=/usr/bin/google-chrome-stable
export GPG_TTY=$(tty)

export PATH="$HOME/.local/bin:/opt/homebrew/opt/libpq/bin:$PATH"

# aliases

## for more details see https://www.atlassian.com/git/tutorials/dotfiles
alias dotfiles='git --git-dir=$HOME/.dotfiles --work-tree=$HOME'

alias vim="nvim"
alias l="exa -l -g --icons --group-directories-first"
alias la="exa -a -l -g --icons --group-directories-first"
alias cat="bat"
alias mv="mv -i"
alias op="open"

## dirty hack
alias gs="echo '🙈'"

## docker
alias d="docker"
alias dc="docker-compose"

## elixir/mix
alias mf="mix format"
alias mfa="mix format.all"
alias mt="mix test"
alias mtw="fswatch lib test | mix test --stale --listen-on-stdin"
alias md="mix docs -f html"
alias mr="mix run"
alias mc="mix compile"

alias meg="mix ecto.gen.migration"
alias lb="livebook server --data-path ~/stuff/notebooks/livebook --home ~/stuff/notebooks ~/stuff/notebooks"

alias zshrc="nvim ~/.zshrc"

## git
alias gbmD="git branch | grep -E \"feature|bug|chore\" | xargs git branch -D"

## yabai
alias yrow="echo \"$(whoami) ALL=(root) NOPASSWD: sha256:$(shasum -a 256 $(which yabai) | cut -d " " -f 1) $(which yabai) --load-sa\""

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
. $(brew --prefix asdf)/libexec/asdf.sh

# starship
eval "$(starship init zsh)"
