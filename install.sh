#!/usr/bin/env bash

dotfiles_dir="$(pwd)"

ln -fsv "$dotfiles_dir/fish" "$HOME/.config"
ln -fsv "$dotfiles_dir/git" "$HOME/.config"

if test -f "$dotfiles_dir/git/local"; then
    ln -fsv "$dotfiles_dir/git/local" "$HOME/.gitconfig_local"
fi

if [[ "$(uname)" == "Darwin" ]]; then
    /opt/homebrew/bin/brew bundle install --no-upgrade
fi