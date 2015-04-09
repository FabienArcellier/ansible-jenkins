#!/bin/bash -x

DIRECTORY=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
ROOT_PATH="${DIRECTORY}/.."
cd "${ROOT_PATH}"

# Deploy jenkins server
export PYTHONUNBUFFERED=1
ansible-playbook -i "inventory" "jenkins.yml" -check @*
ansible-playbook -i "inventory" "jenkins-test.yml" @*