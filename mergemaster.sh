#!/usr/bin/bash

cd ~/Kancolle/74eo.makai || exit $?
git add -A || exit $?
git commit -a -m Backup || exit $?
git co master || exit $?
git pull || exit $?
git co tablet || exit $?
git merge --no-commit -X theirs master || exit $?
git co Settings/Configuration.xml || exit $?
git co Settings/WindowLayout2.zip || exit $?
git commit -m "Merge branch 'master' into tablet"
git push

