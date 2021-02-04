#!/bin/bash
while true
do
  clear
  banner " menu"
  echo "  +------------------------------------------+"
  echo "  |          Enter 1 to run normal:          |"
  echo "  | Enter 2 to input 5 positions (23 44 etc) |"
  echo "  |        Enter 3 see the added file:       |"
  echo "  |         Enter 4 to show my number:       |"
  echo "  |       Enter b for the bonus option:      |"
  echo "  |          Do not enter f please!!         |"
  echo "  |              Enter q to exit             |"
  echo "  +------------------------------------------+"
  echo
  echo "           Waiting for your selection..."
  echo
  read -p "Option: " answer
  case "$answer" in
     1) read -p "Enter the Position -> " POS
        bash ./Alexandre_Duarte_2.sh $POS ;;
     2) read -p "Enter the 5 Positions -> " POS1 POS2 POS3 POS4 POS5
       echo "Alexandre_Duarte_Results.txt added to your directory!"
       touch Alexandre_Duarte_Results.txt
       rm Alexandre_Duarte_Results.txt
       bash ./Alexandre_Duarte_3.sh $POS1 $POS2 $POS3 $POS4 $POS5 >> Alexandre_Duarte_Results.txt ;;
    3) cat Alexandre_Duarte_Results.txt ;;
    4) echo "The number of reads of my number is:"
       bash Alexandre_Duarte_2.sh 0198 ;;
    b) read -p "How Many Runs (>0/=0) ? " nRuns
       echo " Random_file.txt added to your directory!"
       touch Random_file.txt
       rm Random_file.txt
       i=0
       while [ $i -lt $nRuns ]
       do
         r=$(( ( RANDOM % 48502 )  + 1 ))
         bash ./script.sh $r >> Random_file.txt
         i=$(( $i + 1 ))
       done
       echo "The results are:"
       cat Random_file.txt
       ;;
    f) banner 20/20" (:" ;; 
    q) exit ;;
   esac
   echo "Enter return to continue"
   read input
done
