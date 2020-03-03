#!/usr/bin/env bash
# 循环
:<<!
    for 循环一般格式：
        for var in item1 item2 ... itemN
        do
            command1
            command2
            ...
            commandN
        done
!
#for file in `ls /etc`
for file in $(ls /etc)
do
    if echo "$file" | grep "xml"
    then
        echo "file"
    fi
done


for skill in Java Python Scala Shell ; do
    echo "I'm good at ${skill}Script!"
done
:<<!
    输出：
        I'm good at JavaScript!
        I'm good at PythonScript!
        I'm good at ScalaScript!
        I'm good at ShellScript!
!


:<<!
    while 格式：
        while condition
        do
            command
        done

    注：自加操作：let no++
        自减操作：let no--
!
i=1
while(( $i<=5 ))
do
    printf ${i}
    printf " "
    let "i++"
done
# 输出：1 2 3 4 5

# while循环可用于读取键盘信息。下面的例子中，输入信息被设置为变量FILM，按<Ctrl-D>结束循环。
echo '按下 <CTRL-D> 退出'
echo -n '输入你最喜欢的网站名: '
while read FILM
do
    echo "是的！$FILM 是一个好网站"
done
:<<!
    输出：
        按下 <CTRL-D> 退出
        输入你最喜欢的网站名:apache.org.cn
        是的！apache.org.cn 是一个好网站
!


:<<!
    无限循环：
        while :
        do
            command
        done

        或者

        while true
        do
            command
        done

        或者

        for (( ; ; ))
!


:<<!
    until 循环执行一系列命令直至条件为 true 时停止。
    语法：
        until condition
        do
            command
        done
!
num=0
until [ ! $num -lt 10 ]     # 空格严格按照这个来
do
    printf ${num}
    printf " "
    num=`expr $num + 1`
done
# 输出：0 1 2 3 4 5 6 7 8 9

# continue 和 break 与 java 一样