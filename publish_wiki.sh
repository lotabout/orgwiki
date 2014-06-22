#!/bin/bash

echo "Using emacs to publish all org projects..."
emacs --batch -l ~/.emacs -f org-publish-all

cur_DATETIME=$(date +"%Y/%m/%d-%H:%M")

echo "Commit changes to git"
cd ~/Dropbox/org/orgwiki_html
git checkout gh-pages
git add .
git commit -a -m "Auto commit on $cur_DATETIME"

git push origin gh-pages --force
