#!/bin/bash
samtools depth -a assembly.bam | grep "3108" -m1 | cut -f3