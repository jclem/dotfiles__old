function ns
    if ! test -f package.json
        return 1
    end

    npm run (cat package.json | jq -r '.scripts | to_entries[] | "\(.key): \(.value)"' | fzf | cut -d: -f1)
end
