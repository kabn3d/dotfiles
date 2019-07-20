ggl(){
  if [ $(echo $1 | egrep "^-[cfs]$") ]; then
    local opt="$1"
    shift
  fi
  local url="https://www.google.co.jp/search?q=${*// /+}"
  local app="/Applications"
  local g="${app}/Google Chrome.app"
  local f="${app}/Firefox.app"
  local s="${app}/Safari.app"
  case ${opt} in
    "-g")   open "${url}" -a "$g";;
    "-f")   open "${url}" -a "$f";;
    "-s")   open "${url}" -a "$s";;
    *)      open "${url}";;
  esac
}

chpwd() {
  ls -lFh ${colorflag}
}

showoptions() {
  set -o | sed -e 's/^no\(.*\)on$/\1  off/' -e 's/^no\(.*\)off$/\1  on/'
}
