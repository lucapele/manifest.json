#!/usr/bin/env bash

readonly _dir="$(dirname "$(readlink -f "$0")")"

# shellcheck disable=SC2034
_arg="$1"

if [[ "$1" == "install" ]] ; then

  printf "%s\\n" "Create symbolic link to /usr/local/bin"

  if [[ -e "${_dir}/bin/otseca" ]] ; then

    if [[ ! -e "/usr/local/bin/otseca" ]] ; then

      ln -s "${_dir}/bin/otseca" /usr/local/bin

    fi

  fi

elif [[ "$1" == "uninstall" ]] ; then

  printf "%s\\n" "Remove symbolic link from /usr/local/bin"

  if [[ -L "/usr/local/bin/otseca" ]] ; then

    unlink /usr/local/bin/otseca


fi

exit 0
