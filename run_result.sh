#!/usr/bin/env bash

touch finished/result.csv
echo "Sample Name,Scientific Name,Ratio,Accession,Type" >> finished/result.csv

for file in ./blaster_requests/*
do
    #echo $file
    org_filename=`cat $file/filename`
    #echo $org_filename
    singlename=${org_filename##*/}
    filename=${singlename%.*}
    p_output=`awk-csv-parser --output-separator='|' report.csv | sed '/^$/d' | cut -d'|' -f2,7,9 | head -n 4 | tail -n 3 | sort -k2`
    # echo ${p_output//|/,} | sed  "s/^/$filename,/g"
    echo -n -e $filename","${p_output/|/,}",P" >> finished/result.csv
    ## echo -n '#' > finished/$filename.txt
    ## echo -n $filename'_' >> finished/$filename.txt
    ## head -n 2 $file/report.csv | tail -n 1 | cut -d',' -f3 >> finished/$filename.txt
    ## cat $file/sequence.fasta >> finished/$filename.txt
done

cd finished
zip -q -r ../result.zip *
cd ..
#mv result.zip ~/
