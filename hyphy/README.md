----------

Haruo Suzuki (haruo[at]g-language[dot]org)  
Last Update: 2017-08-19

----------

# HyPhy Tutorial Project
Project started 2017-08-14.

I have created shell scripts for automating analyses in HyPhy tutorials.


![https://twitter.com/hyphy_software](https://pbs.twimg.com/media/C-7GKl4XYAAXeHu.jpg:small)

http://hyphy.org
HyPhy - Hypothesis Testing using Phylogenies

----------

## Project directory structures

    hyphy/
     README.md: project documentation
     tutorials/: contains scripts for HyPhy tutorials
      current-release-tutorial/:
      2013-07-01/: last modified on 1 July 2013

----------

## [Installation](https://github.com/veg/hyphy#installation)

### Install CMake
Latest Release (3.8.2) downloaded on 2017-06-04 from <https://cmake.org/download/da> using:

    wget -b --no-check-certificate https://cmake.org/files/v3.8/cmake-3.8.2-Linux-x86_64.tar.gz
    tar xvzf cmake-3.8.2-Linux-x86_64.tar.gz 

### Install HyPhy

    git clone https://github.com/veg/hyphy
    cd hyphy
    cmake -DINSTALL_PREFIX=/location/of/choice .
    make HYPHYMP
    make install


----------

## Tutorials

### current-release-tutorial
http://hyphy.org/tutorials/current-release-tutorial/
Using HyPhy to Detect Selection - HyPhy - Hypothesis Testing using Phylogenies

    # Estimate a single alignment-wide ω.
    bash run_hyphy_basic.sh

    # Use BUSTED to test for alignment-wide episodic diversification.
    ## BUSTED: Full tree analysis
    bash run_hyphy_busted.sh

    # Use aBSREL to find lineages which have experienced episodic diversification.
    ## aBSREL: Full tree analysis
    bash run_hyphy_aBSREL.sh

    # Use FUBAR to find sites which have experienced pervasive diversification.
    bash run_hyphy_fubar.sh

    # Use MEME to find sites which have experienced episodic diversification.
    bash run_hyphy_meme.sh

    # Use RELAX to compare selective pressures on different parts of the tree
    bash run_hyphy_relax.sh

### 2013-07-01
http://hyphy.org/w/index.php/HyPhy
HyPhy tutorial

This page was last modified on 1 July 2013, at 23:29.

[Using Single Breakpoint Recombination (SBP)](http://hyphy.org/w/index.php/HyPhy#Using_Single_Breakpoint_Recombination_.28SBP.29)

    bash run_hyphy_sbp.sh

----------

## Acknowledgements

I am grateful to Drs. Steven Weaver and Sergei Pond for their advice on HyPhy.

----------

## References

### HyPhy Official Site

http://hyphy.org
HyPhy - Hypothesis Testing using Phylogenies

http://hyphy.org/w/index.php/Main_Page
This page was last modified on 21 April 2017, at 22:46.

http://hyphy.org/w/index.php/DATA_FILE_PRINT_FORMAT
DATA FILE PRINT FORMAT - HyPhy Wiki

http://hyphy.org/w/index.php/User_Guides
http://hyphy.org/pubs/Methods2011.pdf

https://www.youtube.com/watch?v=4gcQ6CCTRIY
Introduction to HyPhy: Hypothesis testing using Phylogenies - YouTube
Sergei Kosakovsky Pond, UCSD
January 25, 2012

### Unofficial sites

https://omictools.com/hypothesis-testing-using-phylogenies-tool
HyPhy (Hypothesis testing using Phylogenies) | Phylogenetic inference - OMICtools

http://maojf.blogspot.jp/2011/10/hyphy-hypothesis-testing-using.html
evolving all we are

https://www.biostars.org/p/17539/
Recombination Breakpoint Detection

Parsing HYPHY output
https://www.bioconductor.org/packages/devel/bioc/vignettes/ggtree/inst/doc/treeImport.html#parsing-hyphy-output
2017-06-29
https://bioconductor.org/packages/devel/bioc/vignettes/treeio/inst/doc/treeio.html#parsing-hyphy-output
2017-04-24

### Japanese

http://d.hatena.ne.jp/haruosuz/20071101
HyPhy - Haruo Suzuki / Bioinformatics

http://www.geocities.jp/ancientfishtree/HyPhy.html
井上潤：HyPhy
2007 年 7 月 20 日 改訂

http://www.fish-evol.com/PAML.html
井上 潤：PAML
2014 年 3 月 17 日　改訂

http://www.geocities.jp/ancientfishtree/dNdS_ji.html
dN/dS 検定
2016 年 7 月 23 日　井上 潤，米澤 隆弘

http://ultrabem.com/other_topics/genetics/synonymous_substitutions.html
同義置換と非同義置換: 計算方法，意味，論文での示し方
other_topics/genetics/synonymous_substitutions
7-1-2017 updated

### Papers citing HyPhy

BUSTED
https://www.ncbi.nlm.nih.gov/pubmed/25701167
Mol Biol Evol. 2015 May;32(5):1365-71. 
Gene-wide identification of episodic selection.
Murrell et al.

https://www.ncbi.nlm.nih.gov/pubmed/25697341
Mol Biol Evol. 2015 May;32(5):1342-53. 
Less is more: an adaptive branch-site random effects model for efficient detection of episodic diversifying selection.
Smith et al.

https://www.ncbi.nlm.nih.gov/pubmed/25540451
Mol Biol Evol. 2015 Mar;32(3):820-32. 
RELAX: detecting relaxed selection in a phylogenetic framework.
Wertheim et al.

https://www.ncbi.nlm.nih.gov/pubmed/23420840
Mol Biol Evol. 2013 May;30(5):1196-205. doi: 10.1093/molbev/mst030. Epub 2013 Feb 18.
FUBAR: a fast, unconstrained bayesian approximation for inferring selection.
Murrell et al.


https://www.ncbi.nlm.nih.gov/pubmed/27588756
PLoS Negl Trop Dis. 2016 Sep 2;10(9):e0004978.
Nonstructural Proteins Are Preferential Positive Selection Targets in Zika Virus and Related Flaviviruses.
http://journals.plos.org/plosntds/article?id=10.1371/journal.pntd.0004978
BUSTED (branch-site unrestricted statistical test for episodic diversification) [25] is an alternative approach implemented in the HyPhy package [26] designed to describe episodic positive selection acting on specific branches in the phylogenetic tree at a proportion of sites. 

https://www.ncbi.nlm.nih.gov/pubmed/25942676
PLoS Genet. 2015 May 5;11(5):e1005203.
Overlapping Patterns of Rapid Evolution in the Nucleic Acid Sensors cGAS and OAS1 Suggest a Common Mechanism of Pathogen Antagonism and Escape.
http://journals.plos.org/plosgenetics/article?id=10.1371/journal.pgen.1005203
We further analyzed cGAS variants using the PARtitioning approach for Robust Inference of Selection (PARRIS) algorithm from the HyPhy package [45], which also accounts for recombination events in the dataset, as well as BUSTED, a related measure to detect gene wide evidence of positive selection [46].

https://www.ncbi.nlm.nih.gov/pubmed/22155358
Infect Genet Evol. 2012 Mar;12(2):274-7. 
Functional bias of positively selected genes in Streptococcus genomes.
Suzuki H1, Stanhope MJ.

https://www.ncbi.nlm.nih.gov/pubmed/18394970
Infect Genet Evol. 2008 May;8(3):331-9.
Positive selection in penicillin-binding proteins 1a, 2b, and 2x from Streptococcus pneumoniae and its correlation with amoxicillin resistance development.
Stanhope MJ1, Lefébure T, Walsh SL, Becker JA, Lang P, Pavinski Bitar PD, Miller LA, Italia MJ, Amrine-Madsen H.

----------


