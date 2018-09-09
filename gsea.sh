#!/bin/bash
#$ -cwd
#$ -j y
#$ -l h_vmem=8G
#$ -l h_rt=6:00:00
#$ -M youremail@email.com
date
hostname
module load gsea/2.2.0




D0=$HUMAN_GO_BP_ALL_PATHWAYS
D1=/srv/gsfs0/projects/gbsc/Resources/GSEA/MSigDB/human_symbol_baderlab/February_01_2017/Human_DiseasePhenotypes_symbol.gmt
D2=/srv/gsfs0/projects/gbsc/Resources/GSEA/MSigDB/5.2/c6.all.v5.2.symbols.gmt

java -Xmx2048m  $GSEA_TOOL  -gmx $D0 -collapse false  -rpt_label sample  -set_max 500 -set_min 15 -zip_report false  -res summary_table_gene_FPKM.txt -cls sample.cls  -permute gene_set  -plot_top_x 100  -out  gsea_results_go_bp_all_pathways

java -Xmx2048m  $GSEA_TOOL  -gmx $D1 -collapse false  -rpt_label sample  -set_max 500 -set_min 15 -zip_report false  -res summary_table_gene_FPKM.txt -cls sample.cls  -permute gene_set  -plot_top_x 100  -out  gsea_results_baderlab_DiseasePhenotypes

java -Xmx2048m  $GSEA_TOOL  -gmx $D2 -collapse false  -rpt_label sample  -set_max 500 -set_min 15 -zip_report false  -res summary_table_gene_FPKM.txt -cls sample.cls  -permute gene_set  -plot_top_x 100  -out  gsea_results_MSigDB_C6



