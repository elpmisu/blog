#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
nr build

# 进入生成的文件夹
cd dist

# 如果是发布到自定义域名
# echo 'www.yourwebsite.com' > CNAME

git init
git add -A
git commit -m 'deploy: 发布到gh-pages'

# 如果你想要部署到 https://USERNAME.github.io
git push -f https://github.com/Elpmis007/blog.git master:gh-pages

cd -