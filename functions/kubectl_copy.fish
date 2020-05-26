function kubectl_copy
    if [ $argv[1] = "get" ]
        kubectl $argv | pbcopy; pbpaste
    else
        kubectl $argv
    end
end
