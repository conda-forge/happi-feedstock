#!/bin/bash
# This deactivates fzf-based fuzzy finding for happi searches.
# This is meant to be sourced from bash.

if [ "${SHELL}" != "bash" ]; then
    echo -e "Only bash shell is supported. Used shell: ${SHELL}"
    exit 1
fi

[ -n "$BASH" ] && complete -r happi

unset _fzf_complete_happi
