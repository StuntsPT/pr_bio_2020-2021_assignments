#!/bin/bash
echo "Choose a position"

read position

echo "Coverage of position number $position:" |& tee -a Eduardo_Santos_results.txt

samtools mpileup assembly.bam | grep -i $position | awk '{print $4}' | sed -n '1p' |& tee -a Eduardo_Santos_results.txt













