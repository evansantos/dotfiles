#!/bin/bash

clear
# curl http://0w.nz/fsociety.ascii

echo -ne "Initializing...\n"
echo -ne "Hello, $(whoami)\n"
echo -e "We'll be creating backup & symlinks to new dotfiles...\n"

if [[ "$OSTYPE" == "linux-gnu"* ]]; then 
  sh $HOME/.dotfiles/install/linux.sh
else
  sh $HOME/.dotfiles/install/mac.sh
fi
