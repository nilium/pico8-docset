#!/bin/bash

eval `luarocks path`
export LUA_PATH=".:$LUA_PATH" 

ldoc --filter ldoc-dash.docset .
ldoc -f markdown --style ldoc-dash/ --template ldoc-dash/ --dir ./PICO-8.docset/Contents/Resources/Documents/ .
