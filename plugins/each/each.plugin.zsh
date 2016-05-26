#!/bin/sh

each() {
    : ${1?"Usage: each <list-name> [command] ..."}
    local array_name=$1
    shift
    for element in ${(P)${array_name}}; do
        (cd $element; echo ">>> ${fg[yellow]}$element$reset_color"; $@)
    done;
}

