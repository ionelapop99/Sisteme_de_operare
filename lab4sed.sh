#!/bin/bash
#Să se convertească un fișier html într-un fișier text folosind comanda sed (să se elimine tot conținutul fișierului html aflat între caracterele '<' și '>').
sed -i 's/<[^>]*>//g' $1 
