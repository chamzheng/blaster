#!/usr/bin/env bash

./blaster delete
for file in ./original/*
do
    while true
    do
        singlename=${file##*/}
        export filename=$singlename
        ./blaster create $file
        if [ $? -eq 0 ];then
            break
        fi
        sleep 1
    done
done

# ./blaster-oneline-create ./original/*

echo "Task create complete! Please wait..."


while true
do
    ./blaster sync
    if [ $? -eq 0 ];then
        break
    fi
done