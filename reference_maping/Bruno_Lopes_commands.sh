#!/bin/bash
while true
do
clear
echo  "MENU"
echo
echo  "Choose 1 to run"
echo  "Choose 2 to loop random.txt"
echo  "Choose 3 to use my student number"
echo
echo  "Press q then [enter] to quit"

read answer
case "$answer" in
1) read -p "Enter the position " Position
./Script $Position ;;
2) read -p "How Many Runs (Needs to be 0 or above) ? " Runs
       echo "Bruno_Lopes_results.txt added to your directory! " 
       i=0 
           touch Bruno_Lopes_results.txt
           rm Bruno_Lopes_results.txt
       while [ $i -lt $Runs ]
       do
         r=$(( ( RANDOM % 48502 )  + 1 ))
         bash ./Script $r >> Bruno_Lopes_results.txt
         i=$(( $i + 1 ))
       done 
           cat Bruno_Lopes_results.txt
       ;;
3) echo 'My Student number is 202000210'
   echo 'so...'
   samtools coverage  assembly.bam -r "gi|9626243|ref|NC_001416.1|:210-210" | awk '{ print $4 }'
   ;;
q) exit
 ;;
esac
echo "Enter to return"
read input
done
