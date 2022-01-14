#!/bin/bash
#1
#cut -f 1 ../data/Gesquiere2011_data.csv | grep -c -w 3
#cut -f 1 ../data/Gesquiere2011_data.csv | grep -c -w 27
#2
#cut -f 1 $1 | grep -c -w $2
#3
IDS=`tail -n +2 Gesquiere2011_data.csv | cut -f 1 | sort -n | uniq`
for id in $IDS
do
    mycounts=`cut -f 1 Gesquiere2011_data.csv | grep -c -w $id`
    echo "ID:" $id "counts:" $mycounts
done




