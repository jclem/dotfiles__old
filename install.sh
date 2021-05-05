#!/usr/bin/env bash

dotfiles_dir="$(pwd)"

ln -fsv "$dotfiles_dir/fish" "$HOME/.config"
ln -fsv "$dotfiles_dir/git" "$HOME/.config"
ln -fsv "$dotfiles_dir/tmux" "$HOME/.config"

mkdir -p "$HOME/.config/gh"
ln -fsv "$dotfiles_dir/gh/config.yml" "$HOME/.config/gh/config.yml"

if test -f "$dotfiles_dir/git/local"; then
    ln -fsv "$dotfiles_dir/git/local" "$HOME/.gitconfig_local"
fi

iterm2_dir="$HOME/Library/Application Support/iTerm2"

if test -d "$iterm2_dir"; then
  ln -fsv "$dotfiles_dir/iterm2/Scripts" "$iterm2_dir/Scripts"
fi

if [[ "$(uname)" == "Darwin" ]]; then
    brew bundle install --no-upgrade
fi