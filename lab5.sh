#!/bin/bash
#Sa se afiseze dintr-o lista de fisiere numele acelui fisier care are numar maxim de cuvinte si numarul cuvintelor.
awk -v maxim=-1 '{F[FILENAME]+=NF} END {for (f in F) if(F[f]>maxim){ maxim=F[f]; numef=f;} print numef, ":", maxim }' $*
