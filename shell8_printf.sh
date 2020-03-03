#!/usr/bin/env bash

:<<!
    默认 printf 不会像 echo 自动添加换行符，我们可以手动添加 \n。
    printf 命令的语法：
                    printf  format-string  [arguments...]
!
printf "Hello, Shell.\n"
# 输出：Hello, Shell.

:<<!
    %s %c %d %f都是格式替代符。
    %-10s 指一个宽度为10个字符（-表示左对齐，没有则表示右对齐），任何字符都会被显示在10个字符宽的字符内，
    如果不足则自动以空格填充，超过也会将内容全部显示出来。
    %-4.2f 指格式化为小数，其中.2指保留2位小数。
!
printf "%-10s %-8s %-4s\n" name gender weight/kg
printf "%-10s %-8s %-4.2f\n" Denny male 66.1234
printf "%-10s %-8s %-4.2f\n" Ama male 48.6543
printf "%-10s %-8s %-4.2f\n" Jim female 47.9876
:<<!
    输出：
        name       gender   weight/kg
        Denny      male     66.12
        Ama        male     48.65
        Jim        female   47.99
!