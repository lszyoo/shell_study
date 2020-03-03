#!/usr/bin/env bash

# shell 字符串

:<<EOF
单引号字符串的限制：
    单引号字符串的限制单引号里的任何字符都会原样输出，单引号字符串中的变量是无效的；
    单引号字串中不能出现单独一个的单引号（对单引号使用转义符后也不行），但可成对出现，作为字符串拼接使用。
EOF
str1='Hello'
str2='Shell'
str="$str1 $str2"
echo "$str"
# 输出：Hello Shell

# 字符串长度
echo ${#str}    # 输出：11

# 子字符串
echo ${str:0:4}     # 输出：Hello

# 查询子字符串
# 查找字符 i 或 o 的位置(哪个字母先出现就计算哪个)：
echo `expr index "$str" io`     # 输出：5

