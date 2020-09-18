#!/usr/bin/env bash

while read OLDREV NEWREV REFNAME; do
    printf "DEBUG: OLDREV=%s\n" "${OLDREV}" 
    printf "DEBUG: NEWREV=%s\n" "${NEWREV}" 
    printf "DEBUG: REFNAME=%s\n" "${REFNAME}" 

    git rev-list ${OLDREV}..${NEWREV}
done

exit 1
