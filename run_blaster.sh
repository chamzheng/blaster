#!/usr/bin/env bash

./blaster delete
./blaster-oneline-create ./original/*
echo "Task create complete! Please wait..."
sleep 300

./blaster sync