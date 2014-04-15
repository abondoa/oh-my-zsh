

PROMPT='%{${fg_bold[yellow]}%}%n%{$reset_color%}%{${fg[yellow]}%}@%m%{$reset_color%} $(git_prompt_info)$(svn_prompt_info)%(?,,%{${fg_bold[white]}%}[%?]%{$reset_color%} )%{$fg[yellow]%}%#%{$reset_color%} '
RPROMPT='%{$fg_bold[cyan]%}%~%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git( %{$fg_bold[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg_bold[blue]%} )%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$reset_color%}%{$fg[red]%} ✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""

ZSH_THEME_SVN_PROMPT_PREFIX="%{$fg_bold[blue]%}svn(%{$fg_bold[red]%}"
ZSH_THEME_SVN_PROMPT_SUFFIX="%{$fg_bold[blue]%})%{$reset_color%} "
ZSH_THEME_SVN_PROMPT_DIRTY="! "
ZSH_THEME_SVN_PROMPT_CLEAN=" "
ZSH_THEME_SVN_PROMPT_DELETIONS="D "
ZSH_THEME_SVN_PROMPT_MODIFICATIONS="M "
ZSH_THEME_SVN_PROMPT_ADDITIONS="A " 
ZSH_THEME_SVN_PROMPT_UNTRACKED="? "
