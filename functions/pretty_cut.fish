function pretty_cut
    set l (count $argv)
    set line 2
    set part 1

    if test $l = 1
        set line $argv[1]
    end

    if test $l = 2
        set line $argv[1]
        set part $argv[2]
    end

    pbpaste | sed -n "$line"'p' | awk '{print $'"$part"'}'
end
