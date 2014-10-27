# Push and pop directories on directory stack
alias pu='pushd'
alias po='popd'

# Basic directory operations
alias ...='cd ../..'
alias -- -='cd -'

# Super user
alias _='sudo'
alias please='sudo'

#alias g='grep -in'

# Show history
if [ "$HIST_STAMPS" = "mm/dd/yyyy" ]
then
    alias history='fc -fl 1'
elif [ "$HIST_STAMPS" = "dd.mm.yyyy" ]
then
    alias history='fc -El 1'
elif [ "$HIST_STAMPS" = "yyyy-mm-dd" ]
then
    alias history='fc -il 1'
else
    alias history='fc -l 1'
fi
# enable color support of ls and also add handy aliases
alias ls='ls --color=auto'
alias dir='dir --color=auto'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias cdb='popd>/dev/null'
alias o='xdg-open'
alias o.='xdg-open .'

# because I usually fumble my fingers:
alias æ='ls'
alias cd..='cd ..'

# List direcory contents
alias ll='ls -lah'
alias l='ls'
alias la='ls -lAh'

alias afind='ack-grep -il'

