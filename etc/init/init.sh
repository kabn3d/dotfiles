#!/usr/bin/env bash

# git clone
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/vundle


# Check for the existence of the command.
has() {
    type "$1" > /dev/null 2>&1
}

