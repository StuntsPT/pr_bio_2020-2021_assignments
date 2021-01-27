#!/bin/bash 
while true
do
	clear
	echo "   -- Menu--   "
	echo
	echo "Rodrigo Silva - 202000193"
	echo "1 - Number of coverages in a position: "
	echo "Enter q to exit"
	echo "Waiting for your selection"
	read answer
	case "$answer" in
	    1) read -p "Enter an Position" Position
	       samtools depth -a assembly.bam | grep "$Position" | head -n1 >>Rodrigo_Silva_results.txt ;;
	    q) exit ;;
	esac
	echo "Enter to return"
	read input
done
