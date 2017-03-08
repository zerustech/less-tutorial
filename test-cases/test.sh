#!/bin/bash
base=`cd $(dirname $BASH_SOURCE) && pwd` && source $base/../bootstrap.sh

name=`basename "$1"`

tty_printf -f green "Test Case: $name ...\n"

tty_print_line -l 128

tty_printf "Less source code: \n"

tty_print_line -f cyan -l 32 -c '_'

cat "$1"

tty_printf "\n\n"

tty_printf "Less source code is compiled to the following css:\n"

tty_print_line -f cyan -l 32 -c '_'

lessc $1

tty_printf "\n\n"
