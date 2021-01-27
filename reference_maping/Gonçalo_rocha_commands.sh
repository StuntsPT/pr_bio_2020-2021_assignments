#!/bin/bash
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
  touch Gonçalo_Rocha_results.txt
  rm Gonçalo_Rocha_results.txt
l=1
while [ $l -lt 6 ]
do
  read -p "Enter a Different Position (Position Number $l/5) " r
  function arg(){
  Nreads=$(samtools coverage assembly.bam -r "gi|9626243|ref|NC_001416.1|:$@-$@" | awk '{ print $4 }')
  for i in "${Nreads[@]}";
  do
    echo "$i"
  done
  }
  array=($r)
  arg "${array[@]}" >> Gonçalo_Rocha_results.txt
  l=$(( $l + 1 ))
done
cat Gonçalo_Rocha_results.txt
echo "You have a New Gonçalo Rocha file in your directory"
echo "Trabalho feito por Gonçalo Rocha 202000086"
