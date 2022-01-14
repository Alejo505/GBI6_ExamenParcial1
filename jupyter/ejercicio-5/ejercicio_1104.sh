#!/bin/bash
echo Column name
cut -d ',' -f 7 ../data/Buzzard2015_data.csv | head -n 1
echo Number of distinct values
cut -d ',' -f 7 ../data/Buzzard2015_data.csv | tail -n +2 | sort | uniq | wc -l
echo Minimum value
cut -d ',' -f 7 ../data/Buzzard2015_data.csv | tail -n +2 | sort -n | head -n 1
echo Maximum value
cut -d ',' -f 7 ../data/Buzzard2015_data.csv | tail -n +2 | sort -n | tail -n 1
