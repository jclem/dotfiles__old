function ns
    if ! test -f package.json
        return 1
    end


    set script (cat package.json | jq -r '.scripts | to_entries[] | "\(.key) \(.value)"' | fzf | cut -d' ' -f1)

    if [ -z "$script" ]
        return 1
    end

    npm run $script $argv
end
