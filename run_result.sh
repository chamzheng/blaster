#!/usr/bin/env bash

touch finished/result.txt
echo "Sample Name|Scientific Name|Ratio|Accession|Type" >> finished/result.txt

for file in ./blaster_requests/*
do
    #echo $file
    org_filename=`cat $file/filename`
    #echo $org_filename
    singlename=${org_filename##*/}
    filename=${singlename%.*}
    awk-csv-parser --output-separator='|' $file/report.csv | cut -d'|' -f2,7,9 | sort -r -k2 | sed '/^$/d' |head -n 4 | tail -n 3 > finished/output
    # echo ${p_output//|/,} | sed  "s/^/$filename,/g"
    sed -i "s/^/$filename|/g" finished/output
    sed -i "s/$/|Per. ident/g" finished/output
    cat finished/output >> finished/result.txt
    rm finished/output

    awk-csv-parser --output-separator='|' $file/report.csv | cut -d'|' -f2,5,9 | sort -r -k2 | sed '/^$/d' |head -n 4 | tail -n 3 > finished/output
    # echo ${p_output//|/,} | sed  "s/^/$filename,/g"
    sed -i "s/^/$filename|/g" finished/output
    sed -i "s/$/|Query Cover/g" finished/output
    cat finished/output >> finished/result.txt
    rm finished/output

    # echo ${p_output//|/,} | sed  "s/^/$filename,/g" | sed "s/$/,P/g" >> finished/result.csv
    ## echo -n '#' > finished/$filename.txt
    ## echo -n $filename'_' >> finished/$filename.txt
    ## head -n 2 $file/report.csv | tail -n 1 | cut -d',' -f3 >> finished/$filename.txt
    ## cat $file/sequence.fasta >> finished/$filename.txt
done


cd finished
zip -q -r ../result.zip *
cd ..
#mv result.zip ~/
