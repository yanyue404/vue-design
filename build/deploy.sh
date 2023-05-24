#!/usr/bin/env sh

set -e

npm run build

cd docs/.vuepress/dist

git init
git config user.name 'yanyue404'
git config user.email '1656800216@qq.com'
git add -A
git commit -m 'deploy'

git push -f git@github.com:yanyue404/vue-design.git master:gh-pages

cd -