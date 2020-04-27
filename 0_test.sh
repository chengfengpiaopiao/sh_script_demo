#!/bin/sh
echo "----------------------------------"

firstStr="hello world"
echo firstStr

number=100;
echo "占位符为number=${number}"
echo "----------------------------------"

###条件语句

if [ -f "0_test.sh" ]; then
	echo "文件存在"
else
	echo "文件不存在"
fi


###命令监控

path=`pwd`
echo $path

###统计目录下共有多少个文件并显示

cd /f/Tool/Vagrant/pro-192.168.222.111/data/sh

for index in /f/Tool/Vagrant/pro-192.168.222.111/data/sh/*
do
	echo "hello , $index"
done
count=`ls -l|grep '^-'|wc -l`
echo "----文件总数为$count"


###外部传参给脚本使用

number1=$1
number2=$2
[ -z $number1 ] && echo "please \$number1 number1" && exit 1
[ -z $number2 ] && echo "please \$number2 number2" && exit 1
[ ! $# -eq 2 ] && echo "--please num1 num2" && exit 3
echo "传参$number1 + 传参$number2 = $(($number1+$number2))"








