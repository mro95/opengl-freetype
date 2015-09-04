#!/bin/bash
if test ! -d build; then
    mkdir -p build/opengl-freetype
    cp DroidSansMono.ttf build/opengl-freetype
fi
cd build
cmake ..
make;
if [[ "$?" == 0 ]]; then
    cd opengl-freetype
    ./opengl-freetype
fi
