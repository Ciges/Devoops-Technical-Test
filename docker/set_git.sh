#!/usr/bin/env bash
# Get current script directory (where the id_rsa key for docker test env has been saved)
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

GIT_SSH_COMMAND="ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no -p 52311 -i ${DIR}/id_rsa"
export GIT_SSH_COMMAND
