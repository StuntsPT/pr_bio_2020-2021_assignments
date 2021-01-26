samtools coverage assembly.bam -r "gi|9626243|ref|NC_001416.1|:$1-$1" | awk '{ print $4 }'
