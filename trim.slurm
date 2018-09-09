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

skewer --mode pe --threads 8 --mean-quality 30 --min 36 -q 30 --output WT1 --compress -y AGATCGGAAGAGC -x AGATCGGAAGAGC /mnt/pan/courses/sybb412/sxl1308/readsRaw/WT1/WT1_1.fastq.gz /mnt/pan/courses/sybb412/sxl1308/readsRaw/WT1/WT1_2.fastq.gz

skewer --mode pe --threads 8 --mean-quality 30 --min 36 -q 30 --output WT2 --compress -y AGATCGGAAGAGC -x AGATCGGAAGAGC /mnt/pan/courses/sybb412/sxl1308/readsRaw/WT2/WT2_1.fastq.gz /mnt/pan/courses/sybb412/sxl1308/readsRaw/WT2/WT2_2.fastq.gz

skewer --mode pe --threads 8 --mean-quality 30 --min 36 -q 30 --output WT3 --compress -y AGATCGGAAGAGC -x AGATCGGAAGAGC /mnt/pan/courses/sybb412/sxl1308/readsRaw/WT3/WT3_1.fastq.gz /mnt/pan/courses/sybb412/sxl1308/readsRaw/WT3/WT3_2.fastq.gz

skewer --mode pe --threads 8 --mean-quality 30 --min 36 -q 30 --output WTGSI1 --compress -y AGATCGGAAGAGC -x AGATCGGAAGAGC /mnt/pan/courses/sybb412/sxl1308/readsRaw/WTGSI1/WTGSI1_1.fastq.gz /mnt/pan/courses/sybb412/sxl1308/readsRaw/WTGSI1/WTGSI1_2.fastq.gz

skewer --mode pe --threads 8 --mean-quality 30 --min 36 -q 30 --output WTGSI2 --compress -y AGATCGGAAGAGC -x AGATCGGAAGAGC /mnt/pan/courses/sybb412/sxl1308/readsRaw/WTGSI2/WTGSI2_1.fastq.gz /mnt/pan/courses/sybb412/sxl1308/readsRaw/WTGSI2/WTGSI2_2.fastq.gz

skewer --mode pe --threads 8 --mean-quality 30 --min 36 -q 30 --output WTGSI3 --compress -y AGATCGGAAGAGC -x AGATCGGAAGAGC /mnt/pan/courses/sybb412/sxl1308/readsRaw/WTGSI3/WTGSI3_1.fastq.gz /mnt/pan/courses/sybb412/sxl1308/readsRaw/WTGSI3/WTGSI3_2.fastq.gz

skewer --mode pe --threads 8 --mean-quality 30 --min 36 -q 30 --output KO1 --compress -y AGATCGGAAGAGC -x AGATCGGAAGAGC /mnt/pan/courses/sybb412/sxl1308/readsRaw/KO1/KO1_1.fastq.gz /mnt/pan/courses/sybb412/sxl1308/readsRaw/KO1/KO1_2.fastq.gz

skewer --mode pe --threads 8 --mean-quality 30 --min 36 -q 30 --output KO2 --compress -y AGATCGGAAGAGC -x AGATCGGAAGAGC /mnt/pan/courses/sybb412/sxl1308/readsRaw/KO2/KO2_1.fastq.gz /mnt/pan/courses/sybb412/sxl1308/readsRaw/KO2/KO2_2.fastq.gz

skewer --mode pe --threads 8 --mean-quality 30 --min 36 -q 30 --output KO3 --compress -y AGATCGGAAGAGC -x AGATCGGAAGAGC /mnt/pan/courses/sybb412/sxl1308/readsRaw/KO3/KO3_1.fastq.gz /mnt/pan/courses/sybb412/sxl1308/readsRaw/KO3/KO3_2.fastq.gz

skewer --mode pe --threads 8 --mean-quality 30 --min 36 -q 30 --output KOGSI1 --compress -y AGATCGGAAGAGC -x AGATCGGAAGAGC /mnt/pan/courses/sybb412/sxl1308/readsRaw/KOGSI1/KOGSI1_1.fastq.gz /mnt/pan/courses/sybb412/sxl1308/readsRaw/KOGSI1/KOGSI1_2.fastq.gz 

skewer --mode pe --threads 8 --mean-quality 30 --min 36 -q 30 --output KOGSI2 --compress -y AGATCGGAAGAGC -x AGATCGGAAGAGC /mnt/pan/courses/sybb412/sxl1308/readsRaw/KOGSI2/KOGSI2_1.fastq.gz /mnt/pan/courses/sybb412/sxl1308/readsRaw/KOGSI2/KOGSI2_2.fastq.gz

skewer --mode pe --threads 8 --mean-quality 30 --min 36 -q 30 --output KOGSI3 --compress -y AGATCGGAAGAGC -x AGATCGGAAGAGC /mnt/pan/courses/sybb412/sxl1308/readsRaw/KOGSI3/KOGSI3_1.fastq.gz /mnt/pan/courses/sybb412/sxl1308/readsRaw/KOGSI3/KOGSI3_2.fastq.gz

