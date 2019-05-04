#!/bin/bash
for a in $(cat address)
do
	echo "$a is the place where i lived"
done > out.txt
