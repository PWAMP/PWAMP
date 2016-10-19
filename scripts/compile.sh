#!/bin/bash

# clear
rm -rf build/bundled/

# build
polymer build

# copy over amp
cp -r amp build/bundled/amp

# copy over sw.html
cp sw.html build/bundled/
