cat("\n  This R script extracts proteins of interest from Roary output (gene_presence_absence.csv).\n\n")

# Set Working Directory
#setwd("~/projects/mgsa/roary/2016-06-07") # i 95
#setwd("~/projects/mgsa/roary/2016-06-21") # i 50

# Extract Command Line Arguments
args <- commandArgs(trailingOnly = TRUE)
keys <- args
print(keys)

# Loading Data into R
d.f <- read.csv('analysis/gene_presence_absence.csv', stringsAsFactors=FALSE, check.names=FALSE)

# Exporting Data
for(key in keys){ # key <- 'transfer'
 i <- grep(pattern=key, x=d.f$Annotation, ignore.case=FALSE); #d.f[i, c(3,4)]
 write.csv(d.f[i, c(3,4,15:ncol(d.f))], file=paste0('gene_content.',key,'.csv'))
 write.csv(as.matrix(sort(table(d.f$Annotation[i]), decreasing=TRUE)), file=paste0('gene_count.',key,'.csv'))
}

# Print R version and packages
sessionInfo()
