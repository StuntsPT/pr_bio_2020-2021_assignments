#!/bin/bash
while true
do
clear
echo "-------------------------------------------------------------------------"
echo "***You need an assembly.bam and an assembly.bam.bai to run this script***"
echo "-------------------------------------------------------------------------"
echo
echo "==============================="
echo
echo "Menu----------                 "
echo
echo "-Made-by-Guilherme_Silva-------"
echo "==============================="
echo "1 - Run Normal Mode: "
echo "2 - Run Ramdom Mode: "
echo "3 - Run 5 Loop Mode: "
echo "4 - See How to get Coverage Number: "
echo "5 - Student Number"
echo "Enter q to exit: "
echo
echo "Waiting for your selection:"
read answer
case "$answer" in
  1) read -p "Enter an Position " Position
     function arg () {
       Nreads=$(samtools coverage assembly.bam -r "gi|9626243|ref|NC_001416.1|:$@-$@" | awk '{ print $4 }')
       for i in "${Nreads[@]}";
       do
         echo "$i"
       done
       }
     array=($Position)
     arg "${array[@]}" ;;
  2) read -p "How Many Runs (>=0) ? " nRuns
     l=0
     read -p "Name your New .txt: " a
     while [ $l -lt $nRuns ]
     do
       r=$(( ( RANDOM % 48502 )  + 1 ))
         function arg () {
           Nreads=$(samtools coverage assembly.bam -r "gi|9626243|ref|NC_001416.1|:$@-$@" | awk '{ print $4 }')
           for i in "${Nreads[@]}";
           do
             echo "$i"
           done
           }
         array=($r)
         arg "${array[@]}" >> "$a".txt
       l=$(( $l + 1 ))
     done
     cat "$a".txt
     echo
     echo "You have a "$a".txt in your current directory :)"
     ;;
   3) touch Guilherme_Silva_results.txt
      rm Guilherme_Silva_results.txt
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
          arg "${array[@]}" >> Guilherme_Silva_results.txt
        l=$(( $l + 1 ))
      done
      cat Guilherme_Silva_results.txt
      echo
      echo "You have a Guilherme_Silva_results.txt file in your current directory :)"
      ;;
   4) echo "samtools coverage assembly.bam -r gi|9626243|ref|NC_001416.1|:1-1 | awk { print $4 }" ;;
   5) echo "number Reads: 23" ;;
   6) echo "May the Force be with you" ;;
   q) exit ;;
   esac
   echo "Enter to return: "
   read input
done
