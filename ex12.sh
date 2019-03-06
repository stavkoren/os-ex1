#Koren Stav 207128539
#!/bin/bash
filename=$1
for file in `ls $filename | LC_COLLATE=C sort`
do
#make sure its  text file
if [[ $file == *.txt ]]
	then
	echo $file "is a file"
	fi
done
for file in `ls $filename | LC_COLLATE=C sort`
do
fullpath="$1/$file"
#make sure its a direcory
if [[ -d $fullpath ]]; then
	echo $file "is a directory"
fi
done
