#!/bin/bash
clear
read -p "Enter an Position " Position
  function arg () {
  Nreads=$(samtools coverage assembly.bam -r "gi|9626243|ref|NC_001416.1|:$@-$@" | awk '{ print $4 }')
  for i in "${Nreads[@]}"; 
  do
    echo "$i"
  done
  }
  array=($Position)
  arg "${array[@]}"
touch Diogo_Cabrita_results.txt
rm Diogo_Cabrita_results.txt 
l=1
while [ $l -lt 6 ]
do 
  read -p "Enter a Different Position (Position Number $l/5) " r
 function arg () {
  Nreads=$(samtools coverage assembly.bam -r "gi|9626243|ref|NC_001416.1|:$@-$@" | awk '{ print $4 }')
  for i in "${Nreads[@]}";
  do
    echo "$i"
  done
  }
  array=($r)
  arg "${array[@]}" >> Diogo_Cabrita_results.txt
  l=$(( $l + 1 ))
done
cat Diogo_Cabrita_results.txt
echo
echo "Student number: (0197)"
echo "number: 25"
echo
echo "Trabalho Feito Por Diogo Cabrita 202000212"
