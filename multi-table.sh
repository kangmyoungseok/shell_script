#!/bin/bash

row=$1
col=$2


if [ $# -ne 2 ]; then
	echo "Invalid input"
	exit 0
fi

if [ $row -lt 1 ] || [ $col -lt 1 ]; then
	echo "Input must be greater than 0"
	exit 0
fi

for ((r=1; r<=$row; r++));
do
	for((c=1; c<=$col;c++));
	do
		result=`expr $r \* $c`
		echo -n -e "$r*$c=$result\t"
	
	done
	echo ""

done

	
