
# Set Working Directory
#setwd("~/projects/mgsa/roary/2016-06-07") # i 95
#setwd("~/projects/mgsa/roary/2016-06-21") # i 50

system("grep 'ORGANISM' data/*.gb*  | sort -u | sed 's#data/##' | sed 's/ ORGANISM  //' > my.file.ORGANISM.txt")
# data/*.{gbk,gbff} # grep 'plasmid=' data/*.gbk | awk '{print $1,$2}'
annot <- read.delim("my.file.ORGANISM.txt", header = FALSE, quote = "", stringsAsFactors = FALSE)[,1]

# Loading package ape
#install.packages("ape")
library(ape); #ls("package:ape")

# draw trees
pdf("my.tree.pdf", pointsize=15, width=15, height=9)

for(myfile in dir(path="analysis", pattern="\\.newick$", full.names=TRUE)){
 tre = read.tree(myfile)
 tre$tip.label = apply(as.matrix(tre$tip.label), MARGIN=c(1,2), function(x) annot[ grep(pattern=x, x=annot) ] )

 write.tree(tre, file=paste0(myfile,".tre"))

 par(mfcol=c(1,1), mgp=c(1.7, 0.5, 0), mar=c(1, 0.5, 1, 0.8), cex=0.9) # mar=c(bottom, left, top, right)
 plot.phylo(tre, type="phylogram", use.edge.length=TRUE, show.node.label=TRUE, font=3)
 add.scale.bar(x=0.01, y=0.7)
 legend("topleft", legend=myfile, box.lty=0)
}

dev.off()

