#!/bin/bash

while true
do
clear
  echo "----------------------"
           echo "Menu:"
  echo "----------------------"
  echo "-Press 1 to run  normal mode: "
  echo "-Press 2 to run random  mode: "
  echo "-Press 3 to run loop mode: "
  echo "-Press 4 to see how to get coverage number: "
  echo "-Press 5 to see my student number: "
  echo "-Press z to exit: "
  echo ""
  echo "Waiting for your selection..."
read answer
case "$answer" in 
    1) read -p "Enter an Position " Position
       sh ./script03 $Position ;;
    2) read -p "How Many Times (>=0) ? " nRuns 
       i=0 
       read -p "Name your .txt: " a
       while [ $i -lt $nRuns ]
       do
         r=$(( ( RANDOM % 48502 )  + 1 ))
         bash ./script03 $r >> New.txt
         i=$(( $i + 1 ))
       done  ;;
    3) i=0
       read -p "Name your .txt: " n
       while [ $i -lt 5 ]
       do
           read -p "To make the text file enter 5 different position: "  r
           sh ./script03 $r >> "$n".txt
           i=$(( i + 1 ))
           done  ;;
    4) cat script03  ;;
    5) bash ./script03 0087 ;;
    z) exit ;;
   esac
   echo "Enter to return:"
   read input
done


