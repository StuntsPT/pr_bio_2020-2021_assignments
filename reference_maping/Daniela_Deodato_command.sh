#!/bin/bash
clear
read -p "Enter an Position: " r
  sh ./Daniela_Deodato_command_coverage.sh $r
  i=0
echo
echo "The Program will Make a Text File"
read -n 1 -r -s -p $"Press Enter To Continue"
echo
read -p "Name your Text File: " n
echo "Enter 5 Difrent Positions: "
  while [ $i -lt 5 ]
  do
    read p
    sh ./coveragebio3.sh $p >> "$n"
    i=$(( i + 1 ))
  done
echo "Work done by  Daniela Deodato 20200199"
