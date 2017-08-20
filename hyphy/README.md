----------

Haruo Suzuki (haruo[at]g-language[dot]org)  
Last Update: 2017-08-19

----------

# HyPhy Tutorial Project
Project started 2017-08-14.

I have created shell scripts for automating analyses in HyPhy tutorials.


![https://twitter.com/hyphy_software](https://pbs.twimg.com/media/C-7GKl4XYAAXeHu.jpg:small)

http://www.hyphy.org
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
http://www.hyphy.org/tutorials/current-release-tutorial/
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
http://www.hyphy.org/w/index.php/HyPhy
HyPhy tutorial

This page was last modified on 1 July 2013, at 23:29.

[Using Single Breakpoint Recombination (SBP)](http://www.hyphy.org/w/index.php/HyPhy#Using_Single_Breakpoint_Recombination_.28SBP.29)

    bash run_hyphy_sbp.sh

----------

## Acknowledgements

I am grateful to Drs. Steven Weaver and Sergei Pond for their advice on HyPhy.

----------

## References

### HyPhy Official Site

http://www.hyphy.org
HyPhy - Hypothesis Testing using Phylogenies

http://www.hyphy.org/w/index.php/Main_Page
This page was last modified on 21 April 2017, at 22:46.

http://www.hyphy.org/w/index.php/User_Guides
http://www.hyphy.org/pubs/Methods2011.pdf

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

https://www.ncbi.nlm.nih.gov/pubmed/22155358
Infect Genet Evol. 2012 Mar;12(2):274-7. doi: 10.1016/j.meegid.2011.11.004. Epub 2011 Dec 3.
Functional bias of positively selected genes in Streptococcus genomes.
Suzuki H1, Stanhope MJ.

https://www.ncbi.nlm.nih.gov/pubmed/18394970
Infect Genet Evol. 2008 May;8(3):331-9.
Positive selection in penicillin-binding proteins 1a, 2b, and 2x from Streptococcus pneumoniae and its correlation with amoxicillin resistance development.
Stanhope MJ1, Lefébure T, Walsh SL, Becker JA, Lang P, Pavinski Bitar PD, Miller LA, Italia MJ, Amrine-Madsen H.

----------


