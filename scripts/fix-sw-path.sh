#!/bin/bash

OLD_REPLACE='src="\/service-worker.js"'
NEW_REPLACE='src="https:\/\/pwamp.github.io\/service-worker.js"'
OLD_REPLACE1='data-iframe-src="\/sw.html"'
NEW_REPLACE1='data-iframe-src="https:\/\/pwamp.github.io\/sw.html"'

sed "s/$OLD_REPLACE/$NEW_REPLACE/g" build/bundled/amp/index.html | sed "s/$OLD_REPLACE1/$NEW_REPLACE1/g" > tmp
mv tmp build/bundled/amp/index.html

OLD_REPLACE='\/service-worker.js'
NEW_REPLACE='https:\/\/pwamp.github.io\/service-worker.js'
sed "s/$OLD_REPLACE/$NEW_REPLACE/g" build/bundled/sw.html > tmp
mv tmp build/bundled/sw.html