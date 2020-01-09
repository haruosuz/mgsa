# mgsa.k-mer
K-mer頻度、オリゴヌクレオチド（連続塩基）組成

https://en.wikipedia.org/wiki/K-mer

## Table of Contents
- [featuring](#featuring)
- [updates](#updates)
[2019](#2019)
- [oligonucleotide](#oligonucleotide)
- [people](#people)
  - [kazumachack](#kazumachack)

----------
## featuring

2018/09/17
https://bioinfologics.github.io/post/2018/09/17/k-mer-counting-part-i-introduction/
k-mer counting, part I: Introduction | BioInfoLogics




https://bioinformatics.uconn.edu/genome-size-estimation-tutorial
Genome Size Estimation Tutorial
How can K-mer estimation help to find genome sizes?

----------
## updates

### 2020

03 January 2020
https://academic.oup.com/bioinformatics/advance-article/doi/10.1093/bioinformatics/btz964/5695704
PaSiT: A novel approach based on short oligo-nucleotide frequencies for efficient bacterial identification and typing | Bioinformatics | Oxford Academic

Wed 01 January 2020
http://ivory.idyll.org/blog/2020-sourmash-gtdb-oddities.html
Finding problematic bacterial/archaeal genomes using k-mers and taxonomy

### 2019

https://twitter.com/merenbey/status/1001592427369648128
A. Murat Eren (Meren) on Twitter: "K-mers aren't reads, reads aren't genes, genes aren't genomes, & genomes you get from metagenomes are often nothing but consensus sequences of large population of cells heterogeneity of which is defined by the heuristics of your assembler of which you likely know next to nothing.… https://t.co/gCVybgHCQH"
6:33 PM - 29 May 2018

https://www.biorxiv.org/content/early/2018/04/19/304972
RefSeq database growth influences the accuracy of k-mer-based species identification | bioRxiv

https://www.ncbi.nlm.nih.gov/pubmed/30373669
Genome Biol. 2018 Oct 30;19(1):165. doi: 10.1186/s13059-018-1554-6.
RefSeq database growth influences the accuracy of k-mer-based lowest common ancestor species identification.
Nasko DJ1, Koren S2, Phillippy AM2, Treangen TJ3.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6206640/

https://twitter.com/aphillippy/status/987312716451807233
Adam Phillippy on Twitter: ""RefSeq database growth influences the accuracy of k-mer-based species identification" https://t.co/XSc6pYq6Wh A shame that @traingene didn't go with my suggested title "No, that's not actually anthrax on the subway, international space station, etc."… https://t.co/i6BH4NEswI"
8:51 AM - 20 Apr 2018

https://twitter.com/BioMickWatson/status/987217580648693760
Mick Watson on Twitter: "Never go to species, not with kmers, not with 16S. Neither are accurate enough (sorry!)… "
2:33 AM - 20 Apr 2018




https://www.ncbi.nlm.nih.gov/pubmed/29036588
Bioinformatics. 2017 Jul 7. doi: 10.1093/bioinformatics/btx432. [Epub ahead of print]
A novel data structure to support ultra-fast taxonomic classification of metagenomic sequences with k-mer signatures.

http://biorxiv.org/content/early/2016/10/19/081885
Contamination as a major factor in poor Illumina assembly of microbial isolate genomes | bioRxiv 
- We found that subsampling or filtering out reads having rare k-mers could efficiently remove low-level contaminants and greatly improve the de novo assemblies. 
- Read subsampling or removing low-abundant k-mers improved de novo assemblies

2016.07.12版
https://biosciencedbc.jp/gadget/human/20160720_1_kadota.pdf
第1部:統計解析 ~ゲノム解析、塩基配列解析~

2016.02.01版
http://www.iu.a.u-tokyo.ac.jp/~kadota/20140625_kadota.pdf
農学生命情報科学 特論I 第3回

2015-01-01
https://qiita.com/antiplastics/items/c1532474e943ac2d1b0a
k-mer countingに関するメモ - Qiita

Jul 7th, 2013
http://yagays.github.io/blog/2013/07/07/genome-assembly-kmergenie/
ゲノムアセンブリにおいて最適なk-merを推定するKmerGenieを試してみた - Wolfeyes Bioinformatics beta

http://www.ige.tohoku.ac.jp/joho/gf/ShortReadManager.php
GenoFinisher homepage
ShortReadMangerの機能
<機能5>k-merの出現頻度に基づいたイルミナデータのフィルタリング機能
<機能6>missing k-mer探索機能

https://sites.google.com/site/kfuku52/misc/genomesize
ゲノムサイズの推定法 - Kenji Fukushima's website
4. k-mer distribution

http://kplogo.wi.mit.edu/manual.html
kpLogo: k-mer probability logo



### 2018


https://twitter.com/kazumachack/status/1074793968712376320
上坂一馬 on Twitter: "SPAdesを使って、大きなk-merを使った時にアセンブリがどう変化するのか簡単にまとめました。GAGE-Bのコレラ菌のデータセットを使っています。 SPAdesとUnicyclerでlarge k-merを使う part2 (… https://t.co/DKQnSyZlgx"
5:30 PM - 17 Dec 2018
http://kazumaxneo.hatenablog.com/entry/2018/12/11/164359
SPAdesとUnicyclerでlarge k-merを使えるようにビルドし直す part1 - macでインフォマティクス


2018 年 11 月 2日　改訂
http://www.fish-evol.org/trinity_inoue.html
Trinity - 井上 潤
このページはまだ未完成です．
Trinity はトランスクリプトーム解析専用の k-mer アセンブラです．


### 2010

https://www.ncbi.nlm.nih.gov/pubmed/19233962
Mol Biol Evol. 2009 May;26(5):1163-9. doi: 10.1093/molbev/msp032. Epub 2009 Feb 20.
Phylogenetic signals in DNA composition: limitations and prospects.
Mrázek J1.
https://academic.oup.com/mbe/article/26/5/1163/1040645


----------
## oligonucleotide
オリゴヌクレオチド

### Coutinho_2015

相同性に依存しない手法
https://www.ncbi.nlm.nih.gov/pubmed/26029354
Comput Struct Biotechnol J. 2015 May 4;13:352-7. doi: 10.1016/j.csbj.2015.04.005. eCollection 2015.
Homology-independent metrics for comparative genomics.
Coutinho TJ1, Franco GR1, Lobo FP2.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4446528/
- 1. Introduction
homology-independent (HI) metrics
- 3.1.2. Dinucleotide Odds Ratio
- 3.1.3. Relative Synonymous Codon Usage (RSCU)

The work of Lobo et al. 2009 used HI metrics (DOR and RSCU) to detect coevolutionary trends in a virus-host biological system [52].

[52]
https://www.ncbi.nlm.nih.gov/pubmed/19617912
PLoS One. 2009 Jul 20;4(7):e6282. doi: 10.1371/journal.pone.0006282.
Virus-host coevolution: common patterns of nucleotide motif usage in Flaviviridae and their hosts.
Lobo FP1, Mota BE, Pena SD, Azevedo V, Macedo AM, Tauch A, Machado CR, Franco GR.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2707012/

### Dutta_2012

微生物のライフスタイルとゲノムの特徴
https://www.ncbi.nlm.nih.gov/pubmed/23024607
Curr Genomics. 2012 Apr;13(2):153-62.
Microbial lifestyle and genome signatures.
Dutta C1, Paul S.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3308326/

b) Oligonucleotide Composition

Free-living bacteria, in general, display stronger bias in oligonucleotide usage than host-associated bacteria, as observed in a hierarchical clustering based on hexanucleotide–based genome signatures of 867 prokaryotic genomes [31]. 

[31]
https://www.ncbi.nlm.nih.gov/pubmed/18421372
PLoS Comput Biol. 2008 Apr 18;4(4):e1000057. doi: 10.1371/journal.pcbi.1000057.
Investigations of oligonucleotide usage variance within and between prokaryotes.
Bohlin J1, Skjerve E, Ussery DW.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2289840/

Recently, comparative analysis of tetranucleotide composition in a set of 774 sequenced microbial genomes revealed convergence of compositional patterns among genomes with similar habitats [34], displaying distinct clusters of obligate intracellular organisms (both pathogen and endosymbiont) and grouping of the halophilic bacterium Salinibacter rubber, not with its fellow Bacteroidetes, but with halophilic and methanogenic Archaea [34].

[34]
https://www.ncbi.nlm.nih.gov/pubmed/20333228
Genome Biol Evol. 2010 Jan 25;2:117-31. doi: 10.1093/gbe/evq004.
Distinguishing microbial genome fragments based on their composition: evolutionary and comparative genomic perspectives.
Perry SC1, Beiko RG.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2839357/


----------



## people


2015年01月01日に更新
https://qiita.com/antiplastics/items/c1532474e943ac2d1b0a
k-mer countingに関するメモ - Qiita

### kazumachack

https://twitter.com/kazumachack
上坂一馬 (@kazumachack) | Twitter

http://kazumaxneo.hatenablog.com/archive/category/k-mer
k-mer カテゴリーの記事一覧 - macでインフォマティクス

http://kazumaxneo.hatenablog.com/entry/2019/01/07/073000
k-merベースのスケーラブルなメタゲノムの全配列比較ツール Libra - macでインフォマティクス

http://kazumaxneo.hatenablog.com/entry/2018/11/19/073000
Minhashを使い、genomic DNA / proteinを高速比較する sourmash - macでインフォマティクス


http://kazumaxneo.hatenablog.com/entry/2018/07/02/224502
抗生物質耐性遺伝子を検出する KmerResistance - macでインフォマティクス

http://kazumaxneo.hatenablog.com/entry/2018/02/24/161757
kallistoを動かしメタゲノムからウィルスゲノムを高速に検出・定量する FastViromeExplorer - macでインフォマティクス

http://kazumaxneo.hatenablog.com/entry/2017/06/27/180033
k-mer カウントして、配列も出力するツール　jellyfish、BFCounter - macでインフォマティクス

http://kazumaxneo.hatenablog.com/entry/2018/04/28/230622
シーケンスデータからk-merスペクトラム分析を行う GenomeScope - macでインフォマティクス

https://cell-innovation.nig.ac.jp/maser/RelatedList/P000001428.html
Jellyfish (PE)
このパイプラインは、アセンブルを行う前に、k-mer分布を調べたい場合に使用します。k-mer分布を調べることで、これからアセンブルしようとするゲノムの複雑さや、リードのクオリティチェック、コンタミの有無などを推定することができます。


----------
### kmcEx
https://github.com/lzhLab/kmcEx

https://www.ncbi.nlm.nih.gov/pubmed/31038666
Bioinformatics. 2019 Apr 30. pii: btz299. doi: 10.1093/bioinformatics/btz299. [Epub ahead of print]
kmcEx: memory-frugal and retrieval-efficient encoding of counted k-mers.
Jiang P1, Luo J1, Wang Y1, Deng P1, Schmidt B2, Tang X1, Chen N3, Wong L4, Zhao L1,3.

http://kazumaxneo.hatenablog.com/entry/2019/05/03/073000
効率的なk-merカウンタ kmcEx - macでインフォマティクス


### Kmer-db
http://sun.aei.polsl.pl/REFRESH/kmer-db

https://www.ncbi.nlm.nih.gov/pubmed/29986074
Bioinformatics. 2019 Jan 1;35(1):133-136. doi: 10.1093/bioinformatics/bty610.
Kmer-db: instant evolutionary distance estimation.
Deorowicz S1, Gudys A1, Dlugosz M1, Kokot M1, Danek A1.
https://academic.oup.com/bioinformatics/article-abstract/35/1/133/5050791
, 26 times faster than Mash, its main competitor.

http://kazumaxneo.hatenablog.com/entry/2018/07/13/143634
k-merを使い 進化距離や相同性を高速計算する Kmer-db - macでインフォマティクス

### KrakenUniq
https://github.com/fbreitwieser/krakenuniq

https://www.ncbi.nlm.nih.gov/pubmed/30445993
Genome Biol. 2018 Nov 16;19(1):198. doi: 10.1186/s13059-018-1568-0.
KrakenUniq: confident and fast metagenomics classification using unique k-mer counts.
Breitwieser FP1, Baker DN2,3, Salzberg SL4,5,6.

http://kazumaxneo.hatenablog.com/entry/2019/01/16/073000
KrakenUniq - macでインフォマティクス

### Squeakr
https://github.com/splatlab/squeakr

https://www.ncbi.nlm.nih.gov/pubmed/29444235
Bioinformatics. 2018 Feb 15;34(4):568-575. doi: 10.1093/bioinformatics/btx636.
Squeakr: an exact and approximate k-mer counting system.
Pandey P1, Bender MA1, Johnson R1,2, Patro R1, Berger B.

http://kazumaxneo.hatenablog.com/entry/2019/05/27/140552
k-merカウントツール Squeakr - macでインフォマティクス

https://twitter.com/md5sam/status/917810960932507650
Samarth Rangavittal on Twitter: "Intro section of recent Squeakr paper has a very instructive overview of developments in k-mer counting. Recommend! https://t.co/qkiR08pDLk"
2:55 AM · Oct 11, 2017


### KAT
https://github.com/TGAC/KAT
KAT is a suite of tools that analyse jellyfish hashes or sequence files (fasta or fastq) using kmer counts. The following tools are currently available in KAT:

https://www.ncbi.nlm.nih.gov/pubmed/27797770
Bioinformatics. 2017 Feb 15;33(4):574-576. doi: 10.1093/bioinformatics/btw663.
KAT: a K-mer analysis toolkit to quality control NGS datasets and genome assemblies.
Mapleson D1, Garcia Accinelli G1, Kettleborough G1, Wright J1, Clavijo BJ1.

http://kazumaxneo.hatenablog.com/entry/2018/05/01/134010
K-mer分析ツール KAT - macでインフォマティクス
The K-mer Analysis Toolkit (KAT) contains a number of tools that analyse jellyfish K-mer hashes. 


### Kmer-SSR
https://github.com/ridgelab/Kmer-SSR

https://www.ncbi.nlm.nih.gov/pubmed/28968741
Bioinformatics. 2017 Dec 15;33(24):3922-3928. doi: 10.1093/bioinformatics/btx538.
Kmer-SSR: a fast and exhaustive SSR search algorithm.
Pickett BD1, Miller JB1, Ridge PG1.

http://kazumaxneo.hatenablog.com/entry/2018/04/01/020550
k-merを使いSimple sequence repeats (SSRs) を検索する Kmer-SSR - macでインフォマティクス


----------





