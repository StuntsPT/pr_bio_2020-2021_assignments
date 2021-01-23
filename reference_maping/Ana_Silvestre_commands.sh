#!/bin/bash
clear
echo "=========================================================="
echo "                         SCRIPT                           "
echo "=========================================================="
echo "            Made-By-Ana-Silvestre-202000166               "
echo "=========================================================="
touch New.txt
rm New.txt
read -p "Enter a number: " p
bash ./Ana_Silvestre_commands_2.sh $p
i=0
while [ $i -lt 5 ]
do
echo ""
echo "How many runs? "
read -p "Enter a number: " n
echo ""
bash ./Ana_Silvestre_commands_2.sh $n
echo ""
bash ./Ana_Silvestre_commands_2.sh $n >> New.txt
i=$(( i + 1 ))
done
echo "New.txt added to your current directory"
