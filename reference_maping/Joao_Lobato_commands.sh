#!/bin/bash
while true
do
  clear
  echo "      ---Menu---       "
  echo
  echo "João Lobato - 202000071"
  echo "-----------------------"
  echo "1 - Number of coverages in a position: "
  echo "Enter q to exit: "
  echo
  echo "Waiting for your selection:"
  read answer
  case "$answer" in
    1) read -p "Enter an Position " Position
       samtools depth -a assembly.bam | grep "$Position" | head -n1 >>Joao_Lobato_results.txt ;;
    q) exit ;;
   esac
   echo "Enter to return:"
   read input
done
