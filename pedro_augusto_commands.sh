#!/bin/bash
while true
do
  clear
  echo "==============================="
  echo 
  echo "Menu----------                 "
  echo 
  echo "-Made-by-Pedro_Augusto-------"
  echo "==============================="
  echo "1 - Run Normal Mode: "
  echo "2 - Run Loop Mode: "
  echo "3 - See How to get Coverage Number: "
  echo  "4 - Student Number"
  echo "Enter q to exit: "
  echo 
  echo "Waiting for your selection:"
  read answer
  case "$answer" in
    1) read -p "Enter an Position " Position
       sh ./ReadN.sh $Position ;;
    2) read -p "How Many Runs (>=0) ? " nRuns
       echo "New.txt added to your directory! " 
       i=0 
       while [ $i -lt $nRuns ]
       do
         r=$(( ( RANDOM % 48502 )  + 1 ))
         bash ./ReadN.sh $r >> New.txt
         i=$(( $i + 1 ))
       done 
       ;;
    3) cat ReadN.sh ;;
    4) echo "numreads 23" ;;
    q) exit ;;
   esac
   echo "Enter to return:"
   read input
done

