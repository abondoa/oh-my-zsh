function copydir {
    if [[ "$#" == 1 ]] then
        if [[ -a $1 ]] then
            pushd $1 &> /dev/null
            pwd | tr -d "\r\n" | pbcopy
            popd &> /dev/null
        else
            echo "copydir: no such file: $1" > /dev/stderr
            return 1
        fi
    else
        pwd | tr -d "\r\n" | pbcopy
    fi
}