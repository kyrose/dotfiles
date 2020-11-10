alias upd="sudo apt update && sudo apt upgrade -y && flatpak update -y && sudo snap refresh"

alias src="source ~/.bashrc"
alias mkalias="v ~/.bash_aliases"

alias quit="exit"
alias q="exit"
alias e="exit"

alias ls='ls -C --color=auto --group-directories-first'

#------------------------- lsd shortcuts [WIP] -------------------------#
#alias ls='lsd --group-dirs first --icon auto --color always'

# WIP function to alias more efficiently
#ls() {
#   lsd $1 --group-dirs first --icon auto --color always
#}

#alias la='lsd -A --group-dirs first --icon auto --color always'
#alias ll='lsd -alF --group-dirs first --icon auto --color always'
#alias lst='lsd --tree --depth 2 --total-size --group-dirs first --icon auto --color always'
#alias lstt='lsd --tree --depth 3 --total-size --group-dirs first --icon auto --color always'


#------------------------- conda commands -------------------------#

# Activate env for Aaron's project
#alias sgs="conda activate ~/dev/Survey\ Guidance\ System/sgsenv"
alias sgs="cd ~/dev/surveygs/ && conda activate surveygs && ls"

# Activate genart env
alias genart='cd ~/dev/genart/ && conda activate genart && ls && git status'

# Create conda environments with python 3.8
function mkenv() {
    conda create -n $1 python=3.8 anaconda
    conda activate $1
}

function rmenv() {
    conda remove -n $1 --all
}

alias actv="conda activate"
alias deact="conda deactivate"


#------------------------- pkg/app aliases -------------------------#
alias v="vim"
alias pvpn="sudo protonvpn"
alias glimpse="glimpse-editor &"
alias zenmap="sudo zenmap"
alias shred="sudo bleachbit -s"
alias tar="tar -zxf"
alias ufw="sudo ufw"
alias fd="fd -H"



#------------------------- Josuto file browser cmds -------------------------#
alias fsman="joshuto"


#------------------------- cd <dir> shortcuts -------------------------#
alias dev="cd ~/dev && ls"
alias py="cd ~/dev/python_mitx && ls"
alias kb="cd /keybase/private && ls"
alias kpri="cd /keybase/private/kyrose && ls"
alias lib="cd /keybase/public/kyrose/library && ls"
alias nwg="cd /keybase/private/kyrose,shadowfleas/ && ls"

alias scrape="actv scraper && cd /keybase/private/kyrose,mightyvvolf/scraper/ && ls"
