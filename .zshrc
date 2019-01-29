umask 022
limit coredumpsize 0
bindkey -e

PROMPT_SYMBOL='❯'
local p_cdir="%B%~%b"$'\n'
# local p_info="%n@%m"
PROMPT="$p_cdir$PROMPT_SYMBOL "

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
[ -s "$BASE16_SHELL/profile_helper.sh" ] && \
eval "$("$BASE16_SHELL/profile_helper.sh")"


# setopt.zsh {{{

# History
setopt share_history
setopt hist_save_no_dups
setopt hist_no_store
setopt extended_history # Record start and end
setopt hist_ignore_dups
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt hist_reduce_blanks
setopt hist_find_no_dups
setopt ignore_eof
setopt no_beep
setopt interactive_comments
setopt correct
setopt print_eight_bit
setopt no_flow_control

setopt auto_cd
function chpwd() {ls -lFh -G}
# setopt auto_pushd
# setopt pushd_ignore_dups

# }}}
#
#
# aliases.zsh {{{

# Reload zsh config
alias reload!='source ~/.zshrc'
# Reload the shell (i.e. invoke as login shell)
alias relogin!='exec $SHELL -l'

# Clear all history
alias clrhs!='rm -f ~/.zsh_history && exec -l $SHELL'

# 'clean' + 'cd'
alias clr='cd && clear'

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

alias ls="command ls ${colorflag}" # Always use color output for 'ls'
alias l="ls -lahF ${colorflag}"    # Show hidden all files
alias la="ls -AF ${colorflag}"     # Show hidden files
alias ll="ls -lFh ${colorflag}"    # Show all files in long format
alias lr="ls -lR ${colorflag}"     # Recursive ls
alias lld="ls -l | grep ^d"        # Show only directories

alias rmf="rm -rf"

# Helpers
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

alias df='df -h' # disk free, in Gigabytes, not bytes
alias du='du -h -c' # calculate disk usage for a folder

# History
alias history='history 1' # Show all history
alias hs='history | grep'

# Vim
alias vi='vim'
alias v='vim'
alias vir='vim -R' # Read only
alias vr='vim -R' # Read only
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

# Shortcuts my dotfile
alias -g zrc='~/.zshrc'
alias -g vrc='~/.vimrc'
alias -g tcnf='~/.tmux.conf'

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

# Shortcuts
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias pj="cd ~/projects"
alias dtf="cd ~/mine/dotfiles"
alias wrk="cd ~/workspace"

# Color Themas
alias dark="base16_solarized-dark"
alias light="base16_solarized-light"

# OS info
alias OS="cat /etc/os-release"
alias RHEL="cat /etc/redhat-release"

# }}}

