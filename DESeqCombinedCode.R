library(DESeq2)
library("RColorBrewer")
library("gplots")
library("ggplot2")


setwd("/Users/ShreyaLouis/Desktop/Seung Kim Lab/bcl11a/CombinedExperiment/")


##par(mar=c(5.1,4.1,4.1,4.1))

count_table <- read.table("summary_combined_gene_table_count.txt",head=T)
count_table_sample <- read.table("count_tab_combined.txt",head =T)


dds <- DESeqDataSetFromMatrix(countData=count_table, colData=count_table_sample, design =~ condition)
dds <- dds[ rowSums(counts(dds)) > 4, ]

dds <- estimateSizeFactors(dds)


sizeFactors(dds)
# contl_1   contl_2      kd_1      kd_2 
#0.9041995 1.1834153 1.1323673 0.8776850 experiment 1
# WT_3      WT_4         KD_3      KD_4
#1.1648174 0.9947104 0.9517809 0.9873554 experiment 2
#WT_1      WT_2      WT_3      WT_4      KD_1      KD_2      KD_3      KD_4 
#0.8408805 1.1128103 1.2715309 1.1080235 1.0523610 0.8208550 1.0506382 1.1053073 


dds <- DESeq(dds)


plotMA(dds, main="Combined Volcano Plot",ylim=c(-2,2))


res <- results(dds,contrast=c("condition","KD","WT"))
resOrdered <- res[order(res$pvalue),]
write.table(as.data.frame(resOrdered),file="diffgene_DESeq2_kd_vs_contl",row.names = T, sep="\t",quote=F)

logtransform <- log2(counts(dds, normalized=T))

select <- order(rowMeans(logtransform),decreasing=T)[1:19000]
hmcol <- colorRampPalette(brewer.pal(9,"GnBu"))(100)
heatmap.2(logtransform[select,],col=hmcol,Rowv=F,Colv=T,scale="none",dendrogram="column",trace="none",margin=c(6,6))

nor_counts <- counts(dds,normalized=T)
write.table(nor_counts,file="Combined_Normalized_counts.txt",row.names=T,sep="\t",quote=F)




rld <- rlogTransformation(dds)
sampleDists <- as.matrix(dist(t(assay(rld))))



heatmap.2(as.matrix(sampleDists),col=hmcol,Rowv=T,Colv=T,scale="none",trace="none",margin=c(10,10))

conditionClustering <- plotPCA(rld, intgroup=c("condition"), returnData = TRUE)
percentVar <- round(100* attr(conditionClustering, "percentVar"))

ggplot(conditionClustering, aes(x = PC1, y = PC2, color = condition)) +
  geom_point(size = 6) +
  theme(legend.position = "none", panel.background = element_rect(fill = "White"), 
        axis.line = element_line(colour = "gray80"), axis.text = element_text(size = 15), axis.title = element_text(size=16))+
  xlab(paste0("PC1: ", percentVar[1], "% variance")) +
  ylab(paste0("PC2: ", percentVar[2], "% variance"))

plotPCA(rld, intgroup=c("sample"))


garbage <- dev.off()
