#!/usr/bin/env bash

# 参数返回，可以显示加：return 返回，如果不加，将以最后一条命令运行结果，作为返回值
# 函数返回值在调用该函数后通过 $? 来获得
func1(){
    echo "my first function."
}

func1
# 输出：my first function.

func2(){
    num1=5
    num2=9
    return $(($num1+$num2))
}

func2
echo "$?"
# 输出：14


func3(){
    echo "第一个参数为 $1 !"
    echo "第二个参数为 $2 !"
    echo "第十个参数为 $10 !"
    echo "第十个参数为 ${10} !"
    echo "第十一个参数为 ${11} !"
    echo "参数总数有 $# 个!"
    echo "作为一个字符串输出所有参数 $* !"
}

func3 1 2 3 4 5 6 7 8 9 34 73
:<<!
    输出：
        第一个参数为 1 !
        第二个参数为 2 !
        第十个参数为 10 !
        第十个参数为 34 !
        第十一个参数为 73 !
        参数总数有 11 个!
        作为一个字符串输出所有参数 1 2 3 4 5 6 7 8 9 34 73 !

    注意，$10 不能获取第十个参数，获取第十个参数需要${10}。当n>=10时，需要使用${n}来获取参数。

    参数处理	            说明
        $#	    传递到脚本或函数的参数个数
        $*	    以一个单字符串显示所有向脚本传递的参数
        $$	    脚本运行的当前进程ID号
        $!	    后台运行的最后一个进程的ID号
        $@	    与$*相同，但是使用时加引号，并在引号中返回每个参数。
        $-	    显示Shell使用的当前选项，与set命令功能相同。
        $?	    显示最后命令的退出状态。0表示没有错误，其他任何值表明有错误。

    shell 语言中 0 代表 true，0 以外的值代表 false。
!