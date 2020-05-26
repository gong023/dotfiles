function peco_branch_delete
    git branch | cut -c 3- | peco | read -l branch

    if test "$branch" != ""
        git branch -D "$branch"
    end
end
