#!/bin/bash
while true
do
clear
echo "______________________________________"
echo
echo "----------------MENU------------------"
echo
echo "______________________________________"
echo
echo "Choose 1 to run"
echo "Choose 2 to loop random.txt"
echo "Choose 3 to use my student number"
echo
echo "Choose q to quit"

read resposta
case "$resposta" in
1) read -p "Enter the position " Position
     bash ./bogdan_argat_command2.sh  $Position ;;
2) read -p "How Many Runs (Needs to be 0 or above) ? " Runs
        echo "readsioio.txt added to your directory! "
	i=0
	touch readsioio.txt
	rm readsioio.txt
	while [ $i -lt $Runs ]
	do
	r=$(( ( RANDOM  % 48502 ) + 1 ))
         bash ./bogdan_argat_command2.sh $r >> readsioio.txt
	i=$(( $i + 1 ))
	done
	cat readsioio.txt
       ;;
3) echo 'My Student number is 202000185' echo 'so...' ;;

q) exit ;;
esac
echo "Enter to return"
read input
done
