#!/bin/bash

function backup_file () {
  test -f "$1" && mv "$1" "$1.bak"
}

DOTFILES_PATH=$1

# zsh
backup_file "$HOME/.zshrc"
ln -s "$DOTFILES_PATH/.zshrc" "$HOME/.zshrc"

# tmux
backup_file "$HOME/.tmux.conf"
backup_file "$HOME/.tmux_theme"
ln -s "$DOTFILES_PATH/.tmux.conf" "$HOME/.tmux.conf"
ln -s "$DOTFILES_PATH/.tmux_theme" "$HOME/.tmux_theme"

# ideavim
backup_file "$HOME/.ideavimrc"
ln -s "$DOTFILES_PATH/.ideavimrc" "$HOME/.ideavimrc"

# iterm2
echo "[iterm2] load the profile and colorscheme on your own"

# karabiner
backup_file "$HOME/.config/karabiner/karabiner.json"
ln -s "$DOTFILES_PATH/karabiner/karabiner.json" "$HOME/.config/karabiner/karabiner.json"

# lf
backup_file "$HOME/.config/lf/lfrc"
ln -s "$DOTFILES_PATH/lf/lfrc" "$HOME/.config/lf/lfrc"

# lvim
backup_file "$HOME/.config/lvim/config.lua"
ln -s "$DOTFILES_PATH/lvim/config.lua" "$HOME/.config/lvim/config.lua"

# nvim
backup_file "$HOME/.config/nvim/init.vim"
backup_file "$HOME/.config/nvim/macos.vim"
backup_file "$HOME/.config/nvim/plug.vim"
ln -s "$DOTFILES_PATH/nvim/init.vim" "$HOME/.config/nvim/init.vim"
ln -s "$DOTFILES_PATH/nvim/macos.vim" "$HOME/.config/nvim/macos.vim"
ln -s "$DOTFILES_PATH/nvim/plug.vim" "$HOME/.config/nvim/plug.vim"

# starship
backup_file "$HOME/.config/starship.toml"
ln -s "$DOTFILES_PATH/starship/starship.toml" "$HOME/.config/starship.toml"

# vscode
backup_file "$HOME/Library/Application Support/Code/User/settings.json"
backup_file "$HOME/Library/Application Support/Code/User/keybindings.json"
ln -s "$DOTFILES_PATH/vscode/settings.json" "$HOME/Library/Application Support/Code/User/settings.json"
ln -s "$DOTFILES_PATH/vscode/keybindings.json" "$HOME/Library/Application Support/Code/User/keybindings.json"
