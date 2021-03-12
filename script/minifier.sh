#!/bin/sh
echo $1
mkdir github && cd github
git clone https://github.com/$1.git workspace
cd workspace
git config pull.rebase true
git pull
ls

CSS=$(find . -type f -name "*.css")
JS=$(find . -type f -name "*.js")

ITEMS=0
for c in $CSS
do
minifier $c
ITEMS=$(($ITEMS + 1))
done

for j in $JS
do
minifier $j
ITEMS=$(($ITEMS + 1))
done

echo "Minified $ITEMS files"