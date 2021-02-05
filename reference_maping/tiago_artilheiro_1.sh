#!/bin/bash

 samtools coverage  assembly.bam -r "gi|9626243|ref|NC_001416.1|:$2-$2"  | awk '{ print $4 }'  >> $1
