#Koren Stav 207128539
#! /bin/bash
filename=$1
str=$2
n=0;
while read line || [ -n "$line" ]
do
	#reading each line
	((n++))
	if [[ $line == *$str* ]];
	then
		echo $n $line;
	fi
done <$filename
