#!/bin/bash
# 注意，赋值号=的周围不能有空格，这可能和你熟悉的大部分编程语言都不一样。
#shell 字符串比较 = 两边空格
#以单引号' '包围变量的值时，单引号里面是什么就输出什么，
#以双引号" "包围变量的值时，输出时会先解析里面的变量和命令，而不是把双引号中的变量名和命令原样输出。
name=$(basename $0)
echo $name
if [ $name = "add.sh" ] 
then
    echo $?
    total=$[ $1+$2 ] 
elif [ $name = "mul.sh" ]
then
    total=$[ $1 * $2 ]
fi
echo $name
echo tt is $total
# $# 输出 输入变量的个数 ${!#} 输出最后一个变量 或者脚本名
echo the no is $#
echo the last is ${!#} 

#使用 $* (将所有变量当做一个整体) $@ （将多个独立的单词当做多个参数）抓取命令行上所有变量
echo '---------------------'
count=1
for param in "$*"
do
    echo "#$count is $param"
    count=$[ $count+1 ]
done

count=1
for param in "$@"
do
    echo "#$count is $param"
    count=$[ $count+1 ]

done

# shift 会将输入的变量左移动
echo '---------------------'
echo "the origin is $*"
shift 2
echo "after shift2 is $*"




