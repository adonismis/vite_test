#!/usr/bin/env sh

set -e

npm run build

cd dist

echo > .nojekyll

git init

git checkout -B main

git add .

git commit -m 'deploy'

git push -f git@github.com:adonismis/vite_test.git main:gh-pages

cd -