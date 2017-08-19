----------

Haruo Suzuki (haruo[at]g-language[dot]org)  
Last Update: 2017-08-19

----------

# HyPhy Tutorial Project
Project started 2017-08-14.

I have created shell scripts for automating analyses in HyPhy tutorials.


![https://twitter.com/hyphy_software](https://pbs.twimg.com/media/C-7GKl4XYAAXeHu.jpg:small)

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

### current
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

### 2013-07-01
http://www.hyphy.org/w/index.php/HyPhy
HyPhy tutorial

[Using Single Breakpoint Recombination (SBP)](http://www.hyphy.org/w/index.php/HyPhy#Using_Single_Breakpoint_Recombination_.28SBP.29)

    bash run_hyphy_sbp.sh

----------

## Acknowledgements

I am grateful to Drs. Sergei Pond and Steven Weaver for their advice on HyPhy.

----------

## References

### HyPhy

http://www.hyphy.org
HyPhy - Hypothesis Testing using Phylogenies

### Unclassified

https://www.ncbi.nlm.nih.gov/pubmed/22155358
Infect Genet Evol. 2012 Mar;12(2):274-7. doi: 10.1016/j.meegid.2011.11.004. Epub 2011 Dec 3.
Functional bias of positively selected genes in Streptococcus genomes.
Suzuki H1, Stanhope MJ.

https://www.ncbi.nlm.nih.gov/pubmed/18394970
Infect Genet Evol. 2008 May;8(3):331-9.
Positive selection in penicillin-binding proteins 1a, 2b, and 2x from Streptococcus pneumoniae and its correlation with amoxicillin resistance development.
Stanhope MJ1, Lefébure T, Walsh SL, Becker JA, Lang P, Pavinski Bitar PD, Miller LA, Italia MJ, Amrine-Madsen H.

----------

http://d.hatena.ne.jp/haruosuz/20071101
HyPhy - Haruo Suzuki / Bioinformatics

