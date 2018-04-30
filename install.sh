#!/bin/bash

clear
curl http://0w.nz/fsociety.ascii

echo "Initializing...\n"
echo "Hello, $(whoami)!\nLong time we don't talk\n"
echo "We'll be creating backup & symlink stuffs"

if [[ "$OSTYPE" == "darwin"* ]]; then
  sh $HOME/.dotfiles/install/mac.sh 
else
  echo "Linux"
fi
