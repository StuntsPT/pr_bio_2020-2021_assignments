#!/bin/bash
clear
read -p "Enter a Position " Position
  function arg () {
  Nreads=$(samtools coverage assembly.bam -r "gi|9626243|ref|NC_001416.1|:$@-$@" | awk '{ print $4 }')
  for i in "${Nreads[@]}";
  do
    echo "$i"
  done
  }
  array=($Position)
  arg "${array[@]}"
touch Tomas_Velho_results.txt
rm Tomas_Velho_results.txt
l=1
while [ $l -lt 6 ]
do
  read -p "Enter Position (position number $l/5): " r
    function arg () {
    Nreads=$(samtools coverage assembly.bam -r "gi|9626243|ref|NC_001416.1|:$@-$@" | awk '{ print $4 }')
    for i in "${Nreads[@]}";
    do
        echo "$i"
    done
    }
    array=($r)
    arg "${array[@]}" >> Tomas_Velho_results.txt
    l=$(( $l + 1 ))
done
echo
echo "Tomas_Velho_results.txt added to your directory! "
echo "Tomas_Velho_results.txt : "
echo
cat Tomas_Velho_results.txt
echo
echo "Trabalho Feito por Tomás Velho 202000223"
