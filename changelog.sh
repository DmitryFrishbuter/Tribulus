#!/bin/sh

git checkout master
conventional-changelog -p angular -i CHANGELOG.md -s -r 0
cat CHANGELOG.md
git config --global user.email "travis@travis-ci.org"
git config --global user.name "Travis"
git add CHANGELOG.md
git commit -a -m "Travis build $TRAVIS_BUILD_NUMBER [ci skip]"
git remote set-url origin https://$GITHUB_OAUTH_TOKEN@github.com/DmitryFrishbuter/Tribulus.git
git branch
git push -u origin master --follow-tags
