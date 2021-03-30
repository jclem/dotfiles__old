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

if [[ "$(uname)" == "Darwin" ]]; then
    brew bundle install --no-upgrade
fi