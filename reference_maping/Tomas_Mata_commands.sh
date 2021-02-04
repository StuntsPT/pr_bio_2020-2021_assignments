#!/bin/bash
while true
do
clear
echo  "Select 1 to run"
echo  "Select 2 to loop random.txt"
echo  "Select 3 to use my student number"
echo  "Press t then click [enter] to quit this script"

read resposta
case "$resposta" in
1) read -p "Enter the position " Position
./hts_data $Position ;;
2) read -p "How Many Runs (Needs to be 0 or above) ? " Runs
       echo "Tomas_Mata_results.txt added to your directory!" 
       i=0 
           touch Tomas_Mata_results.txt
           
       while [ $i -lt $Runs ]
       do
         r=$(( ( RANDOM % 48502 )  + 1 ))
         bash ./hts_data $r >> Tomas_Mata_results.txt
         i=$(( $i + 1 ))
       done 
           cat Tomas_Mata_results.txt
       ;;
3) echo 'My Student number is 202000195'
   echo 'so...'
   samtools coverage  assembly.bam -r "gi|9626243|ref|NC_001416.1|:180-180" | awk '{ print $4 }'
   ;;
q) exit ;;
esac
echo "Enter to return"
read input
done
