set -x fish_greeting
fish_vi_key_bindings

if type -q brew; and test -d (brew --prefix asdf)
    source (brew --prefix asdf)/asdf.fish
end