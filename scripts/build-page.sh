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

./scripts/compile.sh
./scripts/fix-sw-path.sh

rm -rf $TARGET/*
cp -r build/default/* $TARGET/
cp -r googlef958ac3cb70046fa.html $TARGET/

cd $TARGET
git add -A
git commit -m "Update gh-pages"
git push
cd -