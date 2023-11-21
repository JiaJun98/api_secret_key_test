#!/bin/sh
git init
echo "The current working directory is: $(pwd)"
echo "CHECKING FILE ENCRYPTION STATUS"
git-crypt unlock git-crypt-key
