#!/usr/bin/env bash
for file in ./original/*
do
    dos2unix -q $file
    firstline=`head $file`
    if [ ${firstline:0:1} = ">"  ]; then
        sed -i '1d' $file
    fi
    sed -i ':label;N;s/\n//g;b label' $file
done