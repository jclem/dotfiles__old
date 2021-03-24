set -x fish_greeting
fish_vi_key_bindings

if test -d (brew --prefix asdf)
    source (brew --prefix asdf)/asdf.fish
end