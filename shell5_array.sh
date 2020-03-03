#!/usr/bin/env bash
:<<!
    bash 支持一维数组（不支持多维数组），并且没有限定数组的大小。
    Shell 数组用括号来表示，元素用"空格"符号分割
!

# 定义数组
arr=(1 2 "shell" "java")

# 读取数组
var=${arr[2]}
echo ${var}     # 输出：shell
echo ${arr[@]}      # 输出：1 2 shell java
echo ${arr[*]}      # 输出：1 2 shell java

# 数组长度
echo ${#arr[@]}     # 输出：4
echo ${#arr[*]}     # 输出：4

# 单个元素长度
echo ${#arr[2]}     # 输出：5


