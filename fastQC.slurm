#!/bin/bash

#SBATCH --mail-user=sxl1308@case.edu
#SBATCH --mail-type=ALL
#SBATCH --nodes=1
#SBATCH --cpus-per-task=12
#SBATCH --time=24:00:00
#SBATCH --mem=38g
#SBATCH --output=fastQC.out
#SBATCH -p smp

#Date: 4-5-18

module use /mnt/projects/OOHPC/modules

module load skewer

skewer --mode pe --threads 8 --mean-quality 30 --min 36 -q30 --output WT1 --compress -y AGATCGGAAGAGC -x AGATCGGAAGAGC /mnt/pan/courses/sybb412/sxl1308/readsRaw/WT1/WT1_1.fastq.gz /mnt/pan/courses/sybb412/sxl1308/readsRaw/WT1/WT1_2.fastq.gz
