#!/bin/bash
count=1
cat mul.sh | while read line
do
    echo "line$count: $line"
    count=$[ $count+1 ]
done