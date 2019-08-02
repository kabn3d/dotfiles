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


# alias
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# ls
alias l="ls -lAhF"
alias ll="ls -lFh"
alias lld="ls -l | grep ^d"

# Helpers
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# History
alias hsg='history -E 1| grep'

# vim
alias v='vim'
alias nvim='vim -N -u NONE -i NON' # Use plain vim

# etc
alias g="git"
alias tx="tmux"

alias sudo='sudo ' # Enable aliases to be 'sudo' ed

alias pwdc='pwd | tr -d "\n" | pbcopy'
alias pwdc='pwd | tr -d "\n" | pbcopy'

# Reload bash config
alias reload='source ~/.bashrc'
# Reload the shell (i.e. invoke as login shell)
alias relogin='exec $SHELL -l'

# 'clean' + 'cd'
alias c='cd ~ && clear'
