#!/bin/bash
 clear
    read -p "Lets se the coverage of my sudent number (170)(Write anything)" 
         samtools coverage assembly.bam -r "gi|9626243|ref|NC_001416.1|:170-170" | awk '{ print $4 }'  
       touch gonçalo_alves_results.txt
       rm gonçalo_alves_results.txt
       echo "Now lets run the script1 5 times"
       i=0
       while [ $i -lt 5 ]
       do
       read -p "Enter a Diffrente Position (Position number $(( $i + 1 )) ) " r
         bash ./script1 $r >> gonçalo_alves_results.txt
         i=$(( $i + 1 ))
       cat gonçalo_alves_results.txt
       done
       echo "gonçalo_alves_results has been added to your directory"
#script1 = samtools coverage assembly.bam -r "gi|9626243|ref|NC_001416.1|:$1-$1" | awk '{ print $4 }'

