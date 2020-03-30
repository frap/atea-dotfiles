#!/usr/bin/env bash
#set -o errexit
#set -o nounset

is_empty() {
    local var=$1

    [[ -z $var ]]
}

is_not_empty() {
    local var=$1

    [[ -n $var ]]
}

is_file() {
    local file=$1

    [[ -f $file ]]
}

file_exists() {
    local file=$1

    sudo test -e $1
}


is_dir() {
    local dir=$1

    [[ -d $dir ]]
}

is_not_dir() {
    local dir=$1

    [[ ! -d $dir ]]
}

is_link() {
    local dir=$1

    [[ -L $dir ]]
}

matches_regex() {
    local filepath=$1
    local regex=$2

    [[ $filepath =~ $regex ]]
}

# colourful logging capabilities
#set_logging () {
 readonly _bold='';
 readonly _reset="\e[0m";
 readonly _uline="\e[4m";
 readonly _inverse="\e[7m";
 readonly _black="\e[1;30m";
 readonly _blue="\e[1;34m";
 readonly _cyan="\e[1;36m";
 readonly _green="\e[1;32m";
 readonly _orange="\e[1;33m";
 readonly _purple="\e[1;35m";
 readonly _red="\e[1;31m";
 readonly _violet="\e[1;35m";
 readonly _white="\e[1;37m";
 readonly _yellow="\e[1;33m";

 # Logging stuff.
 function e_header()   { echo -e "\n${_bold}${_purple}$@${_reset}"; }
 function e_success()  { echo -e " ${_bold}${_cyan}✔ $@${_reset}"; }
 function e_error()    { echo -e " ${_bold}${_red}✖  $@${_reset}"; }
 function e_arrow()    { echo -e " ${_bold}${_yellow}➜${_reset}${_cyan} $@${_reset}"; }
 function e_info()     { echo -e " ${_green}∴ $@${_reset}"; }
 function e_data()     { echo -e " ${_green}$@${_reset}"; }
 function e_line()     { echo -e " ${_orange}$@${_reset}"; }
 function e_question() { echo -e " ${_violet}$@${_reset}"; }
 function flasher ()   { while true; do printf \\e[?5h; sleep 0.1; printf \\e[?5l; read -s -n1 -t1 && break; done; }
#}
# For testing.
# function assert() {
#   local success modes equals actual expected
#   modes=(e_error e_success); equals=("!=" "=="); expected="$1"; shift
#   actual="$("$@")"
#   [[ "$actual" == "$expected" ]] && success=1 || success=0
#   ${modes[success]} "\"$actual\" ${equals[success]} \"$expected\"" }

# Check to see that a required environment variable is set.
# Use it without the $, as in:
#   require_env_var VARIABLE_NAME
# or
#   require_env_var VARIABLE_NAME "Some description of the variable"
function require_env_var {
  var_name="${1:-}"
  if [ -z "${!var_name:-}" ]; then
    e_error "The required env variable ${var_name} is empty"
    if [ ! -z "${2:-}" ]; then
       echo "  - $2"
    fi
    exit 1
  fi
}

# Check to see that we have a required binary on the path
function require_binary {
  if [ -z "${1:-}" ]; then
    echo "${FUNCNAME[0]} requires an argument"
    exit 1
  fi
  if ! [ -x "$(command -v "$1")" ]; then
    e_error "The required executable '$1' is not on the path."
    exit 1
  fi
}


# trap ctrl-c and call ctrl_c()
trap ctrl_c INT

function ctrl_c() {
  e_error "Trapped CTRL-C - exiting"
}


#function main() {
#    set_logging
#}

#main
