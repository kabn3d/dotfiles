umask 022
limit coredumpsize 0

bindkey -d

local p_cdir="%F{blue}%B%~%b%f"$'\n'
local p_info="%B%n@%m%b"
PROMPT="$p_cdir$p_info%B$%b "

for f in ~/.zsh/[0-9]*.(sh|zsh)
do
    source "$f"
done

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
[ -s "$BASE16_SHELL/profile_helper.sh" ] && \
eval "$("$BASE16_SHELL/profile_helper.sh")"

