cat("\n  This R script produces boxplots using Roary output Tab Files (*.Rtab).\n\n")

# Set Working Directory
#setwd("~/projects/mgsa/roary/2016-06-07")

# List files in a directory
files <- list.files(path="analysis", pattern="number_of_.*\\.Rtab", full.names=TRUE)

# Loading Data into R
ld <- lapply(files, read.delim, header = FALSE)

# name each list item with the filename (sans full path)
names(ld) <- basename(files)

# Exploring Data Visually
par(mfcol=c(2,2), cex=0.6)
lapply(names(ld), function(x) boxplot(ld[[x]], main=x))
# http://stackoverflow.com/questions/14790331/adding-lists-names-as-plot-titles-in-lapply-call-in-r

# Print R version and packages
sessionInfo()
