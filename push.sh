#!/bin/bash

# Desc: Push files to git

echo -e "\n==> Adding files to git"
git add .

echo -e "\n==> Commiting files 'updated'"

if [[ $1 == "" ]]; then
  git commit -m "Updated"
else
  git commit -m $1
fi

echo -e "\n==> Pushing files\n"
git push
