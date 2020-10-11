#!/bin/bash

echo "Checking if NVM exists"

if [[ ! -d "$HOME/.nvm" ]]; then
  echo "NVM not found, installing..."
  # Install NVM
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.36.0/install.sh | bash

  export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
fi

# NVM is a shell funciton so we need to source nvm.sh to use it
source $HOME/.nvm/nvm.sh

# Test if Node 12 is present
ls $HOME/.nvm/versions/node/v12* 1> /dev/null 2>&1
if (($? > 0)); then
  echo "Node 12 not found, installing..."
  nvm install 12
fi

echo "Using Node 12"
nvm use 12

