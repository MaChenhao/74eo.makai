#!/usr/bin/bash

# cd ~/Kancolle/74eo.makai
git add -A || (c=$?; (exit $c))
git commit -a -m Backup || (c=$?; (exit $c))
git co master || (c=$?; (exit $c))
git pull || (c=$?; (exit $c))
git co tablet || (c=$?; (exit $c))
git merge --no-commit -X theirs master || (c=$?; (exit $c))
git co Settings/Configuration.xml || (c=$?; (exit $c))
git co Settings/WindowLayout2.zip || (c=$?; (exit $c))
git commit -m "Merge branch 'master' into tablet" || (c=$?; (exit $c))
git push

