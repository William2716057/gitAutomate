#!/bin/bash

#if git init has not been run yet
git init

git add .

git commit -m "updated"

#if no url provided yet
#take user input for repository
git remote add origin $1

git push -u origin master

