#!/bin/bash
#阶乘算法
function factorial {
    if [[ $1 -eq 1 ]]
    then
        echo 1
    else
        local temp=$[ $1 - 1 ]
        local value=$(factorial $temp)
        echo $[ $value * $1 ]
    fi
}

read -p "enter value : " val
echo "$(factorial $val)"