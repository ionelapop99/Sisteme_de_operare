#!/bin/bash
#Pentru o lista de nume de fisiere data si un director dat,sa se afiseze pentru fiecare nume de fisier toate subdirectoarele in care apare. Sa se afiseze subdirectoarele in ordinea  descrescatoare a dimensiunii fisierului.(Un fisier poate avea dimensiuni diferite in subdirectoare diferite).

d=$1
while (( $#!=1 ))
do
	echo "$2:"
	find $d -type f  -name $2  -printf '%s %h/ \n' | sort -nr
	shift
done
