umask 022
limit coredumpsize 0

for f in ~/.zsh/[0-9]*.(sh|zsh); do
    source "$f"
done

