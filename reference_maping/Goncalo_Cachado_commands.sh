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
echo  "Choose q to quit"

read resposta
case "$resposta" in
1) read -p "Enter the position " Position
./Script01 $Position ;;
2) read -p "How Many Runs (Needs to be 0 or above) ? " Runs
       echo "Goncalo_Cachado_result.txt added to your directory! " 
       i=0 
           touch Goncalo_Cachado_result.txt
           rm Goncalo_Cachado_result.txt
       while [ $i -lt $Runs ]
       do
         r=$(( ( RANDOM % 48502 )  + 1 ))
         bash ./Script01 $r >> Goncalo_Cachado_result.txt
         i=$(( $i + 1 ))
       done 
           cat Goncalo_Cachado_result.txt
       ;;
3) echo 'My Student number is 202000190'
   echo 'so...'
   samtools coverage  assembly.bam -r "gi|9626243|ref|NC_001416.1|:180-180" | awk '{ print $4 }'
   ;;
q) exit ;;
esac
echo "Enter to return"
read input
done
