#!/usr/bin/env bash

for file in ./blaster_requests/*
do
    #echo $file
    org_filename=`cat $file/filename`
    #echo $org_filename
    singlename=${org_filename##*/}
    filename=${singlename%.*}
    echo -n '#' > finished/$filename.txt
    echo -n $filename'_' >> finished/$filename.txt
    head -n 2 $file/report.csv | tail -n 1 | cut -d',' -f3 >> finished/$filename.txt
    cat $file/sequence.fasta >> finished/$filename.txt
done

cd finished
zip -q -r ../result.zip *
cd ..
#mv result.zip ~/
