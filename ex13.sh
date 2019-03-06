#Koren Stav 207128539
#!/bin/bash
path=$1
numOfArgs=$#
((numOfArgs--))
n=0
#get whole directory
for arg in "$@"
do
#concat from second arg till n-1 arg
if (("$n" > 0 && "$n"<numOfArgs))
then
    path="$path $arg"
fi
((n+=1))
done
#gat last arg
givenFileName="${!#}"
IFS=$(echo -en "\n\b")
#iterate over all  files with 2 depth
for file in `find $path -maxdepth 2 -type f | LC_COLLATE=C sort`
do
#get only file name without its path
fileName=$(basename $file)
if [ "$givenFileName" == "$fileName" ]
	then
	cat $file
	fi
done
