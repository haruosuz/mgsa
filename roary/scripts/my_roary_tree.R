# Set Working Directory
#setwd("~/projects/mgsa/roary/2016-06-07") # i 95

system("find data/gbk -name '*.gbk' | xargs grep 'ORGANISM' | sort -u | grep -v 'phage' | sed 's/ ORGANISM  //; s#.*/##' | perl -pe 's/.gbk:/.gbk\t/;' > my.file.name.txt")
annot <- read.delim("my.file.name.txt", header = FALSE, quote = "", stringsAsFactors = FALSE)
annot <- apply(annot[,1:2], 1, paste0, collapse=" ")

# Loading packages
library(ape) #ls("package:ape") #install.packages("ape")
library(phangorn) # midpoint

# draw trees
pdf("my.tree.pdf", pointsize=15, width=15, height=9)

for(myfile in dir(path="analysis", pattern="\\.newick$", full.names=TRUE)){
 tre <- read.tree(myfile)

 #x <- tre$tip.label[2]; TF <- regexpr(pattern=x, text=annot) > 0; sum(TF); annot[TF]
 tre$tip.label <- apply(as.matrix(tre$tip.label), MARGIN=c(1,2), function(x) annot[regexpr(x, annot) > 0])

 write.tree(tre, file=paste0(myfile,".tre"))

 par(mfcol=c(1,1), mgp=c(1.7, 0.5, 0), mar=c(1, 0.5, 1, 0.8), cex=0.9) # mar=c(bottom, left, top, right)
 #library(phangorn); tre <- midpoint(tre)
 plot.phylo(ladderize(tre, right=FALSE), type="phylogram", use.edge.length=TRUE, show.node.label=TRUE, font=3)
 add.scale.bar(x=0.01, y=0.9)#, col=2)
 legend("topleft", legend=myfile, box.lty=0)
}

dev.off()