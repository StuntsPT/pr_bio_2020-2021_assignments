#!/bin/bash
clear
echo "==================================================================="
echo "                         Script                                    "
echo "==================================================================="
read -p "Enter Student Number: " p
  function arg () {
  Nreads=$(samtools coverage assembly.bam -r "gi|9626243|ref|NC_001416.1|:$@-$@" | awk '{ print $4 }')
  for i in "${Nreads[@]}";
  do
    echo "$i"
  done
  }
array=($p)
arg "${array[@]}"
touch Ana_Castro_results.txt
rm Ana_Castro_results.txt
l=1
while [ $l -lt 6 ]
do
  read -p "Enter 5 Different Numbers ($l/5): " n
    function arg () {
    Nreads=$(samtools coverage assembly.bam -r "gi|9626243|ref|NC_001416.1|:$@-$@" | awk '{ print $4 }')
    for i in "${Nreads[@]}";
    do
      echo "$i"
    done
    }
  array=($n)
  arg "${array[@]}" >> Ana_Castro_results.txt
  l=$(( l + 1 ))
cat "Ana_Castro_results.txt" 
done
echo "Ana_Castro_results.txt added to your directory"
echo "Made by: Ana Castro"
echo "__"
