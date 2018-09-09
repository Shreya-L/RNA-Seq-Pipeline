#!/bin/bash
#$ -cwd
#$ -j y
#$ -M youremail@email.com

#$ -l h_vmem=2G
#$ -pe shm 6
#$ -l h_rt=6:00:00
module load rsem/1.2.30


rsem-calculate-expression --bowtie2  --bowtie2-path /srv/gsfs0/software/bowtie/bowtie2-2.2.7 --estimate-rspd  --keep-intermediate-files  --output-genome-bam  -p 6 raw_data/test/S001_R1_1M.fastq  /srv/gsfs0/shared_data/RefGenomes/iGenome_BaaS/Homo_sapiens/UCSC/hg19/Sequence/RSEMIndex/1.2.30/hg19.rsem  RSEM/test

