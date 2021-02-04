#!/bin/bash
clear
while true
do
clear
echo "Trabalho feito por Pedro Brito 202000062"
echo
echo "Menu"
echo
echo "Enter 1 to execute 1 position: "
echo "Enter 2 to execute 5 diferent positions: "
echo "Enter q to exit: "
echo "Waiting for your selection"
read answer
case "$answer" in
1) read -p "Enter a Position: " Position
  sh ./numreads $Position ;;
2) i=0
touch Name_file
rm Name_file
  while [ $i -lt 5 ]
  do
    read -p "Enter 5 diferent positions: " p
    sh ./numreads $p >> Name_file
echo "Output-->"
echo
cat Name_file
    i=$(( i + 1 ))
  done ;;
q) exit ;;
esac
echo "Enter to return"
read input
done
