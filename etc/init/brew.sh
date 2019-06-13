#!/usr/bin/env bash

# Install command-line tools using Homebrew.
if test ! "$( command -v brew )"; then
    printf "\n\n==>Installing homebrew.\n"
    echo "=============================="
    /usr/bin/ruby -e "$( curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install )"
fi

# error: brew doctor
# if test ! "$( brew doctor )"; then
#     echo "ERROR:"
#     exit 1
# fi

formulae={
    git
    vim
    tmux
    reattach-to-user-namespace # for copy in tmux
    fzf
    tree
    python3
    zplug
    clisp
}

casks={
    google-chrome
    # virtualbox
    vagrant
    visual-studio-code
}

printf "\n\n==>Installing homebrew packages...\n"
echo "=============================="

for formula in "${formulae[@]}"; do
    brew install $formula
done

for cask in "${casks[@]}"; do
    brew cask install $cask
done

