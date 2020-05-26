function open_github_dir
    set -l branch (g branch | awk '{print $2}' | tr -d '\n')
    set -l repo (cat .git/config | grep -E 'github.com(.+)\/(.+)$' -o | sed -e 's/:/\//' | sed -e 's/\.git$//')
    open "https://"$repo"/tree/"$branch
end
