#!/bin/bash
# 定义一个函数，复制数组，并且数组求和, $用法-引用变量是大括号，函数运算小括号，数值运算中括号
function addarray {
    local sum=0
    local newarray
    newarray=($(echo "$@"))
    #echo "newarray is ${newarray[*]}"
    for value in ${newarray[*]}
    do
        sum=$[ $value + $sum ]
    done
    echo $sum
}

oldarray=(1 2 3 4 5)
echo "original is ${oldarray[*]}"
args1=$(echo ${oldarray[*]})
echo "args1 is ${args1[*]}"
val=$(addarray $args1)
echo "sum is $val"