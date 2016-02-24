#!/usr/bin/bash

cd ~/Kancolle/74eo.makai
git commit -a -m Backup
git co master
git pull
git co tablet
git merge --no-commit -X theirs master
git co Settings/Configuration.xml
git commit -m "Merge branch 'master' into tablet"
git push

