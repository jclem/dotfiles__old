# See: https://fishshell.com/docs/current/commands.html#abbr

if status --is-interactive
    abbr --add --global code code-insiders
    abbr --add --global dc docker-compose
    abbr --add --global dk docker
    abbr --add --global g git
    abbr --add --global hk heroku
    abbr --add --global ls exa
    abbr --add --global md mdmind
    abbr --add --global v vercel
end
