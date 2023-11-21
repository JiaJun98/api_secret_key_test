#!/bin/sh
git init
git-crypt init
echo "The current working directory is: $(pwd)"
git-crypt status
echo -n "Enter "lock" or "unlock": "
read VAR
if [ "$VAR" = "lock" ]; then
  git-crypt lock
elif [ "$VAR" = "unlock" ]; then
  git-crypt unlock git-crypt-key
else 
  echo "Invalid input"
fi