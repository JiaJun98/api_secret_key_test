#!/bin/sh
sudo apt-get update
sudo apt install libssl-dev
sudo apt install -y build-essential
git init
echo "The current working directory is: $(pwd)"
echo "CHECKING FILE ENCRYPTION STATUS"
git-crypt unlock git-crypt-key