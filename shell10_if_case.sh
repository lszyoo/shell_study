#!/usr/bin/env bash

:<<!
    if 语法：
        if condition1
        then
            command1
        elif condition2
        then
            command2
        else
            commandN
        fi
!
a=10
b=20
if [ $a == $b ]
then
   echo "a = b"
elif [ $a -gt $b ]
then
   echo "a > b"
elif [ $a -lt $b ]
then
   echo "a < b"
else
   echo "没有符合的条件"
fi
# 输出：a < b


:<<!
    以用case语句匹配一个值与一个模式，如果匹配成功，执行相匹配的命令。case语句格式如下：
    case 值 in
    模式1)
        command1
        command2
        ...
        commandN
        ;;
    模式2）
        command1
        command2
        ...
        commandN
        ;;
    esac
!
read aNum
case $aNum in
    1) echo 'select 1'
    ;;
    2) echo 'select 2'
    ;;
    3) echo 'select 3'
    ;;
esac


while :
do
    echo -n "输入 1 到 5 之间的数字:"
    read aNum
    case $aNum in
        1|2|3|4|5) echo "你输入的数字为 $aNum!"
        ;;
        *) echo "你输入的数字不是 1 到 5 之间的! 游戏结束"
            break
        ;;
    esac
done