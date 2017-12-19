# Belong in .oh-my-zsh/themes
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"


if [[ $UID -eq 0 ]]; then
    local user_host='%{$terminfo[bold]$fg[red]%}%n@%m%{$reset_color%}'
    local user_symbol='#'
else
    #local user_host='%{$terminfo[bold]$fg[green]%}%n@%m%{$reset_color%}'
    local user_host='%{$terminfo[bold]$fg[blue]%}%n%{$reset_color%}@%{$terminfo[bold]$fg[green]%}%m%{$reset_color%}'
fi

local current_dir='%{$terminfo[bold]$fg[blue]%}%3~%{$reset_color%}'

local git_branch='$(git_prompt_info)%{$reset_color%}'

PROMPT=" ${user_host} ${current_dir} ${git_branch}
  "

RPS1="%B${return_code}%b"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}‹"
ZSH_THEME_GIT_PROMPT_SUFFIX="› %{$reset_color%}"

