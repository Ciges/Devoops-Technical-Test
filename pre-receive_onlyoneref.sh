#!/usr/bin/env bash

# number and names of references received
nref=0
declare -a refs

while read OLDREV NEWREV REFNAME; do
    refs+=( "${REFNAME}" ) 
    ((nref=nref+1))
done

# Only one reference can be pushed
if [[ ${nref} -gt 1 ]]; then
    printf "error: %s" "Only one reference is allowed"
    printf " (references received: " 
    for i in `seq 0 $((${nref}-1))`; do 
        if [[ $i -eq 0 ]]; then
            printf "%s" "${refs[$i]}"
        else
            printf ", %s" "${refs[$i]}"
        fi;
    done;
    printf ")\n"

    exit 1
fi;

