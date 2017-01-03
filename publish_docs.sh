#!/bin/sh

mv doc /tmp/doc/

git checkout master

yard doc

git checkout gh-pages

cd doc

for i in `ls`
do
    rm -r ../$i 
    mv $i ../$i
done

cd -
git add MoxiworksPlatform

git commit -a -m "Documentation Update"

git checkout master

