set -x CODE "$HOME/src/github.com"
set -x ERL_AFLAGS "-kernel shell_history enabled -kernel shell_history_file_bytes 2097152"
set -x GPG_TTY (tty)
set -x XDG_CONFIG_HOME "$HOME/.config"
