#Koren Stav 207128539
#!/bin/bash
fileName=$2
name=$1
name="$name "
totalBalance=0
#read file line by line
while read  line
do
	#check if names are equal
	if [[ $line == $name* ]]
	then
	echo $line
	#get balance (third word in line)
	currentBalance=$(echo $line | awk '{print $3}')
	((totalBalance+=currentBalance))
	fi
done <$fileName
echo "Total balance:" $totalBalance
