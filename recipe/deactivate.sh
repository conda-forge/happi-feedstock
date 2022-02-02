#!/bin/bash
# This deactivates fzf-based fuzzy finding for happi searches.
# This is meant to be sourced from bash.

if [[ "${BASH}" =~ .*"bash" ]]; then
    # Do nothing
    :
else
    echo "'happi' deactivation: only bash shell is supported. Used shell: ${BASH}"
    return
fi

[ -n "$BASH" ] && complete -r happi

unset _fzf_complete_happi
