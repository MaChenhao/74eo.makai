#!/usr/bin/bash

git add -A
git commit -m Backup
git co master
git pull
git co tablet
git merge --no-commit -X theirs master
git co Settings/Configuration.xml
git commit
git push

