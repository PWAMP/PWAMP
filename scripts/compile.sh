#!/bin/bash

# clear
rm -rf build/bundled/

# build
polymer build

# copy over amp
cp -r amp build/bundled/amp
