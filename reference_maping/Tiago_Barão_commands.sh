#!/bin/bash
while true
do
clear
echo "============================================================"
echo "                          WELCOME!                          "
echo "============================================================"
echo "              To my attempt to write a Script               "
echo "============================================================"
echo "Menu"
echo
echo "Choose 1 to run"
echo "Choose 2 to run random.txt"
echo "Choose 3 to use my student number"
echo
echo "Choose q to quit"

read resposta
case $resposta in
1)read -p"Select a position" Position
./Script01 $Position ;;
2)read -p"How many times shoulds i repeat?(Needs to be above 0)" repeat
	echo "Congratulations! You received Tiago_Barão_results.txt in your nearest directory!"
	i=0
        	touch Tiago_Barão_results.txt
        	rm Tiago_Barão_results.txt
	while [ $i -lt $repeat ]
	do
  	  r=$(( ( Random % 48502 ) +1 ))
  	  bash ./Script01 $r >> Tiago_Barão_results.txt
  	  i=$(( $i + 1 ))
	done
		cat Tiago_Barão_results.txt
	;;
3)echo 'My student number is 202000215'
  echo 'Therefore...'
  samtools coverage assembly.bam -r "gi|9626243|ref|NC_001416.1|:215-215" | awk '{ print $4 }'
  ;;
q) exit ;;
esac
echo "Well , this is it , if you want to try again , press Enter"
read input
done
