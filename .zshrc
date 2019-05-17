umask 022
limit coredumpsize 0

# keybind
bindkey -d
bindkey -e

PROMPT_SYMBOL='❯'
local p_cdir="%F{blue}%B%~%b%f"$'\n'
# local p_info="%n@%m"
PROMPT="$p_cdir$PROMPT_SYMBOL "

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
[ -s "$BASE16_SHELL/profile_helper.sh" ] && \
eval "$("$BASE16_SHELL/profile_helper.sh")"


# setopt.zsh {{{

# History
setopt SHARE_HISTORY
setopt EXTENDED_HISTORY # Record start and end
setopt HIST_SAVE_NO_DUPS
setopt HIST_NO_STORE
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANkS
setopt HIST_FIND_NO_DUPS

setopt IGNORE_EOF
setopt NO_BEEP
setopt INTERACTIVE_COMMENTS
setopt CORRECT
setopt PRINT_EIGHT_BIT
setopt NO_FLOW_CONTROL
setopt COMPLETE_ALIASES

# setopt AUTO_LIST
# setopt AUTO_MENU

setopt AUTO_CD
function chpwd() {ls -lFh ${colorflag}}
# setopt AUTO_PUSHD
# setopt PUSHD_IGNORE_DUPS

# }}}

# aliases.zsh {{{

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

# Color Themas
alias dark="base16_solarized-dark"
alias light="base16_solarized-light"

# for OSX
alias ql="qlmanage -p *"

# }}}

# Ignore history
zshaddhistory() {
    local line=${1%%$'\n'}
    local cmd=${line%% *}

    # Only those that satisfy all of the following conditions are added to the history
    [[ ${#line} -ge 5
       && ${cmd} != ll
       && ${cmd} != l
       && ${cmd} != ls
       && ${cmd} != la
       && ${cmd} != cd
       && ${cmd} != man
       && ${cmd} != scp
       && ${cmd} != less
       && ${cmd} != ping
       && ${cmd} != open
       && ${cmd} != file
       && ${cmd} != which
       && ${cmd} != whois
       && ${cmd} != drill
       && ${cmd} != uname
       && ${cmd} != md5sum
       && ${cmd} != pacman
	   && ${cmd} != xdg-open
       && ${cmd} != traceroute
       && ${cmd} != speedtest-cli
    ]]
}

