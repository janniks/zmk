#!/bin/bash

cd app

# make sure to run in vscode container env via docker
west build -d build/right -b nice_nano_v2 -- -DSHIELD=maple_right
west build -d build/left -b nice_nano_v2 -- -DSHIELD=maple_left

cp build/right/zephyr/zmk.uf2 ../right.uf2
cp build/left/zephyr/zmk.uf2 ../left.uf2
