function find_repo
    gh repo list $argv |
        cut -f1 |
        fzf --preview="socat - EXEC:'gh repo view {}',pty,setsid,ctty" --preview-window=75%
end
