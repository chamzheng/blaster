#!/usr/bin/env bash

./blaster delete
for file in ./original/*
do
    ./blaster-oneline-create $file
    sleep 10
done
echo "Task create complete! Please wait..."


sleep 300

./blaster sync