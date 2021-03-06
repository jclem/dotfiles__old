#!/usr/bin/env bash

set -eux
set -o pipefail

CI=true curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh | /bin/bash
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
brew install asdf bat exa fd fish fzf gh httpie jq ripgrep sd wget
$(which fish) -c 'curl -sL https://git.io/fisher | source && fisher update'

# Add Homebrew fish to shells
echo "$(which fish)" | sudo tee -a /etc/shells

# Set the shell
sudo chsh -s $(which fish) $(whoami)
