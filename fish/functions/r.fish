# Clone a repository, if necessary, and CD into it
function r
    argparse --name=r h/help d/no-cd -- $argv

    if set -q _flag_h
        or test (count $argv) -lt 1
        echo "\
Usage: r <owner> [<repo>] [<option>] 
Clone a GitHub repository, if necessary, and CD into its directory.
Flags can be passed to `git clone` by separating flags with `--`, for example:
    r jclem workspace -- --depth=1
Options
    -h/--help    Print this help message
    -d/--no-cd   Do not change the directory after cloning"

        return 0
    end

    if test (count $argv) -eq 1
        cd (r-dir $argv[1])
        return 0
    end

    set -l repo "$argv[1]/$argv[2]"
    set -l repo_path (r-dir $argv[1] $argv[2])
    set -l session_name (echo $repo | sed -E 's/[^a-zA-Z0-9\/_-]/-/g') # -E is BSD, use -r on Linux

    # Clone the repository if it does not exist
    if not test -d $repo_path
        git clone "git@github.com:$repo.git" "$repo_path" $argv[3..-1]
        or return $status
    end

    if set -q _flag_d
        return $status
    end

    cd $repo_path
    return $status
end