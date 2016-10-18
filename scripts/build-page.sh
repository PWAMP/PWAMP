#!/bin/bash
TARGET=../PWAMP-gh-pages

# clone or update
if [ ! -d "$TARGET" ]; then
  git clone https://github.com/PWAMP/PWAMP.github.io.git $TARGET
  cd $TARGET
else
  cd $TARGET
  git pull -uv  
fi

# go back
cd -

rm -rf $TARGET/*

polymer build

cp -r src-amp build/bundled/amp

cp -r build/bundled/* $TARGET/

cd $TARGET
git add -A
git commit -m "Update gh-pages"
git push
cd -