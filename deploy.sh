
set -e


npm run build

cd dist


git init
git add -A
git commit -m 'deploy'


git push -f git@github.com:ifedollars99/project-3.git main:gh-pages

cd -
