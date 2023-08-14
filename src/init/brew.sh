#!/bin/bash

# error handling

# Install command-line tools using Homebrew.
if ! command -v brew > /dev/null; then
    printf "\n==> Installing homebrew...\n"
    /usr/bin/ruby -e "$( curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install )"
fi

# error: brew doctor
if test ! "$( brew doctor )"; then
    echo "ERROR:" >&2
    exit 1
fi

formulae=(
    # git
    fzf
    # vim
    # tmux
)

casks=(
)

printf "\n==> Installing homebrew packages...\n"

for formula in "${formulae[@]}"; do
    pkg_name=$( echo "${formula}" | awk '{print $1}' )
    if brew list "${pkg_name}" > /dev/null 2>&1; then
        printf "${pkg_name} already installed... skipping.\n"
    else
        brew install "${formula}"
    fi
done

for cask in "${casks[@]}"; do
    pkg_name=$( echo "$cask" | awk '{print $1}' )
    if brew cask list "${pkg_name}" > /dev/null 2>&1; then
        printf "${pkg_name} already installed... skipping.\n"
    else
        brew cask install "${cask}"
    fi
done

printf "\nComplete!\n"

