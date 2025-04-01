#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

cd $SCRIPT_DIR

git commit -am "auto sync at $(date '+%Y-%m-%d %H:%M:%S')"
git pull --rebase
git push
cd -