#!/bin/bash

OLD_REPLACE='src="\/service-worker.js"'
NEW_REPLACE='src="https:\/\/pwamp.github.io\/service-worker.js"'
sed "s/$OLD_REPLACE/$NEW_REPLACE/g" build/bundled/amp/index.html > tmp
mv tmp build/bundled/amp/index.html