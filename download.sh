#!/bin/bash

mkdir -p dl
cd dl

[ -f grimshot ] || curl -L 'https://raw.githubusercontent.com/swaywm/sway/master/contrib/grimshot' -O

chmod +x *
