#!/bin/bash

declare -a map
n=$1
m=$2
n=${n:-5}
m=${m:-5}

for ((i=0;i<m;i++)) do
    for ((j=0;j<n;j++)) do
        map[$i,$j]=-1
    done
done

print_map(){
	res=""
	for ((i=0;i<m;i++)) do
		for ((j=0;j<n;j++)) do
			res="$res ${map[$i,$j]}"
		done
		res=$res$'\n'
	done
	echo "$res"
}
nplayers=$3
nplayers=${nplayers:-2}
newline=$'\n' 
i=0
turn="$n $m$newline$nplayers$newline$i$newline$(print_map)"
echo "$turn"
