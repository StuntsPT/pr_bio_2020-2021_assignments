#!/bin/bash
while true
do
clear
echo '    /  |/  / ____/ | / / / / / '  #ESTBarreiro - IPS
echo '   / /|_/ / __/ /  |/ / / / /  '  #UC Perspetivas em Bioinformatica 
echo '  / /  / / /___/ /|  / /_/ /   '  #Professor Francisco Martins
echo ' /_/  /_/_____/_/ |_/\____/    '  #27 Janeiro 2021
echo '                    Made By: Duarte Valente'
echo
echo
echo  "Choose 1 to run as default"  #runs the file Script01
echo  "Choose 2 to run as loop random.txt"
echo  "Choose 3 to use my student number"   #Duarte Valente 202000053
echo  "Choose 4 to see the Script used"
echo  "Choose 6 to delete (readsvalente.txt)"
echo  "Choose q to quit"
echo
echo "Waiting for user."
echo
echo
echo "look at the code for more information"

read Resposta

clear

echo '    /  |/  / ____/ | / / / / / '
echo '   / /|_/ / __/ /  |/ / / / /  '
echo '  / /  / / /___/ /|  / /_/ /   '
echo ' /_/  /_/_____/_/ |_/\____/    '
echo '                    Made By: Duarte Valente'
echo
echo
echo  "Choose 1 to run as default"
echo  "Choose 2 to run as loop random.txt"
echo  "Choose 3 to use my student number"
echo  "Choose 4 to see the Script used"
echo  "Choose 6 to delete (Duarte_Valente_results.txt)"
echo  "Choose q to quit"
echo
echo  "your choice: " "$Resposta"
echo
echo
echo
echo "look at the code for more information"
  case "$Resposta" in
    1) 
    i=0
    read -p "How many times do you want to run this ? " Times
    while [ $i -lt $Times ]
	do
	   read -p "Enter the desired Position " Position
	   sh ./Script01 $Position
	    i=$(( $i + 1 ))
	    
	        touch Duarte_Valente_results.txt
		r=$Position
		bash ./Script01 $r >> Duarte_Valente_results.txt
	    
	   done
echo 'Duarte_Valente_results.txt added/updated and sent to your directory'
	   ;;
	2) read -p "How Many Runs (Needs to be 0 or above) ? " Runs
       echo "Duarte_Valente_Random_Results.txt added to your directory! "
       i=0 
	   touch Duarte_Valente_Random_Results.txt
	   rm Duarte_Valente_Random_Results.txt
       while [ $i -lt $Runs ]
       do

         r=$(( ( RANDOM % 48502 )  + 1 ))
         bash ./Script01 $r >> Duarte_Valente_Random_Results.txt
         i=$(( $i + 1 ))
       done 
       ;;
	3) echo 'My Student number is 202000053'
   echo 'so...'
   samtools coverage  assembly.bam -r "gi|9626243|ref|NC_001416.1|:53-53" | awk '{ print $4 }'
   ;;
    4)  
		echo "Here is the Script used to make this Menu work ! "
		echo
		cat Script01 
	;;
    5) echo "There used to be something here but it disapeared :O" ;;
    6) echo 'readsvalente.txt has been deleted'
       touch readsvalente.txt
       rm readsvalente.txt ;;
	10) echo "WHOOO you found this!" #or did you cheat and watched the code...
	    echo "Is this... A... Easter Egg ???"
        echo "just take a look at this cool skull"
	echo
	echo
	echo ´´´´´´´´´´´´´´´´´´´´´7¶¶¶¶¶¶¶¶¶¶¶¶¶¶$7´´´´´´´´´´´´´´´´´´´´´
        echo ´´´´´´´´´´´´´´´´´¶¶¶¶¶ø´´´´´´´´´´´´´¢¶¶¶¶¶7´´´´´´´´´´´´´´´´
        echo ´´´´´´´´´´´´´´7¶¶¶´´´´´´´´´´´´´´´´´´´´´´´¶¶¶ø´´´´´´´´´´´´´´
        echo ´´´´´´´´´´´´´¶¶¶´´´´´´´´´´´´´´´´´´´´´´´´´´´¢¶¶´´´´´´´´´´´´´
        echo ´´´´´´´´´´´´¶¶´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´¶¶´´´´´´´´´´´´
        echo ´´´´´´´´´´´¶¶´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´¶¶´´´´´´´´´´´
        echo ´´´´´´´´´´¶¶´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´¶¶´´´´´´´´´´
        echo ´´´´´´´´´´¶¶´1¶1´´´´´´´´´´´´´´´´´´´´´´´´´´´´¶¶´¶¶´´´´´´´´´´
        echo ´´´´´´´´´´¶o´¶¶´´´´´´´´´´´´´´´´´´´´´´´´´´´´´¶¶´´¶´´´´´´´´´´
        echo ´´´´´´´´´´¶o´¶¶´´´´´´´´´´´´´´´´´´´´´´´´´´´´´¶¶´´¶´´´´´´´´´´
        echo ´´´´´´´´´´¶¶´´¶¶´´´´´´´´´´´´´´´´´´´´´´´´´´´´¶ø´7¶´´´´´´´´´´
        echo ´´´´´´´´´´¢¶´´¶¶´´´´´´´´´´´´´´´´´´´´´´´´´´´¶¶´´¶¶´´´´´´´´´´
        echo ´´´´´´´´´´´¶¶´o¶´´´1¢ø¶¶¶¶1´´´´´´¶¶¶¶ø¢1´´´¶¶´¶¶´´´´´´´´´´´
        echo ´´´´´´´´´´´´¶¶o¶´$¶¶¶¶¶¶¶¶¶´´´´´¶¶¶¶¶¶¶¶¶¶´¶¶ø¶7´´´´´´´´´´´
        echo ´´´´´´´´´´´´´¶¶¶´¶¶¶¶¶¶¶¶¶¶´´´´´¶¶¶¶¶¶¶¶¶¶´¶¶¶´´´´´´´´´´´´´
        echo ´´´´¶¶ø´´´´´´´¶ø´´¶¶¶¶¶¶¶¶´´´´´´´¶¶¶¶¶¶¶¶o´´¶7´´´´´´ø¶¶$´´´
        echo ´´´¶¶7¶¶´´´´´1¶´´´ø¶¶¶¶¶¶´´´7´7´´´o¶¶¶¶¶¶´´´¶¶´´´´´¶¶1¢¶7´´
        echo ´´7¶´´´¶¶´´´´1¶´´´´´oøø´´´´¶¶7¶¶´´´´oøo´´´´´¶$´´´´¶¶´´´¶$´´
        echo ´o¶¶´´´´¶¶¶¶´´¶¶´´´´´´´´´´¶¶¶´¶¶¶´´´´´´´´´´$¶´´¶¶¶¶´´´´¶¶ø´
        echo ¶¶´´´´´´´´´¶¶¶¶¶¶¶o´´´´´´´¶¶¶´¶¶¶´´´´´´´7¶¶¶¶¶¶¶1´´´´´´´´¶¶
        echo ¶¶¶¶¶¶¶¶1´´´´´o¶¶¶¶¶¶¶´´´´¶¶¶´¶¶¶´´´´$¶¶¶¶¶¶o´´´´´´¶¶¶¶¶¶¶¶
        echo ´´oøø1´¶¶¶¶¶´´´´´´¶1¶ø¶´´´´''´´´´´´´´´¶¶¶´¶o´´´´´¶¶¶¶¶1´øøø
        echo ´´´´´´´´´´7¶¶¶¶ø´´¶ø¶´¶¶´´´´´´´´´´´ø¶´¶1¶´´o¶¶¶¶o´´´´´´´´´´
        echo ´´´´´´´´´´´´´´ø¶¶¶¶¶´¶´´¶$¶¶¶¶¶¶¶¶¶´ø1´¶¶¶¶¶$´´´´´´´´´´´´´´
        echo ´´´´´´´´´´´´´´´´´´¶¶´¶´$¶´¶ø´¶´¶ø7¶oø¶´¶¶´´´´´´´´´´´´´´´´´´
        echo ´´´´´´´´´´´´´´´´¶¶¶¶´ø¶´¶´¶¶´¶´¶ø´¶´¶¶´¶¶¶¶o´´´´´´´´´´´´´´´
        echo ´´´´´´´´´´´´o¶¶¶¶´1¶´´´o¶¶¶¶ø¶o¶¶¶¶ø´´´¶ø´$¶¶¶¶´´´´´´´´´´´´
        echo ´´´´¶¶¶¶¶¶¶¶¶o´´´´´¶¶´´´´´´´´´´´´´´´´´¶¶´´´´´´¶¶¶¶¶¶¶¶¶´´´´
        echo ´´´¶¶´´´´´´´´´´´¶¶¶¶¶¶¶´´´´´´´´´´´´´¶¶¶ø¶¶¶o´´´´´´´´´´¶¶´´´
        echo ´´´´¶¶¶´´´´´1¶¶¶¶´´´´´¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶´´´´´¶¶¶¶ø´´´´´¶¶¶´´´´
        echo ´´´´´´¶¶´´´¶¶¢´´´´´´´´´´´7$¶¶¶¶¶¶7´´´´´´´´´´´7¶¶´´´¶¶´´´´´´
        echo ´´´´´´¢¶´´¶¶´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´¶¶´´¶¶´´´´´´
        echo ´´´´´´´¶¶¶ø´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´¢¶¶¶´´´´´´´
        echo 
;;		
	
    q) exit ;;
   esac
   echo "Enter to return:"
   read input
done
#note
#everytime there is a mention to Script01, this is the code line that its running:
#samtools coverage  assembly.bam -r "gi|9626243|ref|NC_001416.1|:$1-$1" | awk '{ print $4 }'
