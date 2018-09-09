#!/bin/bash
#SBATCH --mail-user=sxl1308@case.edu
#SBATCH --mail-type=ALL
#SBATCH --nodes=1
#SBATCH --cpus-per-task=12
#SBATCH --time=24:00:00
#SBATCH --mem=38g
#SBATCH --output=flagstat.out
#SBATCH -p smp

module load samtools

samtools flagstat WT1.bam > WT1.flagstat
samtools flagstat WT2.bam > WT2.flagstat
samtools flagstat WT3.bam > WT3.flagstat
samtools flagstat WTGSI1.bam > WTGSI1.flagstat
samtools flagstat WTGSI2.bam > WTGSI2.flagstat
samtools flagstat WTGSI3.bam > WTGSI3.flagstat

samtools flagstat KO2.bam > KO2.flagstat
samtools flagstat KO3.bam > KO3.flagstat
samtools flagstat KOGSI1.bam > KOGSI1.flagstat
samtools flagstat KOGSI2.bam > KOGSI2.flagstat
samtools flagstat KOGSI3.bam > KOGSI3.flagstat
