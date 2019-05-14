#!/bin/bash
read -p "以yyyyMMddHHmmss格式输入你的出生年月日" birth
start=`date -d "$birth" +%s`
echo $start
today=`date +%s`
echo $today
ss=`expr $today - $start`
days=`expr $ss/86400`
echo "你活了$days天"