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


