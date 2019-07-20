#!/bin/bash


cmd_exists() {
  type "$1" > dev/null 2>&1
}


has() {
  cmd_existsd
}


get_os() {

}


get_os_ver() {

}


is_git_repository() {
  git rev-parse &> /dev/null
}

print_err() {

}
