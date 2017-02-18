#!/bin/bash
#TODO: instead of just assuming we're going forward all the time,
#      catch keypress and move up/down indexed list?
for i in $(find slides -name "*.k" | sort); do
    k $i
    read -p ""
done
