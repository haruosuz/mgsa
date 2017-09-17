# Set Working Directory
#setwd("~/projects/mgsa/roary/2016-06-07") # i 95
#setwd("~/projects/mgsa/roary/2016-06-21") # i 50
setwd("~/projects/jc923/nckuh21/2017-09-17")

system("find data -name '*.gbk' | xargs grep 'ORGANISM' | sort -u | grep -v 'phage' | sed 's/ ORGANISM  //; s#.*/##' | perl -pe 's/.gbk:/.gbk\t/;' > my.file.ORGANISM.txt; find data -name '*.gbk' | xargs grep '/strain=' | sort -u | sed 's# */strain=\"##; s#\"##g; s#.*/##' | perl -pe 's/.gbk:/.gbk\t/;' > my.file.strain.txt; join -1 1 -2 1 -a 1 -t "$(printf '\011')" my.file.ORGANISM.txt my.file.strain.txt > my.file.name.txt")

annot <- read.delim("my.file.name.txt", header = FALSE, quote = "", stringsAsFactors = FALSE)

# Loading package ape
#install.packages("ape")
library(ape); #ls("package:ape")

# draw trees
pdf("my.tree.pdf", pointsize=15, width=15, height=9)

for(myfile in dir(path="analysis", pattern="\\.newick$", full.names=TRUE)){
 tre = read.tree(myfile)

 #x <- tre$tip.label[2]; TF <- regexpr(pattern=x, text=annot[,1]) > 0; sum(TF); annot[TF,3]
 tre$tip.label <- apply(as.matrix(tre$tip.label), MARGIN=c(1,2), function(x) paste0(annot[regexpr(x, annot[,1]) > 0, c(1,2,3)], collapse=" ") )

 #x <- tre$tip.label[1]; unlist(strsplit(annot[ grep(pattern=x, x=annot) ],":"))[2]
 #tre$tip.label = apply(as.matrix(tre$tip.label), MARGIN=c(1,2), function(x) unlist(strsplit(annot[ grep(pattern=x, x=annot) ],":"))[2] )

 write.tree(tre, file=paste0(myfile,".tre"))

 par(mfcol=c(1,1), mgp=c(1.7, 0.5, 0), mar=c(1, 0.5, 1, 0.8), cex=0.9) # mar=c(bottom, left, top, right)
 plot.phylo(tre, type="phylogram", use.edge.length=TRUE, show.node.label=TRUE, font=3)
 add.scale.bar(x=0.01, y=0.7)
 legend("topleft", legend=myfile, box.lty=0)
}

dev.off()

