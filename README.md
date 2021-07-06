# blaster
Play with https://blast.ncbi.nlm.nih.gov/ from the command line.

## installation

```sh
$ git clone https://github.com/l3nn4rt/blaster
$ cd blaster
```

## usage

```sh
# upload request to Blast
$ ./blaster create
---- sequence begin ----
cagatcagttaccatc
----- sequence end -----
Success! Request ID: E8GT16AB013. (https://blast.ncbi.nlm.nih.gov/Blast.cgi?CMD=Get&RID=E8GT16AB013)

# show requests
$ tree blaster_requests 
blaster_requests
└── E8GT16AB013
    └── sequence.fasta

# fetch completed requests
$ ./blaster sync
Database updated: 1 queries found
----------- old --- new ---
matched:      0       1
unmatched:    0       0
failed:       0       0
---------------------------
ready:        0       1
waiting:      0
new matched:
E8GT16AB013

# show requests
$ tree blaster_requests 
blaster_requests
└── E8GT16AB013
    ├── report.csv
    ├── report.tsv
    ├── report.txt
    └── sequence.fasta

```
