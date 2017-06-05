cat("\n# This R script modifies Roary output (gene_presence_absence.csv). assigns functional annotations to each homologous gene cluster (protein family) by merging all the product names of proteins belonging to the same protein family.")

cat("\n#  Usage: Rscript --vanilla my_roary_gene_products.R ./analysis/my.locus_tag.product.txt ./analysis/gene_presence_absence.csv \n\n")

args <- commandArgs(TRUE)
args1 <- args[1]
args2 <- args[2]

# Set Working Directory
#setwd("~/projects/mgsa/roary/2016-07-12"); args1 <- "./analysis/my.locus_tag.product.txt"; args2 <- "./analysis/gene_presence_absence.csv"
#setwd("~/projects/dora.hideo/pc_ric/2016-12-22/"); args1 <- "./analysis/my.locus_tag.product.txt"; args2 <- "./analysis/gene_presence_absence.csv"

# Loading Data into R
ltp <- read.delim(args1, stringsAsFactors=FALSE, header=FALSE, col.names=c("locus_tag","product"))
d.f <- read.csv(args2, stringsAsFactors=FALSE, check.names=FALSE)

colnames(d.f)[15:ncol(d.f)]
#head(d.f[,15:ncol(d.f)], 2)
#tail(d.f[,15:ncol(d.f)], 2)
#x <- "R751p07.p01.CDS"; unlist(strsplit(x,"\\."))[1]
d.f[,15:ncol(d.f)] <- apply(as.matrix(d.f[,15:ncol(d.f)]), MARGIN=c(1,2), function(x){ y <- unlist(strsplit(x,"\\."))[1]; ifelse(is.na(y), "", y); } )
#x <- "R751p07"; x <- "REUT_RS32860"; paste(ltp[x == ltp[,'locus_tag'],'product'], collapse="|")
tmp <- apply(d.f[,15:ncol(d.f)], MARGIN=c(1,2), function(x) paste(ltp[x == ltp[,"locus_tag"],"product"], collapse="|") )
tmp <- sapply(apply(tmp, 1, unique), paste, collapse="~")
d.f$Annotation <- gsub(pattern="^~|~$", replacement="", tmp, perl=TRUE)
write.csv(d.f, file="my.gene_presence_absence.csv")

# Print R version and packages
sessionInfo()


