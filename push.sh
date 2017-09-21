#!/bin/sh

setup_git() {
  git config --global user.email "travis@travis-ci.org"
  git config --global user.name "Travis CI"
}

commit_changelog() {
  git checkout -b master
  git add . CHANGELOG.md
  git commit -a -m "Travis build: $TRAVIS_BUILD_NUMBER"
}

upload_files() {
  git remote add origin-pages https://"$GITHUB_OAUTH_TOKEN"@github.com/DmitryFrishbuter/Tribulus.git > /dev/null 2>&1
  git push --quiet -u origin master
}
