#!/bin/bash
#mvn clean package
# 获取当前分支
branch=`git branch | grep "*"`
# 截取分支名
currBranch=${branch:2}
commitMsg=${1:-'auto commit'} # 获取终端输入的第一个参数，若为空则为auto commit
echo $commitMsg
git add .
git commit -m "$commitMsg"
git push origin $currBranch