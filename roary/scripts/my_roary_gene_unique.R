cat("\n  This R script identifies group-unique genes using Roary output (gene_presence_absence.csv).\n\n")

# Set Working Directory
#setwd("~/projects/mgsa/roary/2016-06-07") # i 95
#setwd("~/projects/mgsa/roary/2016-06-21") # i 50

# Loading Data into R
d.f <- read.csv('analysis/gene_presence_absence.csv', stringsAsFactors=FALSE, check.names=FALSE)
colnames(d.f)[15:ncol(d.f)]

# Creating groups 
group1 <- c('NC_001735.gbk', 'NC_005088.gbk')
group2 <- c('NC_007337.gbk', 'NC_008459.gbk')

# Genes present in group1 and absent in group2
TF <- apply(d.f[,group1, drop=FALSE] != '', 1, sum) == length(group1) & apply(d.f[,group2, drop=FALSE] == '', 1, sum) == length(group2); sum(TF); 
write.csv(d.f[TF, c(3,4,15:ncol(d.f))], file='gene_presence_group1_absence_group2.csv')

# Genes present in group2 and absent in group1
TF <- apply(d.f[,group2, drop=FALSE] != '', 1, sum) == length(group2) & apply(d.f[,group1, drop=FALSE] == '', 1, sum) == length(group1); sum(TF); 
write.csv(d.f[TF, c(3,4,15:ncol(d.f))], file='gene_presence_group2_absence_group1.csv')

# Print R version and packages
sessionInfo()


