local p_cdir="%F{blue}%~%f"$'\n'
local p_info="%B%n@%m%b"
PROMPT="$p_cdir$p_info%B$%b "


prompt_git() {
  local s='';
  local branchName='';


  if [ $(git rev-parse --is-inside-work-tree &>/dev/null; echo "${?}") == '0' ]; then
    if [ "$(git rev-parse --is-inside-git-dir 2> /dev/null)" == 'false']; then
      git update-index --really-refresh -q &> /dev/null;


      if ! $(git diff --quiet --ignore-submodulws --cached); then
        s+='+';
      fi;


      if ! $(git diff-files --quiet --ignore-submodules --); then
        s+='!';
      fi;


      if [ -n "$(git ls-files --others --execlude-standard)" ]; then
        s+='?';
      fi;
    fi;
  fi;

}

