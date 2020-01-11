#      ____ ____ ____ ____ ____ ____ ____ ____ ____ ____ ____
#     ||t |||y |||p |||e |||w |||r |||i |||t |||t |||e |||n ||
#     ||__|||__|||__|||__|||__|||__|||__|||__|||__|||__|||__||
#     |/__\|/__\|/__\|/__\|/__\|/__\|/__\|/__\|/__\|/__\|/__\|
#
#             A minimal, informative zsh prompt theme
#

# git status variables
ZSH_THEME_GIT_PROMPT_PREFIX=" %{$reset_color%} %{$fg[green]%} "
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%} ✖"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_ADDED="%{$fg_bold[yellow]%} +"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg_bold[yellow]%} △"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg_bold[yellow]%} -"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg_bold[yellow]%} ➞"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg_bold[black]%} ="
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg_bold[black]%} ?"
ZSH_THEME_GIT_PROMPT_STASHED="%{$fg_bold[blue]%} $"
ZSH_THEME_GIT_PROMPT_BEHIND="%{$fg_bold[cyan]%} ⇣"
ZSH_THEME_GIT_PROMPT_AHEAD="%{$fg_bold[cyan]%} ⇡"
#ZSH_THEME_GIT_PROMPT_DIVERGED="%{$fg_bold[blue]%} ⇕"

# git status display
local git_info='$(git_prompt_info)$(git_prompt_status)%{$reset_color%}'

# current user and hostname
local user_host='%{$fg_bold[cyan]%}%n@%m %{$reset_color%}'
# default: blue, if return code other than 0: red
local prompt='%(?,%{$fg[yellow]%}» %{$reset_color%} ,%{$fg[red]%}» )'

# current directory display
local directory_path='%{$fg_bold[magenta]%}%c'

# last command return code
local return_code='%(?,,%{$fg[black]%} RC=%?%{$reset_color%})'

# distinction between single and multiline prompt
# activate multiline with TYPEWRITTEN_MULTILINE=true
if [[ -z ${TYPEWRITTEN_MULTILINE} ]]; then
  # left prompt definition (singleline)
  PROMPT="${prompt}"
else
  # left prompt definition (multiline)
  PROMPT="${user_host}
${prompt}"
fi

# right prompt definition
RPROMPT="${directory_path}"
RPROMPT+="${git_info}"
RPROMPT+="${return_code}"

# prompt cursor fix when exiting vim
_fix_cursor() {
  echo -ne "\e[3 q"
}
precmd_functions+=(_fix_cursor)
