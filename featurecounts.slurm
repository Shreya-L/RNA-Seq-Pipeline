#!/bin/bash
#SBATCH --mail-user=sxl1308@case.edu
#SBATCH --mail-type=ALL
#SBATCH --nodes=1
#SBATCH --cpus-per-task=12
#SBATCH --time=24:00:00
#SBATCH --mem=38g
#SBATCH --output=featurecounts.out
#SBATCH -p smp

module use /mnt/projects/OOHPC/modules/

module load subread


featureCounts -T 12 -s 0 -p -a /mnt/projects/OOHPC/genomes/Homo_sapiens/NCBI/GRCh38/Annotation/Archives/archive-2015-08-11-09-31-31/Genes/genes.gtf -o /mnt/pan/courses/sybb412/sxl1308/counts/gene_id.counts /mnt/pan/courses/sybb412/sxl1308/alignments/*.bam











