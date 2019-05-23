#!/bin/bash
# STDOUT 标准输出 -1 STDIN 标准输入-0  STDERR 标注错误-2
#重定向
ls -al mul.sh > testfile
#重定向追加
ls -al  test1 >> testfile
#正常信息和错误信息分开输出
ls -al address ssss.sh 1> testfile2 2> testfile3
#正常信息和错误信息一块输出
ls -al address ssss.sh &> testfile4
# 此命令下面所有命令，正常输出重定向到testfile5
exec 1>testfile5 
# 此命令下面所有命令，错误输出重定向到testfile5
exec 2>testfile6