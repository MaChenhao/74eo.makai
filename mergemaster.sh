#!/usr/bin/bash

cd ~/Kancolle/74eo.makai
git add -A
git commit -a -m Backup
git co master
git pull
git co tablet
git merge --no-commit -X theirs master
git co Settings/Configuration.xml
git co Settings/WindowLayout2.zip
git commit -m "Merge branch 'master' into tablet"
git push

