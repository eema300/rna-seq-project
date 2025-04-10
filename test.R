library(DESeq2)
library(clusterProfiler)
library(org.Hs.eg.db)
# Create example data
countData <- matrix(rnbinom(1000, mu=100, size=1), ncol=4)
colData <- data.frame(condition = c("A", "A", "B", "B"))
dds <- DESeqDataSetFromMatrix(countData, colData, ~condition)
# Run DESeq
dds <- DESeq(dds)
res <- results(dds)
# View top results
head(res)