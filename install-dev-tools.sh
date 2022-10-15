#!/bin/bash

cliTools=('git', 'nginx', 'jq', 'awscli', 'aws-cdk')
uxTools=('visual-studio-code', 'postman', 'boop', 'alfred', 'docker', 'dbeaver-community')

function installCliTools() {
    tools=("$@")
    for t in "${tools[@]}";
        do
            printf "Installing -- $t\n";
            brew install ${t};
        done
}

function installUxTools() {
    tools=("$@")
    printf "Installing UX development tools"
    for t in "${tools[@]}";
        do
            printf "Installing -- $t\n";
            brew install --cask ${t};
        done
}

function runScript() {
    installCliTools "${cliTools[@]}"
    installUxTools "${uxTools[@]}"
}

runScript