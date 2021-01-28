#!/bin/bash
clear
read -p "Enter an Position: " Position
  function arg () {
  Nreads=$(samtools coverage assembly.bam -r "gi|9626243|ref|NC_001416.1|:$@-$@" | awk '{ print $4 }')
  for i in "${Nreads[@]}";
  do
    echo "$i"
  done
  }
array=($Position)
arg "${array[@]}"
echo "The loop will execute 5 Times"
echo "Enter 5 Diffrent Positions: "
touch Helder_Carapinha_results.txt
rm Helder_Carapinha_results.txt
l=0
while [ $l -lt 5 ]
do
  read -p "Enter a  Position: " p
    function arg () {
    Nreads=$(samtools coverage assembly.bam -r "gi|9626243|ref|NC_001416.1|:$@-$@" | awk '{ print $4 }')
    for i in "${Nreads[@]}";
    do
      echo "$i"
    done
    }
  array=($p)
  arg "${array[@]}" >> Helder_Carapinha_results.txt
  cat  Helder_Carapinha_results.txt
  l=$(( l + 1 ))
done
echo " "
echo "You have a Helder_Carapinha_results.txt with the output :slight_smile: "
echo " "
