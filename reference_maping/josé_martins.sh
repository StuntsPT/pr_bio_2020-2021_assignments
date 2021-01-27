#!/bin/bash
while true
do
clear
echo  "Done by José Martins"
echo
echo  "Menu"
echo
echo  "Choose 1 to run"
echo  "Choose 2 to loop random.txt"
echo  "Choose 3 to use my student number"
echo  "Choose q to quit"

read resposta
case "$resposta" in
1) read -p "Enter the position " Position
./Script01 $Position ;;
2) read -p "How Many Runs (Needs to be 0 or above) ? " Runs
       echo "jose_martins_results.txt added to your directory! "
       i=0
           touch jose_martins_results.txt
           rm jose_martins_results.txt
       while [ $i -lt $Runs ]
       do
         r=$(( ( RANDOM % 48502 )  + 1 ))
         bash ./Script01 $r >> jose_martins_results.txt
         i=$(( $i + 1 ))
       done
           cat jose_martins_results.txt
       ;;
3) echo 'My student number is 202000047'
   samtools coverage  assembly.bam -r "gi|9626243|ref|NC_001416.1|:47-47" | awk '{ print $4 }'
   ;;
q) exit ;;
esac
echo "Enter to return"
read input
done
#=script01 samtools coverage assembly.bam -r "gi|9626243|ref|NC_001416.1|:$1-$1" | awk '{ print $4 }'
