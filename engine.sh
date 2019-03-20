#!/bin/bash

declare -a map
n=$1
m=$2
n=${n:-5}
m=${m:-5}

for ((i=0;i<m;i++)) do
    for ((j=0;j<n;j++)) do
        map[$i * $m + $j]=-1
    done
done

print_map(){
	res=""
	for ((i=0;i<m;i++)) do
		for ((j=0;j<n;j++)) do
			res="$res ${map[$i * $m + $j]}"
		done
		res=$res$'\n'
	done
	echo "$res"
};

draw_check(){
	for i in "${map[@]}"
       	do
		if [ $i=-1 ]; then 
			return 0
		fi
	done
	return 1
};

nplayers=$3
nplayers=${nplayers:-2}
newline=$'\n' 

#echo ${map[${turn[0]} * $m + ${turn[1]}]}
while [ 1 ]; do
	for ((i=0;i<nplayers;i++)) do
		echo "Player: $i; ${turn[0]}, ${turn[1]}" >> log.txt
		if [ draw_check == 1 ]; then
			echo "it's draw!"
			print_map
			exit
		fi
		turn=$(echo "$n $m$newline$nplayers$newline$i$newline$(print_map)" | python bots/rand.py)
		if [ $(echo "$n $m$newline$nplayers$newline$(print_map)$newline$turn$newline" | python check_field.py) = $'False' ]; then
			echo "the $1 lose"
			print_map
			exit	
		fi
		turn=(${turn})
		#echo "${turn[0]}, ${turn[1]}" 
		#map[${turn[0]} * $m + ${turn[1]}]=$i
		#print_map
		#Add winner check
	done
done

#visualisation
echo ${map[${turn[0]} * $m + ${turn[1]}]}
