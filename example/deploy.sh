#!/usr/bin/env sh

# abort on errors
set -e

# build
fvm flutter build web  -t lib/main_story_book.dart --release

# navigate into the build output directory
cd build/web

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

git init
git checkout gh-pages
git add -A
git commit -m 'deploy'
git push -f https://github.com/kryptogo/kg-kit-flutter.git

# if you are deploying to https://<USERNAME>.github.io
# git push -f git@github.com:t42ji2ji/t42ji2ji.github.io.git main


#finish
echo "Deployed to https://kryptogo.github.io/kg-kit-flutter/"
cd -