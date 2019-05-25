#!/bin/bash
#数组元素乘以2
function mularr {
    local oldarr
    local newarr
    local i
    local size
    oldarr=($(echo "$@"))
    newarr=($(echo "$@"))
    size=$[ $# - 1 ]
    for (( i=0;i <= $size ; i++ )){
        newarr[$i]=$[ ${oldarr[$i]} * 2 ]
    }
    echo ${newarr[*]}
}

oriarr=(1 2 3 4 5)
args1=$(echo ${oriarr[*]})
echo "args1 is ${args1[*]}"
result=($(mularr $args1))
echo "result is ${result[*]}"


