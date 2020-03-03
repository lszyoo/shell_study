#!/usr/bin/env bash
# 变量名和等号之间不能有空格
# 直接赋值
var_name="Hello"
echo "$var_name"
# 输出：Hello

# 重新定义变量
var_name="Shell"
echo ${var_name}
# 输出：Shell

# 用语句赋值
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

# 只读变量，不能重新赋值
var_read="read only"
readonly var_read

# 删除变量，unset 命令不能删除只读变量
var_del="delete var"
unset var_del

