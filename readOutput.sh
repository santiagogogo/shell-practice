#!/bin/bash

outfile="insert.sql"
IFS=','
while read id name class
do
    cat >> $outfile << EOF
    insert into person (id,name,age) values 
    ('$id','$name','$class');
EOF
done < ${1}