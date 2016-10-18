#!/bin/bash
mkdir -p ./build/bundled/amp
fswatch -0 -r -l 0.08 -o ./src-amp \
| while read -d "" event
    do
    	cp ./src-amp/* ./build/bundled/amp/
      echo -e " \033[1;32mDone ( files: " $event ") @ \033[1;33m$(date) | \033[1;3$(( $RANDOM * 6 / 32767 + 1 ))m $(head -c 10 /dev/random | base64)\033[0m"
     done