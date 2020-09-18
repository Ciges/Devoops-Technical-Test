#!/usr/bin/env bash

while read OLDREV NEWREV REFNAME; do
    if [[ ${REFNAME} == "refs/heads/master" ]]; then
        printf "Deploying to live\n"
    elif [[ ${REFNAME} == "refs/heads/develop" ]]; then 
        printf "Deploying to staging\n"
    fi;
done

