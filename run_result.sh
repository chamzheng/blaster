#!/usr/bin/env bash

for file in ./blaster_requests/*
do
    #echo $file
    singlename=${file##*/}
    #echo $singlename
    head -n 2 $file/report.csv | tail -n 1 | cut -d',' -f3 > finished/$singlename.txt
    cat $file/sequence.fasta >> finished/$singlename.txt
done
