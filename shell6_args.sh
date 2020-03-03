#!/usr/bin/env bash

:<<EOF
    向脚本传递参数，脚本内获取参数的格式为：$n。n 代表一个数字，1 为执行脚本的第一个参数
EOF

echo "shell args sample!";
echo "filename: $0";
echo "first args: $1";
echo "second args: $2";
echo "third args: $3";
:<<!
    输出：
        shell args sample!
        filename: F:\code\shell\shell6_args.sh
        first args: 1
        second args: 2
        third args: 3
!

:<<!
$#	传递到脚本的参数个数
$*	以一个单字符串显示所有向脚本传递的参数。如"$*"用「"」括起来的情况、以"$1 $2 … $n"的形式输出所有参数。
$$	脚本运行的当前进程ID号
$!	后台运行的最后一个进程的ID号
$@	与$*相同，但是使用时加引号，并在引号中返回每个参数。如"$@"用「"」括起来的情况、以"$1" "$2" … "$n" 的形式输出所有参数。
$-	显示Shell使用的当前选项，与set命令功能相同。
$?	显示最后命令的退出状态。0表示没有错误，其他任何值表明有错误。
!
for i in "$*"; do
    echo "$i"
done
# 输出：1 2 3

for i in "$@"; do
    echo "$i"
done
:<<!
    输出：
        1
        2
        3
!