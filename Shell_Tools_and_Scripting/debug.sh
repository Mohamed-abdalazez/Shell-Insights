#!/bin/bash

cnt=0

until [[ "$?" -ne 0 ]]; # false
do
  cnt=$((cnt + 1)) 
  ./rondom.sh &> output.txt
done

echo "found error after $cnt times"
cat output.txt
