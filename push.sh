#!/bin/sh

setup_git() {
  git config --global user.email "travis@travis-ci.com"
  git config --global user.name "Travis CI"
}

commit_website_files() {
  # This is crucial: The particular way travis ci clones implies single branch,
  # so we need to fix that.
  git config --replace-all remote.origin.fetch +refs/heads/*:refs/remotes/origin/*
  # Now we can fetch any branch
  git fetch origin
  git checkout -b master origin/master
  # Now we copy generated files to current working tree
  cp -r ./_site/assets .
  cp -r ./_site/*.html .
  ls -l
  # Finally we should be able to commit
  git add *.html
  git add assets
  git commit -a --message "Travis build: $TRAVIS_BUILD_NUMBER"
}

upload_files() {
  git remote add origin-pages https://${GH_TOKEN}@github.com/umd-lhcb/umd-lhcb.github.io.git > /dev/null 2>&1
  git push --quiet --set-upstream origin-pages master
}

setup_git
commit_website_files
upload_files
