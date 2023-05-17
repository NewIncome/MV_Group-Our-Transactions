#!/bin/bash
branch_name=$(git branch --show-current)

if [ $(git branch --show-current) ]
then
  main_branch=$(git branch | head -n 1)

  git status
  git add .
  git status
  git commit -m "f"
  git rebase -i $main_branch $branch_name
else
  echo -e "\nError:\nYou are not inside a git folder."
fi