#!/bin/env sh
set -x
git checkout master || git checkout --orphan master
git rm -rf .
mv build/* build/.* .
git add -A .
git commit -m "$(date +'Blog updated at %d/%m/%y %H:%M')"
git push --set-upstream origin master
git checkout dev
