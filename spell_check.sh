#!/bin/bash

bin_whence="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

ASPELL_PROJECT_FILE=$bin_whence/aspell_project.pws

find ./ -type f \
| egrep -i '(.md|.txt|.tex)$' \
| xargs -n1 -i sh -c "$bin_whence/run_aspell.sh -p $ASPELL_PROJECT_FILE \"{}\" < /dev/tty"
