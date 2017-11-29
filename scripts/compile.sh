#!/bin/bash

# clear
rm -rf build/default/

# build
polymer build --add-service-worker

# copy over amp
cp -r amp build/default/amp

# copy over sw.html
cp sw.html build/default/
