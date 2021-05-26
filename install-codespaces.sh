#!/usr/bin/env fish

CI=true curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh | /bin/bash
eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)
brew install bat exa fd fish fzf httpie jq ripgrep wget
chsh -s (brew --prefix fish) root
chsh -s (brew --prefix fish) codespace
curl -sL https://git.io/fisher | source && fisher update