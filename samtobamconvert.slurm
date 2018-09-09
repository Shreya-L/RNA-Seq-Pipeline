#!/bin/bash

#SBATCH --mail-user=sxl1308@case.edu
#SBATCH --mail-type=ALL
#SBATCH --nodes=1
#SBATCH --cpus-per-task=12
#SBATCH --time=24:00:00
#SBATCH --mem=38g
#SBATCH --output=alignstep1.out
#SBATCH -p smp

#Date: 4-12-18


module load samtools

#WT1

samtools view -bS WT1.sam | samtools sort - WT1 && samtools index -o WT1 WT1.bam >
rm WT1.sam

#wt2

samtools view -bS WT2.sam | samtools sort - WT2 && samtools index -o WT2 WT2.bam >
rm WT2.sam

#wt3

samtools view -bS WT3.sam | samtools sort - WT3 && samtools index -o WT3 WT3.bam >
rm WT3.sam

#wtGSI1

samtools view -bS WTGSI1.sam | samtools sort - WTGSI1 && samtools index -o WTGSI1 WTGSI1.bam >
rm WTGSI1.sam

#wtGSI2

samtools view -bS WTGSI2.sam | samtools sort - WTGSI2 && samtools index -o WTGSI2 WTGSI2.bam >
rm WTGSI2.sam


#wtGSI3

samtools view -bS WTGSI3.sam | samtools sort - WTGSI3 && samtools index -o WTGSI3 WTGSI3.bam >
rm WTGSI3.sam


#KO1

samtools view -bS KO1.sam | samtools sort - KO1 && samtools index -o KO1 KO1.bam >
rm KO1.sam

#KO2

samtools view -bS KO2.sam | samtools sort - KO2 && samtools index -o KO2 KO2.bam >
rm KO2.sam

#KO3

samtools view -bS KO3.sam | samtools sort - KO3 && samtools index -o KO3 KO3.bam >
rm KO3.sam

#KOGSI1

samtools view -bS KOGSI1.sam | samtools sort - KOGSI1 && samtools index -o KOGSI1 KOGSI1.bam >
rm KOGSI1.sam

#KOGSI2

samtools view -bS KOGSI2.sam | samtools sort - KOGSI2 && samtools index -o KOGSI2 KOGSI2.bam >
rm KOGSI2.sam


#KOGSI3

samtools view -bS KOGSI3.sam | samtools sort - KOGSI3 && samtools index -o KOGSI3 KOGSI3.bam >
rm KOGSI3.sam

