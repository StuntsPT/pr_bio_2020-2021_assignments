#!/bin/bash
clear
echo "This script will run a samtools command to get coverage number"
echo
echo "In my case the samtools command to get my last 4 digit number is the folowing: "
echo "samtools coverage assembly.bam -r gi|9626243|ref|NC_001416.1|:0197-0197 | awk { print $4 }"
echo
read -p "Enter an Position (To get the reads) " Position
  function arg () {
  Nreads=$(samtools coverage assembly.bam -r "gi|9626243|ref|NC_001416.1|:$@-$@" | awk '{ print $4 }')
  for i in "${Nreads[@]}";
  do
    echo "$i"
  done
  }
array=($Position)
arg "${array[@]}"
touch Tiago_Beja_results.txt
rm Tiago_Beja_results.txt
l=1
while [ $l -lt 6 ]
do
  read -p "Enter a Different Positions (Position Numeber $l/5): " p
    function arg () {
    Nreads=$(samtools coverage assembly.bam -r "gi|9626243|ref|NC_001416.1|:$@-$@" | awk '{ print $4 }')
    for i in "${Nreads[@]}";
    do
      echo "$i"
    done
    }
  array=($p)
  arg "${array[@]}" >> Tiago_Beja_results.txt
cat Tiago_Beja_results.txt
  l=$(( $l + 1 ))
done
echo
echo "Tiago_Beja_results.txt file added to your directory!!"
