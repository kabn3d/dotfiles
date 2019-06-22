#!/bin/bash

DOTPATH=~/dotfiles

if ! command -v brew > /dev/null; then
  echo "ERROR" >&2
fi

vagrant init --minimal centos/7
# cp ${DOTPATH}/etc/init ~/vm
vagrant up

