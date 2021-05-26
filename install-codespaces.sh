#!/usr/bin/env fish

CI=true /bin/bash -c (curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)
eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)
brew install bat exa fd fish fzf httpie jq ripgrep wget
chsh -s (brew --prefix fish) root
curl -sL https://git.io/fisher | source && fisher update
