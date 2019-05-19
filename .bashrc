#       ___           ___           ___           ___           ___           ___
#      /\  \         /\  \         /\  \         /\__\         /\  \         /\  \
#     /::\  \       /::\  \       /::\  \       /:/  /        /::\  \       /::\  \
#    /:/\:\  \     /:/\:\  \     /:/\ \  \     /:/__/        /:/\:\  \     /:/\:\  \
#   /::\~\:\__\   /::\~\:\  \   _\:\~\ \  \   /::\  \ ___   /::\~\:\  \   /:/  \:\  \
#  /:/\:\ \:|__| /:/\:\ \:\__\ /\ \:\ \ \__\ /:/\:\  /\__\ /:/\:\ \:\__\ /:/__/ \:\__\
#  \:\~\:\/:/  / \/__\:\/:/  / \:\ \:\ \/__/ \/__\:\/:/  / \/_|::\/:/  / \:\  \  \/__/
#   \:\ \::/  /       \::/  /   \:\ \:\__\        \::/  /     |:|::/  /   \:\  \
#    \:\/:/  /        /:/  /     \:\/:/  /        /:/  /      |:|\/__/     \:\  \
#     \::/__/        /:/  /       \::/  /        /:/  /       |:|  |        \:\__\
#      ~~            \/__/         \/__/         \/__/         \|__|         \/__/
#

# man bash
export MYHISTFILE=~/.bash_history
export HISTCONTROL=ignoreboth:erasedups
export HISTTIMEFORMAT="%Y/%m/%d %H:%M:%S:   "
export HISTSIZE=50000
export HISTFILESIZE=50000

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

# Append to the Bash history file, rather than overwriting it
shopt -s histappend;

# Autocorrect typos in path names when using `cd`
shopt -s cdspell;

# Detect which `ls` flavor is in use
if ls --color > /dev/null 2>&1; then # GNU `ls`
    colorflag="--color"
    export LS_COLORS='no=00:fi=00:di=01;31:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:'
else # macOS `ls`
    colorflag="-G"
    export LSCOLORS='BxBxhxDxfxhxhxhxhxcxcx'
fi


# aliases{{{

# Reload zsh config
alias reload!='source ~/.zshrc'
# Reload the shell (i.e. invoke as login shell)
alias relogin!='exec $SHELL -l'
# Clear all history
# alias clrhs!='rm -f ~/.zsh_history && exec -l $SHELL'

alias path='echo -e ${PATH//:/\\n}'
# 'clean' + 'cd'
alias clr='cd ~ && clear'

# Recursively delete `.DS_Store` files
alias cleanup="find ${HOME} -name '*.DS_Store' -type f -ls -delete"

# Remove broken symlinks
alias clsym="find -L . -name . -o -type d -prune -o -type l -exec rm {} +"

# Detect which 'ls' flavor is in use
if ls --color > /dev/null 2>&1; then # GNU 'ls'
    colorflag='--color'
else # macOS 'ls'
    colorflag='-G'
fi

# alias{{{
# Filesystem aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

alias ls="ls ${colorflag}" # Always use color output for 'ls'
alias l="ls -lAhF ${colorflag}"    # Show hidden all files
alias la="ls -AF ${colorflag}"     # Show hidden files
alias ll="ls -lFh ${colorflag}"    # Show all files in long format
alias lr="ls -lR ${colorflag}"     # Recursive ls
alias lld="ls -l | grep ^d"        # Show only directories

# Helpers
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# tree
# alias tree = 'tree -a -I "\.DS_Store|\.git|node_modules|vendor\/bundle" -N'

# History
alias hsg='history -E 1| grep'

# vim
alias vi='vim'
alias v='vim'
alias vir='vim -R' # Read only
alias vr='vim -R' # Read only
alias nvim='vim -N -u NONE -i NON' # Use plain vim

# IP addresses
# alias ip="dig +short myip.opendns.com @resolver1.opendns.com" # to be fix
# alias localip="ipconfig getifaddr en1" # to be fix
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"

# etc
alias sudo='sudo ' # Enable aliases to be 'sudo' ed
alias cpwd='echo -n $PWD | pbcopy' # pwd copy for macOS
alias cpwd='echo -n $PWD | pbcopy' # pwd copy for Linux

# git
alias g="git"
# }}}

