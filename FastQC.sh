#!/bin/bash


#$ -cwd
#$ -j y
#$ -l h_vmem=8G
#$ -l h_rt=6:00:00
#$ -M youremail@email.com



module use /mnt/projects/OOHPC/modules

module load fastqc


##specific to paired reads
fastqc –o /Desktop/FastQC/ –f /Desktop/FastQC/sample1_1.fastq.gz /Desktop/FastQC/sample1_2.fastq.gz
