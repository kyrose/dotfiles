# Main shortcuts
alias mv='mv -iv' # Ask before overwriting files;print what was done
alias cp='cp -iv' # Same as above q
alias ln='ln -iv' # Ask before removing destinations; print each linked file
alias mkdir='mkdir --parents' # Make missing parent dirs when creating folders
alias grep='grep --color=auto --exclude-dir=".git" --exclude-dir="node_modules"' # Grep with colors and ignore common directories
alias ls='ls -C --color=auto --group-directories-first' # ls with colors; group directories together
# alias ls='ls -C --color=auto --group-directories-first --hyperlink=always

# Shortcuts to well-traffic directories
alias dev='cd ~/dev/ && ls'
alias auto='cd ~/dev/automate/ && ls'
alias docs='cd ~/docs/ && ls'
alias tmp='cd ~/tmp/ && ls'
alias shots='cd ~/tmp/screenshots/ && ls'
alias kbdir='cd /keybase/private/kyrose/ && ls'

# Custom truncations
alias v='vim'
alias q='exit'
alias e='exit'

# More ls shortcuts
alias la='ls -A' # do not ignore hidden files and directories
alias lf='ls -F' # visual classification: dir=`/`, link=`@`, executable=`*` 
alias laf='la -F'
alias ll='lf -ao' # list all and print in long listing format (no group)
alias lr='ls -R' # list subdirectories recursively
alias lar='la -R'