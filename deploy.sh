set -e

# 生成静态文件
npm run docs:build



# 进入生成的文件夹
cd docs/.vuepress/dist

# 如果是发布到自定义域名
echo 'zhengmaster.org.cn' > CNAME

git init
git add -A
git commit -m 'deploy'

# 如果发布到 https://<USERNAME>.github.io
git push -f git@github.com:ZhengMaster2020/blog-vuepress.git master 

# 如果发布到 https://<USERNAME>.github.io/<REPO>
# git push -f git@github.com:<USERNAME>/<REPO>.git master:gh-pages

cd -