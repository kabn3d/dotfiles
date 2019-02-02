alias p='print -l'

# Reload zsh config
alias reload!='source ~/.zshrc'
# Reload the shell (i.e. invoke as login shell)
alias relogin='exec $SHELL -l'

# 'clean' + 'cd'
alias clr='cd && clear'
# Clear history
alias clrhs='rm -f ~/.zsh_history && exec -l $SHELL'

# Recursively delete `.DS_Store` files
alias cleanup="find . -name '*.DS_Store' -type f -ls -delete"
# remove broken symlinks
alias clsym="find -L . -name . -o -type d -prune -o -type l -exec rm {} +"

# Detect which 'ls' flavor is in use
if ls --color > /dev/null 2>&1; then # GNU 'ls'
    colorflag='--color'
else # macOS 'ls'
    colorflag='-G'
fi

# Filesystem aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

alias ls='command ls ${colorflag}' # Always use color output for 'ls'
alias l="ls -lahF ${colorflag}"    # Show hidden all files
alias la="ls -AF ${colorflag}"     # Show hidden files
alias ll="ls -lFh ${colorflag}"    # Show all files in long format
alias lld="ls -l | grep ^d"        # Show only directories

alias cp='cp -i'
alias mv='mv -i'
alias mkdir='mkdir -p'

alias rmf="rm -rf"

# Helpers
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias df='df -h'    # disk free, in Gigabytes, not bytes
alias du='du -h -c' # calculate disk usage for a folder

# history
alias history='history 1' # Show all history
alias hs='history | grep'

# Vim
alias vi='vim'
alias v='vim'
alias vir='vim -R' # Read only
alias vr='vim -R'  # Read only
alias nvim='vim -N -u NONE -i NON' # Use plain vim

# Global aliases
alias -g G='| grep'
alias -g GG='| multi_grep'
alias -g W='| wc'
alias -g X='| xargs'
alias -g F='| "$(available $INTERACTIVE_FILTER)"'
alias -g S="| sort"
alias -g V="| tovim"
alias -g N=" >/dev/null 2>&1"
alias -g N1=" >/dev/null"
alias -g N2=" 2>/dev/null"
alias -g VI='| xargs -o vim'

alias -g zrc='~/.zshrc'
alias -g vrc='~/.vimrc'

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com" # to be fix
alias localip="ipconfig getifaddr en1" # to be fix
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"

# etc
alias sudo='sudo ' # Enable aliases to be 'sudo' ed
alias cpwd='echo -n $PWD | pbcopy'

# Shortcuts
alias d="cd ~/Documents/Dropbox"
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias g="git"

