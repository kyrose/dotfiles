# Map commands replaced by Rust tools
cat() {
    for file in "$@"; do
        bat "$file"
    done
}

du() {dust -s --depth=1 "$@"}

grep() {rg --pretty --smart-case "$@"}

ls() {exa --group-directories-first "$@"}

ps() {procs "$@"}

sed() {sd "$@"}

cd() {z $1 && ls --all}

# Core shortcuts
alias rm='rm -rIv'      # prompt before removing 3+ files and print what is done
alias mv='mv -iv'       # ask before overwriting files and print what is done
alias cp='cp -iv'       # ask before copying over files and print what is done
alias ln='ln -iv'       # ask before overwriting files and print what is done
alias mkdir='mkdir -p'  # make missing parent directories when creating folders
alias la='ls -a'        # show hidden and dot files
alias ll='ls -lhm --git'   # show table of file metadata with modified date and git status
alias lt='ls -T'        # recurse directories as a tree

# Custom shortcuts
alias v='nvim'
alias apt='sudo apt'
alias python='python3'
alias py='python3'
alias src='source $ZDOTDIR/.zshrc'
alias xdir='nvim $XDG_CONFIG_HOME/user-dirs.dirs'
alias editorconfig='cp $HOME/.dots/.editorconfig .editorconfig'
alias cargotoml='cp -f $HOME/.dots/manifests/Cargo.toml Cargo.toml'
alias packagejson='cp -f $HOME/.dots/manifests/package.json package.json'
alias kbd='cd /keybase/private/kyrose'



# Exit terminal
foreach aliaskey (quit q e) {
    alias $aliaskey='exit'
}
