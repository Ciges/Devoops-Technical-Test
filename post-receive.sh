#!/usr/bin/env bash

while read OLDREV NEWREV REFNAME; do
    printf "debug OLDREV: %s\n" "${OLDREV}"
    printf "debug NEWREV: %s\n" "${NEWREV}"
    printf "debug REFNAME: %s\n" "${REFNAME}"

    if [[ ${REFNAME} == "refs/heads/master" ]]; then
        printf "Deploying to live\n"
    elif [[ ${REFNAME} == "refs/heads/develop" ]]; then 
        printf "Deploying to staging\n"
    else
        printf "Here should not arrive\n"
    fi;
done

