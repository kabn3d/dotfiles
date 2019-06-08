#!/usr/bin/env bash

# Install command-line tools using Homebrew.
if test ! "$( command -v brew )"; then
    echo "Installing homebrew"
    /usr/bin/ruby -e "$( curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install )"
fi
# full-path or ruby command

echo -e "\\n\\n==>Installing homebrew packages..."
echo "=============================="

formulae={
    vim
    git
    tmux
    reattach-to-user-namespace # for copy in tmux
    fzf
    tree
    python
    zplug
}

cask={
    ...
}


# After the install, setup fzf
echo -e "\\n\\n==>Running fzf install script..."
echo "=============================="
/usr/local/opt/fzf/install --all --no-bash --no-fish



# Change the default shell to zsh
zsh_path="$( command -v zsh )"
if ! grep "$zsh_path" /etc/shells; then
    echo "adding $zsh_path to /etc/shells"
    echo "$zsh_path" | sudo tee -a /etc/shells
fi

if [[ "$SHELL" != "$zsh_path" ]]; then
    chsh -s "$zsh_path"
    echo "default shell changed to $zsh_path"
fi

