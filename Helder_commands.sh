#/bin/bash
echo samtools depth -a assembly.bam | grep "3129" -m1
