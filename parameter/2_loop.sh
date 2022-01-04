#!/bin/bash

# Basic for loop
for i in ../introdution/*; do
  echo $i
done

for ((i = 0 ; i < 10 ; i++)); do
  echo -n "$i "
done

echo ""
# for i in {1..5}; do
#     echo "Welcome $i"
# done
for i in {5..50..5}; do
    echo "Welcome $i"
done

# Reading lines
cat 1_basic.sh | while read line; do
  echo $line
done

# ls | while read line; do
#     echo $line
# done