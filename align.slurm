#!/bin/bash

#SBATCH --mail-user=sxl1308@case.edu
#SBATCH --mail-type=ALL
#SBATCH --nodes=1
#SBATCH --cpus-per-task=12
#SBATCH --time=24:00:00
#SBATCH --mem=38g
#SBATCH --output=alignstep1.out
#SBATCH -p smp

#Date: 4-05-18

module use /mnt/projects/OOHPC/modules

module load hisat2
module load samtools



# wt1

hisat2 -p 12 -x /mnt/projects/OOHPC/genomes/Homo_sapiens/NCBI/GRCh38/Sequence/HiSatIndex/human -1 /mnt/pan/courses/sybb412/sxl1308/readsTrimmed/WT1-trimmed-pair1.fastq.gz -2 /mnt/pan/courses/sybb412/sxl1308/readsTrimmed/WT1-trimmed-pair2.fastq.gz -S /mnt/pan/courses/sybb412/sxl1308/alignments/WT1.sam 

# wt2

hisat2 -p 12 -x /mnt/projects/OOHPC/genomes/Homo_sapiens/NCBI/GRCh38/Sequence/HiSatIndex/human -1 /mnt/pan/courses/sybb412/sxl1308/readsTrimmed/WT2-trimmed-pair1.fastq.gz -2 /mnt/pan/courses/sybb412/sxl1308/readsTrimmed/WT2-trimmed-pair2.fastq.gz -S /mnt/pan/courses/sybb412/sxl1308/alignments/WT2.sam 


# wt3

hisat2 -p 12 -x /mnt/projects/OOHPC/genomes/Homo_sapiens/NCBI/GRCh38/Sequence/HiSatIndex/human -1 /mnt/pan/courses/sybb412/sxl1308/readsTrimmed/WT3-trimmed-pair1.fastq.gz -2 /mnt/pan/courses/sybb412/sxl1308/readsTrimmed/WT3-trimmed-pair2.fastq.gz -S /mnt/pan/courses/sybb412/sxl1308/alignments/WT3.sam 


# wtGSI1

hisat2 -p 12 -x /mnt/projects/OOHPC/genomes/Homo_sapiens/NCBI/GRCh38/Sequence/HiSatIndex/human -1 /mnt/pan/courses/sybb412/sxl1308/readsTrimmed/WTGSI1-trimmed-pair1.fastq.gz -2 /mnt/pan/courses/sybb412/sxl1308/readsTrimmed/WTGSI1-trimmed-pair2.fastq.gz -S /mnt/pan/courses/sybb412/sxl1308/alignments/WTGSI1.sam 

# wtGSI2

hisat2 -p 12 -x /mnt/projects/OOHPC/genomes/Homo_sapiens/NCBI/GRCh38/Sequence/HiSatIndex/human -1 /mnt/pan/courses/sybb412/sxl1308/readsTrimmed/WTGSI2-trimmed-pair1.fastq.gz -2 /mnt/pan/courses/sybb412/sxl1308/readsTrimmed/WTGSI2-trimmed-pair2.fastq.gz -S /mnt/pan/courses/sybb412/sxl1308/alignments/WTGSI2.sam 

# wtGSI3

hisat2 -p 12 -x /mnt/projects/OOHPC/genomes/Homo_sapiens/NCBI/GRCh38/Sequence/HiSatIndex/human -1 /mnt/pan/courses/sybb412/sxl1308/readsTrimmed/WTGSI3-trimmed-pair1.fastq.gz -2 /mnt/pan/courses/sybb412/sxl1308/readsTrimmed/WTGSI3-trimmed-pair2.fastq.gz -S /mnt/pan/courses/sybb412/sxl1308/alignments/WTGSI3.sam 

# ko1

hisat2 -p 12 -x /mnt/projects/OOHPC/genomes/Homo_sapiens/NCBI/GRCh38/Sequence/HiSatIndex/human -1 /mnt/pan/courses/sybb412/sxl1308/readsTrimmed/KO1-trimmed-pair1.fastq.gz -2 /mnt/pan/courses/sybb412/sxl1308/readsTrimmed/KO1-trimmed-pair2.fastq.gz -S /mnt/pan/courses/sybb412/sxl1308/alignments/KO1.sam 


# ko2

hisat2 -p 12 -x /mnt/projects/OOHPC/genomes/Homo_sapiens/NCBI/GRCh38/Sequence/HiSatIndex/human -1 /mnt/pan/courses/sybb412/sxl1308/readsTrimmed/KO2-trimmed-pair1.fastq.gz -2 /mnt/pan/courses/sybb412/sxl1308/readsTrimmed/KO2-trimmed-pair2.fastq.gz -S /mnt/pan/courses/sybb412/sxl1308/alignments/KO2.sam


# ko3

hisat2 -p 12 -x /mnt/projects/OOHPC/genomes/Homo_sapiens/NCBI/GRCh38/Sequence/HiSatIndex/human -1 /mnt/pan/courses/sybb412/sxl1308/readsTrimmed/KO3-trimmed-pair1.fastq.gz -2 /mnt/pan/courses/sybb412/sxl1308/readsTrimmed/KO3-trimmed-pair2.fastq.gz -S /mnt/pan/courses/sybb412/sxl1308/alignments/KO3.sam

# koGSI1

hisat2 -p 12 -x /mnt/projects/OOHPC/genomes/Homo_sapiens/NCBI/GRCh38/Sequence/HiSatIndex/human -1 /mnt/pan/courses/sybb412/sxl1308/readsTrimmed/KOGSI1-trimmed-pair1.fastq.gz -2 /mnt/pan/courses/sybb412/sxl1308/readsTrimmed/KOGSI1-trimmed-pair2.fastq.gz -S /mnt/pan/courses/sybb412/sxl1308/alignments/KOGSI1.sam 

# koGSI2

hisat2 -p 12 -x /mnt/projects/OOHPC/genomes/Homo_sapiens/NCBI/GRCh38/Sequence/HiSatIndex/human -1 /mnt/pan/courses/sybb412/sxl1308/readsTrimmed/KOGSI2-trimmed-pair1.fastq.gz -2 /mnt/pan/courses/sybb412/sxl1308/readsTrimmed/KOGSI2-trimmed-pair2.fastq.gz -S /mnt/pan/courses/sybb412/sxl1308/alignments/KOGSI2.sam 


# koGSI3

hisat2 -p 12 -x /mnt/projects/OOHPC/genomes/Homo_sapiens/NCBI/GRCh38/Sequence/HiSatIndex/human -1 /mnt/pan/courses/sybb412/sxl1308/readsTrimmed/KOGSI3-trimmed-pair1.fastq.gz -2 /mnt/pan/courses/sybb412/sxl1308/readsTrimmed/KOGSI3-trimmed-pair2.fastq.gz -S /mnt/pan/courses/sybb412/sxl1308/alignments/KOGSI3.sam 
