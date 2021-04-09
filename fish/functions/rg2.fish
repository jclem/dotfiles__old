function rg2
    set -l RG_PREFIX "rg --column --line-number --no-heading --color=always --smart-case"

    if set -q argv[1]
        set INITIAL_QUERY $argv[1]
    else
        set INITIAL_QUERY ''
    end

    env FZF_DEFAULT_COMMAND="$RG_PREFIX (printf $INITIAL_QUERY) || true" fzf --ansi \
        --disabled --query "$INITIAL_QUERY" \
        --bind "change:reload:sleep 0.05; $RG_PREFIX {q} || true" \
        --delimiter : \
        --preview 'bat --color=always {1} --highlight-line {2}' \
        --preview-window 'up,60%,border-bottom,+{2}+3/3,~3' \
        | read -d: selected
    echo $selected[1]
end
