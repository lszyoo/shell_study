#!/usr/bin/env bash

# 输出普通字符串
echo "Hello Shell"      # 输出：Hello Shell

# 输出转移字符串
echo "\"Hello Shell\""      # 输出："Hello Shell"

# 标准输入，输出变量
read var_name           # 输入：input
echo ${var_name}        # 输出：input

# 换行输出
echo -e "Hello \nShell"
:<<!
    输出：
        Hello
        Shell
!

# 多次输出不换行
echo -e "Hello \c"
echo "Shell"
# 输出：Hello Shell


# 显示命令结果
echo `date`     # 输出：Thu Feb 13 17:45:05 2020

# 输出重定向
echo "It is a test" > myfile
