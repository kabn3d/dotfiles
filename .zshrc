umask 022
limit coredumpsize 0

# keybind like emacs
bindkey -e

local p_cdir="%F{blue}%B%~%b%f"$'\n'
local p_info="%B%n@%m%b"
PROMPT="$p_cdir$p_info%B$%b "

# setopt.zsh {{{
setopt SHARE_HISTORY
setopt EXTENDED_HISTORY # Add Unix time & run time
setopt HIST_SAVE_NO_DUPS
setopt HIST_NO_STORE # No store "history" & "fc -l"
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANkS
setopt HIST_FIND_NO_DUPS

setopt IGNORE_EOF
setopt NO_BEEP
setopt INTERACTIVE_COMMENTS
setopt CORRECT
setopt CORRECT_ALL
setopt PRINT_EIGHT_BIT
setopt PRINT_EXIT_VALUE
setopt NO_FLOW_CONTROL
setopt COMPLETE_ALIASES
setopt LIST_TYPES
setopt CHASE_LINKS
setopt NOAUTOREMOVESLASH

setopt AUTO_CD
setopt AUTO_MENU
setopt AUTO_LIST
setopt AUTO_PARAM_KEYS # remove trailing spaces after completion if needed
setopt AUTO_PARAM_SLASH
setopt AUTO_PUSHD
setopt PUSHD_IGNORE_DUPS
# }}}

# aliases.zsh {{{
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# Detect which 'ls' flavor is in use
if ls --color > /dev/null 2>&1; then # GNU 'ls'
    colorflag='--color'
else # macOS 'ls'
    colorflag='-G'
fi

alias ls="ls ${colorflag}" # Always use color output for 'ls'
alias l="ls -lAhF ${colorflag}"    # Show hidden all files
alias la="ls -AF ${colorflag}"     # Show hidden files
alias ll="ls -lFh ${colorflag}"    # Show all files in long format
alias lr="ls -lR ${colorflag}"     # Recursive ls
alias lld="ls -l | grep ^d"        # Show only directories

function chpwd() {ls -lFh ${colorflag}}

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
alias vr='vim -R'  # Read only
alias nvim='vim -N -u NONE -i NON' # Use plain vim

# etc
alias g="git"
alias tm="tmux"

alias sudo='sudo ' # Enable aliases to be 'sudo' ed
alias dcp='echo -n $PWD | pbcopy' # pwd copy for macOS
alias dcp='echo -n $PWD | pbcopy' # pwd copy for Linux

alias reload!='source ~/.zshrc'

# Reload the shell (i.e. invoke as login shell)
alias relogin!='exec $SHELL -l'

alias path='echo -e ${PATH//:/\\n}'
# clean and cd
alias clr='cd ~ && clear'

# Recursively delete `.DS_Store` files
alias cleanup="find ${HOME} -name '*.DS_Store' -type f -ls -delete"

# Remove broken symlinks
alias clsym="find -L . -name . -o -type d -prune -o -type l -exec rm {} +"

# }}}

# Ignore command
zshaddhistory() {
    local line=${1%%$'\n'}
    local cmd=${line%% *}

    # Only those that satisfy all of the following conditions are added to the history
    [[ ${#line} -ge 5
       && ${cmd} != v
       && ${cmd} != t
       && ${cmd} != ..*
       && ${cmd} != ll
       && ${cmd} != l
       && ${cmd} != ls
       && ${cmd} != la
       && ${cmd} != cd
       && ${cmd} != man
       && ${cmd} != cat
       && ${cmd} != pwd
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

# functions {{{
function showoptions() {
  set -o | sed -e 's/^no\(.*\)on$/\1  off/' -e 's/^no\(.*\)off$/\1  on/'
}
# }}}
#
# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
[ -s "$BASE16_SHELL/profile_helper.sh" ] && \
eval "$("$BASE16_SHELL/profile_helper.sh")"

