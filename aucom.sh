#!/usr/bin/env bash

# -------------------------------VARIABLES----------------------------------------- #


REPO=$(git config --get remote.origin.url)
VERSION="v1.0"
USE_MESSAGE="
  $(basename $0) - [OPTIONS]

  To use this script you need pass the commit text.
    Example: aucom 'Commit text'

      -h - Help Menu
      -v - Version
"

# ------------------------------------------------------------------------ #


# ------------------------------- EXECUTION ----------------------------------------- #
case "$1" in
    -h) echo "$USE_MESSAGE" && exit 0              ;;
    -v) echo "$VERSION" && exit 0                  ;;
    '') echo "Commit text missing, see -h." && exit 1   ;;
    -*) echo "Invalid option, see -h." && exit 1   ;;
esac

#echo $1
#echo $REPO

#
# git config --local user.email "john.doe@dominio.com.br"
#
# git config --local user.name "John Doe"
#git remote add origin "$REPO"
#
 git add .
#
 git commit -m "$1"
#
 git push -f -u origin
