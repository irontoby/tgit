#!/bin/bash

# TODO need to write an "installer" for this to set TGIT_DIR

TGIT_DIR="c:\tools\tgit"

if [ "$#" -lt 1 ]; then
  echo "Must supply command for TortoiseGitProc"
  exit 1
fi

CMD=$1
shift

if [ "$#" -ge 1 ]; then
  WPATH=`winpath $1`
  shift
else
  WPATH=`winpath`
fi

wscript "$TGIT_DIR\NoShell.vbs" "$TGIT_DIR\tgit.bat" $CMD /path:"$WPATH" $@ &
