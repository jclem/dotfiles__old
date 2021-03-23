# See: https://fishshell.com/docs/current/commands.html#abbr

if status --is-interactive
    abbr --add --global dc docker-compose
    abbr --add --global dk docker
    abbr --add --global g git
    abbr --add --global hk heroku
end
