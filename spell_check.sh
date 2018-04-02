#!/bin/bash

bin_whence="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

ASPELL_PROJECT_FILE=$bin_whence/aspell_project.pws

find ./ -type f \
| egrep -i '(.md)$' \
| xargs -n1 -i sh -c "aspell --mode=sgml -p $ASPELL_PROJECT_FILE -c \"{}\" < /dev/tty"

find ./ -type f \
| egrep -vi '(.md)$' \ 
| xargs -n1 -i sh -c "aspell -p $ASPELL_PROJECT_FILE -c \"{}\" < /dev/tty"

