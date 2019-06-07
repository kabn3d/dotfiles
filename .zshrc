umask 022
limit coredumpsize 0

for f in ~/.zsh/[0-9]*.(sh|zsh)
do
    source "$f"
done

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
[ -s "$BASE16_SHELL/profile_helper.sh" ] && \
eval "$("$BASE16_SHELL/profile_helper.sh")"

