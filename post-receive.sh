#!/usr/bin/env bash

while read OLDREV NEWREV REFNAME; do
    if [[ ${REFNAME} == "ref/heads/master" ]]; then
        printf "Deploying to live\n"
    elif [[ ${REFNAME} == "ref/heads/develop" ]]; then 
        printf "Deploying to staging\n"
    fi;
done

