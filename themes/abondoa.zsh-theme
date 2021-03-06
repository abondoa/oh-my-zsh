
PROMPT='%{${fg_bold[yellow]}%}%n%{$reset_color%}%{${fg[yellow]}%}@%m%{$reset_color%}$(version_control_info)%(?,,%{${fg_bold[white]}%}[%?]%{$reset_color%} )%{$fg[yellow]%}%#%{$reset_color%} '
RPROMPT='%{$fg_bold[cyan]%}$(right_prompt)%{$reset_color%}'



ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git( %{$fg_bold[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg_bold[blue]%} )%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%} ✚"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[blue]%} ✹"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%} ✖"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[magenta]%} ➜"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[yellow]%} ═"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[cyan]%} ✭"

ZSH_THEME_SVN_PROMPT_PREFIX="%{$fg_bold[blue]%}svn( %{$fg_bold[red]%}"
ZSH_THEME_SVN_PROMPT_SUFFIX="%{$fg_bold[blue]%} )%{$reset_color%} "
ZSH_THEME_SVN_PROMPT_DIRTY=$ZSH_THEME_GIT_PROMPT_UNMERGED
ZSH_THEME_SVN_PROMPT_CLEAN=$ZSH_THEME_GIT_PROMPT_CLEAN
ZSH_THEME_SVN_PROMPT_DELETIONS=$ZSH_THEME_GIT_PROMPT_DELETED
ZSH_THEME_SVN_PROMPT_MODIFICATIONS=$ZSH_THEME_GIT_PROMPT_MODIFIED
ZSH_THEME_SVN_PROMPT_ADDITIONS=$ZSH_THEME_GIT_PROMPT_ADDED
ZSH_THEME_SVN_PROMPT_UNTRACKED=$ZSH_THEME_GIT_PROMPT_UNTRACKED
ZSH_THEME_SVN_PROMPT_REPLACEMENTS=$ZSH_THEME_GIT_PROMPT_RENAMED


function version_control_info()
{
    echo " $(git_super_status)$(svn_prompt_info)"
}


function right_prompt()
{
    local TERMWIDTH
    (( TERMWIDTH = ${COLUMNS} - 2 ))
    local promptsize=${#${(%):--%n@%m %%}}
    local pwdsize=${#${(%):-%~}}
    gitString=$(git_super_status)
    svnString=$(svn_prompt_info)
    local zero='%([BSUbfksu]|([FB]|){*})'
    local gitLength=${#${(S%%)gitString//$~zero/}}
    local svnLength=${#${(S%%)svnString//$~zero/}}
    
    if [[ "$promptsize + $pwdsize + $gitLength + $svnLength" -gt $TERMWIDTH ]]; then
        echo '%c'
    else
        echo '%~'
    fi
}
