#!/bin/bash
# --双破折号分离用户输入变量，然后分别输入出，使用 while case for
while [ -n "$1" ]
do
    case "$1" in
        -a) echo "-a means u r afool" ;;
        -b) echo "-b means u r bitch" ;;
         c) echo "c mean u r cool" ;;
        --) shift
            break;;
         *) echo 'u r luck';;
    esac
    shift
done
count=1
for param in $@
do
    echo "#$count is $param"
    count=$[ $count+1 ]
done