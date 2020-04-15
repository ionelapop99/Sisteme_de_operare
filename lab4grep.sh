#!/bin/bash
#Să se afișeze numele tuturor utilizatorilor dați ca parametri linia de comandă care nu s-au conectat niciodată la serverul curent.
while (( $# ))
do 
	i=$(last | grep -c "$1 ")
	if [ $i -eq 0 ]
	then 
		echo $1
	fi
	shift
done
