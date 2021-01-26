#!bin/bash
while true
do
clear 
echo "Enter 1 to see numreads of any position" 
echo "Enter 2 to create a file with 5 positions"
echo "Enter 3 to show numreads of my number"
echo "Enter e to exit"
echo 
read -p "answer " answer 
case "$answer" in
1) read -p "Enter an Position: " r
  sh ./script_01.sh $r ;;
2)
i=0
while [ $i -lt 5 ]
do
read -p "To make the text File Enter 5 Different Positions: " a 
  sh ./script_01.sh $a >> Joao_Yanga_result.txt
  i=$(( i + 1 ))
done ;;
3) echo "My number of reads is:"
sh ./script_01.sh 0167 ;;
e) exit ;;
esac
 echo "Enter return to continue"
   read input
done
