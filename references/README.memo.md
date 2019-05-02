Haruo Suzuki (haruo[at]g-language[dot]org)  
Last Update: 2019-04

----------

# mgsa_memo

## Table of Contents
- [featuring](#featuring)
- [updates](#updates)
- [database](#database)
- [distribution](#distribution) 遺伝子の系統分布
- [fastGEAR](#fastgear)
- [BAPS](#baps)
- [harvest](#harvest)
- [reordering-contigs](#reordering-contigs)
- [tools](#tools)
  - [eggnog](#eggnog)
  - [BUSCO](#busco)
  - [Tax4Fun](#tax4fun)
  - [diamond](#diamond)
- [GSEA](#gsea)
- [qc](#qc)
- [assembly](#assembly)
  - [unicycler](#unicycler)
  - [de Bruijn Graph](#de-bruijn-graph)
- [reordering contigs](#reordering-contigs)
- [annotation](#annotation)
  - [dfast](#dfast)
  - [prokka](#prokka)
- [k-mer](#k-mer)
- [metagenomics](#metagenomics)
- [growth rate](#growth-rate) 増殖速度
- [resistance](#resistance) 耐性
- [USEARCH](#usearch)
- [people](#people)
  - [Holt Lab](#holt-Lab)
  - [kadota](#kadota) 門田　幸二のホームページ
  - [kazumaxneo](#kazumaxneo) macでインフォマティクス
- [unclassified](#unclassified)
- [2019-05-02](#2019-05-02)
  - [diversity index](#diversity-index)
  - [unifrac](#unifrac)
- [LEfSe](#lefse)
- [Mash](#mash)

----------
## featuring

http://www.microbesonline.org/
phylogenetic profile

https://github.com/kblin/ncbi-genome-download
kblin/ncbi-genome-download: Scripts to download genomes from the NCBI FTP servers


https://twitter.com/sjackman/status/1045005404227362817
Shaun Jackman on Twitter: "I have a 16 kbp query sequence, and I'd like to search all of SRA (including metagenomes) to see if any SRA read sets match this query sequence. Does this tool exist?"
1:41 PM - 26 Sep 2018

https://twitter.com/torstenseemann/status/1013354894730772480
Torsten Seemann on Twitter: "Need a closed bacterial reference genome that's close to your sample but can't find it on @ncbi or @enasequence ? Try looking at the @NCTC_3000 collection, as not all of the asemblies have made it into the public databases yet ! https://t.co/lIolFpNJ0z"
5:33 AM - 1 Jul 2018

https://twitter.com/i/moments/1000738412117147648
All metagenomes searched at once?

https://twitter.com/merenbey/status/1001592427369648128
A. Murat Eren (Meren) on Twitter: "K-mers aren't reads, reads aren't genes, genes aren't genomes, & genomes you get from metagenomes are often nothing but consensus sequences of large population of cells heterogeneity of which is defined by the heuristics of your assembler of which you likely know next to nothing.… https://t.co/gCVybgHCQH"
6:33 PM - 29 May 2018


https://twitter.com/tylerbarnumphd/status/1010247842772815872
Tyler Barnum on Twitter: "I wrote a tutorial on how to find new proteins in the ~8,000 Uncultivated Bacteria and Archaea (UBA) genomes from @donovan_parks. It's the largest collection of genomes that you can't search for on BLAST or IMG. ~1,500 metagenomes. https://t.co/PgavpbmsQg Feedback welcome!"
3:47 PM - 22 Jun 2018

https://tylerbarnum.wordpress.com/2018/06/22/searching-uncultivated-bacteria-and-archaea-uba-genomes-for-important-genes/
Searching Uncultivated Bacteria and Archaea (UBA) Genomes for Important Genes – The Biolo-Gist
June 22, 2018

----------
## updates

### 2019-04-25

https://www.ncbi.nlm.nih.gov/pubmed/31020563
Methods Mol Biol. 2019;1962:215-226. doi: 10.1007/978-1-4939-9173-0_13.
Generating Publication-Ready Prokaryotic Genome Annotations with DFAST.
Tanizawa Y1, Fujisawa T2, Arita M2,3, Nakamura Y2.

https://www.ncbi.nlm.nih.gov/pubmed/31022176
PLoS Comput Biol. 2019 Apr 25;15(4):e1006946. doi: 10.1371/journal.pcbi.1006946. [Epub ahead of print]
TASmania: A bacterial Toxin-Antitoxin Systems database.
Akarsu H1, Bordes P2, Mansour M2, Bigot DJ2, Genevaux P2, Falquet L1.

### 2019-04-12

https://twitter.com/strnr/status/1116714372091580423
Stephen Turner on Twitter: "DeeplyEssential: A Deep Neural Network for Predicting Essential Genes in Microbes https://t.co/3LbId2vvnb code https://t.co/YxJsNSqzAF Data from https://t.co/0tbwD4jvZL… https://t.co/Gri74Eq0Zf"
10:47 AM - 12 Apr 2019

https://www.biorxiv.org/content/10.1101/607085v1
DeeplyEssential: A Deep Neural Network for Predicting Essential Genes in Microbes | bioRxiv

### 2019

https://www.ncbi.nlm.nih.gov/pubmed/30957837
Bioinformatics. 2019 Apr 8. pii: btz220. doi: 10.1093/bioinformatics/btz220. [Epub ahead of print]
TORMES: an automated pipeline for whole bacterial genome analysis.
Quijada NM1,2, Rodríguez-Lázaro D2, Hernández M1,2.


https://www.nature.com/articles/s41467-019-08844-4
Microbial abundance, activity and population genomic profiling with mOTUs2 | Nature Communications

https://www.ncbi.nlm.nih.gov/pubmed/30729287
Appl Microbiol Biotechnol. 2019 Feb 7. doi: 10.1007/s00253-019-09648-8. [Epub ahead of print]
GeM-Pro: a tool for genome functional mining and microbial profiling.

https://github.com/CAMI-challenge/CAMITAX
CAMITAX: Taxon labels for microbial genomes
https://www.biorxiv.org/content/10.1101/532473v1
CAMITAX: Taxon labels for microbial genomes | bioRxiv

https://twitter.com/joshdneufeld/status/1092486258419326976
Josh Neufeld on Twitter: ""DNA sequences are just long series of letters. So why is it so hard to search through them?" @sarahzhang reports here https://t.co/QzSlfkbi6l, profiling BIGSI search https://t.co/IgKHcYpgGe, with comments from @jennifergardy. Primary literature here: https://t.co/vIHoE151eM"
1:13 PM - 4 Feb 2019
https://www.nature.com/articles/s41587-018-0010-1
Ultrafast search of all deposited bacterial and viral genomic data | Nature Biotechnology
Phelim Bradley, Henk C. den Bakker, Eduardo P. C. Rocha, Gil McVean & Zamin Iqbal 


https://twitter.com/jongsanders/status/1090341613954568192
Jon Sanders on Twitter: "Really stoked that the Calour paper is out! This is a really great tool for heatmap-driven exploration of microbiome data. It works *great* with ASVs from DADA2 or Deblur. https://t.co/JXsUtCd6KG I'm going to walk through just a bit of my own data from the paper! 1/"
3:11 PM - 29 Jan 2019
https://msystems.asm.org/content/4/1/e00269-18
Calour: an Interactive Microbe-Centric Analysis Tool 

http://kazumaxneo.hatenablog.com/entry/2019/01/23/073000
taxonomy ID、学名、系統情報など相互変換できるツール taxonkit - macでインフォマティクス
https://www.biorxiv.org/content/10.1101/513523v1
TaxonKit: a cross-platform and efficient NCBI taxonomy toolkit | bioRxiv


### 2018

https://twitter.com/kazumachack/status/1074793968712376320
上坂一馬 on Twitter: "SPAdesを使って、大きなk-merを使った時にアセンブリがどう変化するのか簡単にまとめました。GAGE-Bのコレラ菌のデータセットを使っています。 SPAdesとUnicyclerでlarge k-merを使う part2 (… https://t.co/DKQnSyZlgx"
5:30 PM - 17 Dec 2018

http://kazumaxneo.hatenablog.com/entry/2018/12/11/164359
SPAdesとUnicyclerでlarge k-merを使えるようにビルドし直す part1 - macでインフォマティクス

https://twitter.com/torstenseemann/status/1051354968517619712
Torsten Seemann on Twitter: ""A Unix one-liner to call bacterial variants" using @htslib - my first blog post in a long time! #bioinformatics https://t.co/GkLO4wspGd"
2:12 AM - 14 Oct 2018

https://thegenomefactory.blogspot.com/2018/10/a-unix-one-liner-to-call-bacterial.html
The Genome Factory: A Unix one-liner to call bacterial variants




https://www.ncbi.nlm.nih.gov/pubmed/30148503
Nat Biotechnol. 2018 Aug 27. doi: 10.1038/nbt.4229. [Epub ahead of print]
A standardized bacterial taxonomy based on genome phylogeny substantially revises the tree of life.
Parks DH1, Chuvochina M1, Waite DW1, Rinke C1, Skarshewski A1, Chaumeil PA1, Hugenholtz P1.

https://www.ncbi.nlm.nih.gov/pubmed/29915113
Appl Environ Microbiol. 2018 Aug 17;84(17). pii: e00993-18. doi: 10.1128/AEM.00993-18. Print 2018 Sep 1.
Comparative Genomics of the Genus Lactobacillus Reveals Robust Phylogroups That Provide the Basis for Reclassification.
Salvetti E1,2, Harris HMB1,2, Felis GE3, O'Toole PW2,4.

https://www.ncbi.nlm.nih.gov/pubmed/30006589
Nat Commun. 2018 Jul 13;9(1):2703. doi: 10.1038/s41467-018-05114-7.
Population genomics of hypervirulent Klebsiella pneumoniae clonal-group 23 reveals early emergence and rapid global dissemination.
Lam MMC1, Wyres KL1, Duchêne S1, Wick RR1, Judd LM1, Gan YH2, Hoh CH2, Archuleta S3, Molton JS3, Kalimuddin S4, Koh TH5, Passet V6, Brisse S6, Holt KE7,8.

https://www.ncbi.nlm.nih.gov/pubmed/29718191
FEMS Microbiol Ecol. 2018 Jul 1;94(7). doi: 10.1093/femsec/fiy079.
MetaCompare: a computational pipeline for prioritizing environmental resistome risk.
Oh M1, Pruden A2, Chen C3, Heath LS1, Xia K3, Zhang L1.

https://www.ncbi.nlm.nih.gov/pubmed/29309930
Clin Microbiol Infect. 2018 Apr;24(4):350-354. doi: 10.1016/j.cmi.2017.12.016. Epub 2018 Jan 5.
Whole genome sequencing options for bacterial strain typing and epidemiologic analysis based on single nucleotide polymorphism versus gene-by-gene-based approaches.
Schürch AC1, Arredondo-Alonso S1, Willems RJL1, Goering RV2.

https://www.ncbi.nlm.nih.gov/pubmed/29177474
Mol Biol Evol. 2018 Feb 1;35(2):486-503. doi: 10.1093/molbev/msx302.
Evaluating Fast Maximum Likelihood-Based Phylogenetic Programs Using Empirical Phylogenomic Data Sets.
Zhou X1,2, Shen XX3, Hittinger CT4, Rokas A3.

https://www.ncbi.nlm.nih.gov/pubmed/29309933
Clin Microbiol Infect. 2018 Apr;24(4):342-349. doi: 10.1016/j.cmi.2017.12.015. Epub 2018 Jan 5.
A primer on microbial bioinformatics for nonbioinformaticians.
Carriço JA1, Rossi M2, Moran-Gilad J3, Van Domselaar G4, Ramirez M5.

https://www.ncbi.nlm.nih.gov/pubmed/27471065
Microb Biotechnol. 2016 Sep;9(5):681-6. doi: 10.1111/1751-7915.12389. Epub 2016 Jul 29.
Microbial bioinformatics 2020.
Pallen MJ1.

https://www.ncbi.nlm.nih.gov/pubmed/24567124
Nutr Diabetes. 2014 Feb 24;4:e109. doi: 10.1038/nutd.2014.6.
Comparative genomics analysis of Lactobacillus species associated with weight gain or weight protection.
Drissi F1, Merhej V1, Angelakis E1, El Kaoutari A1, Carrière F2, Henrissat B3, Raoult D1.



https://www.ncbi.nlm.nih.gov/pubmed/29379090
Sci Rep. 2018 Jan 29;8(1):1794. doi: 10.1038/s41598-018-20211-9.
GO FEAT: a rapid web-based functional annotation tool for genomic and transcriptomic data.
Araujo FA1, Barh D2, Silva A1, Guimarães L1, Ramos RTJ3.
https://www.nature.com/articles/s41598-018-20211-9
The next step is to integrate the result from the alignment to UniProt, NCBI Protein, KEGG, InterPro, Pfam and Gene Ontology databases via UniProt public API and SEED database via SEED public API. 


https://www.ncbi.nlm.nih.gov/pubmed/28057682
Bioinformatics. 2017 Apr 15;33(8):1230-1232. doi: 10.1093/bioinformatics/btw824.
phyloSkeleton: taxon selection, data retrieval and marker identification for phylogenomics.
Guy L.
https://bitbucket.org/lionelguy/phyloskeleton/

### 2017


https://twitter.com/thePeerJ/status/932675684543139845
PeerJ - the journal on Twitter: "PBxplore: a tool to analyze local protein structure and deformability with Protein Blocks https://t.co/p86EiqUZst #bioinformatics https://t.co/fJ1DjbVwFL"
1:23 PM - 20 Nov 2017

![](https://pbs.twimg.com/media/DPGHl2cW0AYCa1a.jpg)

https://www.biorxiv.org/content/early/2017/11/08/215988
Panaconda: Application of pan-synteny graph models to genome content analysis 

February 12, 2017
http://genomeintelligence.org/?p=1157
BINF 6203: Genome Comparison with Mauve – Genome Intelligence


https://www.ncbi.nlm.nih.gov/pubmed/29114401
Microb Genom. 2017 Jul 8;3(9):e000122. doi: 10.1099/mgen.0.000122. eCollection 2017 Sep.
Aligner optimization increases accuracy and decreases compute times in multi-species sequence data.
Robinson KM1, Hawkins AS1, Santana-Cruz I1, Adkins RS1, Shetty AC1, Nagaraj S1, Sadzewicz L1, Tallon LJ1, Rasko DA1,2, Fraser CM1,3, Mahurkar A1, Silva JC1,2, Dunning Hotopp JC1,2.


https://twitter.com/marimiya_clc/status/822631074060767234
:marimiya on Twitter: "これすごいな。SRAから400,000の微生物ゲノムのデータの一部をとってきて、Minhashしてるのか。トリミングとかその辺も考慮してるんだな。 https://t.co/Os6di00uYK"
9:25 PM - 20 Jan 2017

http://ivory.idyll.org/blog/2017-sourmash-sra-microbial-wgs.html
Categorizing 400,000 microbial genome shotgun data sets from the SRA

### 2016

http://www.jsbi.org/iibmp2016/program_highlight/
森宙史ら
乳児期のビフィズス菌優占の腸内細菌群集を形成する鍵となる因子の解明
Nat Commun. 2016, 7:11939. doi: 10.1038/ncomms11939.
http://www.nature.com/articles/ncomms11939

----------

### cd-hit
http://weizhongli-lab.org/cd-hit/

http://crusade1096.web.fc2.com/cdhit.html
CD-HIT
Trinityでアセンブルすると，似たような配列があります。それをcd-hitで取り除きます。

http://www.fish-evol.org/trinity_inoue.html
Trinity - 井上 潤
2018 年 11 月 2日
2. CD-HIT

http://kazumaxneo.hatenablog.com/entry/2017/08/03/191326
シーケンスをクラスタリングする cd-hit - macでインフォマティクス

http://sy41211.hatenablog.com/entry/2015/12/12/162232
配列クラスタリングプログラムCD-HITの使い方 - バイオインフォマティクス初心者の日常

https://bi.biopapyrus.jp/seq/alignment/software/cd-hit.html
CD-HIT | 核酸およびアミノ酸配列のクラスタリング
cd-hit-v4.6.4-2015-0603

https://bio-info.biz/article/ato_cdhit_basic_usage.html
CD-HITの使用方法全般
cd-hit-v4.6.1-2012-08-27


2017/08/31
https://biosciencedbc.jp/gadget/human/170831_mori_170830.pdf
メタゲノム解析(2017NGSハンズオン講習会-2017年8月31日)
(メタ16S解析)
Sequence clustering with species level
by CD-HIT-EST or UCLUST, etc.



2011年02月15日
https://jglobal.jst.go.jp/detail?JGLOBAL_ID=201102207170983177&rel=0
最長共通部分列に基づくDNA配列の高速クラスタリング
https://ipsj.ixsq.nii.ac.jp/ej/?action=repository_action_common_download&item_id=71512&item_no=1&attribute_id=1&file_no=1
広く利用されている既存の配列クラスタリングツールとして，Li らによる CD-HIT1)–3) がある.CD-HIT は近似的なクラスタリング手法を用いることによって比較的大量の配列 を高速に処理することができ，メタゲノムデータのアノテーションパイプライン中で用いら れたり4)，Uniprot や PDB といった公共データベースにおいて冗長な類似配列を列挙して 取り除くためにも使われている.しかし，1000 万本の配列のクラスタリングは数日かかる という具合に，次世代シーケンサーから得られた配列ほどの規模のデータをクラスタリング する場合，現実的な時間で処理するのは困難になってくるという問題がある.
本研究では次世代シーケンサーから得られた DNA 配列をターゲットとし，最長共通部分 列 (Longest Common Subsequence, LCS) の性質を用いて類似配列ペアの高速フィルタリ ング手法「LCS filtering」を開発した.CD-HIT のクラスタリングアルゴリズムの一部 を改変しつつ LCS filtering を導入することで，精度を維持しながら DNA 配列クラスタリ ング処理の大幅な高速化を実現した.

2011
https://ipsj.ixsq.nii.ac.jp/ej/index.php?active_action=repository_view_main_item_detail&page_id=13&block_id=8&item_id=107771&item_no=1
次世代シーケンサーから得られたDNA配列の高速クラスタリングに関する研究

広く利用されている既存の配列クラスタリングツール のひとつに CD-HIT [2] がある.CD-HIT は近似的なクラ スタリング手法を用いることによって比較的大量の配列 を高速に処理することができ，メタゲノムデータのアノ テーションパイプライン中で用いられたり，Uniprot や PDB といった公共データベースにおいて冗長配列を取り 除いてデータベースサイズを圧縮するのにも使われてい る.しかし，1000 万本の配列のクラスタリング処理には 数日かかるという具合に，次世代シーケンサーの出力配 列ほどの規模のデータをクラスタリングする場合，現実 的な時間で処理するのは困難になってくるという問題が ある.

----------

https://twitter.com/ErichMSchwarz/status/492444458613747712
Erich M. Schwarz on Twitter: "kClust -- proteome clustering to ~25% identity, faster and/or more reliable than CD-HIT or UCLUST: http://t.co/VaH6bSKBZC"
7:01 PM - 24 Jul 2014

----------

### usearch

http://www.drive5.com/usearch/

http://drive5.com/usearch/manual/uclust_algo.html
Recommended identity ranges
UCLUST is effective at identities of ~50% and above for proteins and ~75% and above for nucleotides. At lower identities, this type of method is questionable because (i) alignment quality degrades and (ii) homology cannot be reliably determined from an alignment.

http://crusade1096.web.fc2.com/usearch.html
usearchを用いてもQiimeっぽい解析をすることは可能です。

https://sites.google.com/site/noteofpaediatricsurgery/in-silico/meta16s/uclust
UCLUST - Draft of Pediatric Surgery
* 類似する配列をまとめてクラスタリングするアルゴリズム
* Centroid sequenceを中心
* 設定された閾値を半径として描かれる円の中に納まる配列を1つのグループとしてクラスタリングする

https://lab0animalhh3.wiki.fc2.com/wiki/ドライ・バイオロジーのページ
最終更新:2018-12-06 17:27:59

https://www.pediatricsurgery.site/entry/2017/11/19/200241
mothur開発者によるmothurとQIIMEの比較 - Note of Pediatric Surgery
USEARCHから無料のVSEARCHに置き換えることに取り組んでいるらしい
6. 再現性

2017-03-26
https://ci.nii.ac.jp/naid/500001054480/
CiNii 博士論文 - 環境中の微生物叢解析のための超高速な配列解析ツールの開発
http://t2r2.star.titech.ac.jp/rrws/file/CTT100736121/ATD100000413/
UCLUSTはデフォルトでは
配列長でソートした順に配列をクラスタリングするが、より新しいバージョンの UCLUSTでは
同じ配列がsizeアノテーション付きでまとめてある場合に配列の数が多い順でクラスタリング
することもできる (http://drive5.com/usearch/manual/abundance_sort.html
)。しかしUCLUSTで
は 、 size ア ノ テ ー シ ョ ン を つ け る た め に 別 途 dereplication を 行 う 必 要 性 が あ る (http://www.drive5.com/usearch/manual/cluster_sizes.html,
http://www.drive5.com/usearch/manual/cmd_fastx_uniques.html)。

https://biosciencedbc.jp/gadget/human/170831_mori_170830.pdf
メタゲノム解析(2017NGSハンズオン講習会-2017年8月31日)
森 宙史
Sequence clustering with species level
by CD-HIT-EST or UCLUST, etc.

https://rpubs.com/nishikosh/203465
https://rstudio-pubs-static.s3.amazonaws.com/203465_a3afff5a73b94f66bb0fd7112a6cbb67.html
USEARCHを用いたメタ16S解析パイプライン
S.Konishi
2016年10月4日

https://twitter.com/pathogenomenick/status/766251676319752192
Nick Loman on Twitter: "De novo clustering of long, noisy amplicon reads? Any experience? UCLUST or CD-HIT likely to work? #porecamp"
8:33 AM - 18 Aug 2016



https://yokazaki.hatenablog.com/entry/2015/07/28/212629
USEARCHを使った16S rRNAアンプリコンシーケンス析② - yokaのblog
http://yokazaki.hatenablog.com/entry/2015/07/25/202628
USEARCHを使った16S rRNAアンプリコンシーケンス分析 - yokaのblog

2015
https://www.jstage.jst.go.jp/article/jim/29/3/29_135/_article/-char/ja/
進化する次世代シーケンサーによる腸内細菌叢の解析
https://www.jstage.jst.go.jp/article/jim/29/3/29_135/_pdf
QIIME（Quantitative Insights into Microbial
Ecology, http://qiime.org/）（5）の assign_taxonomy.py
のプログラムの uclust のアルゴリズムを用いた．

https://twitter.com/tyu_shi/status/28695306021
Tyu_Shi on Twitter: "これがUSEARCH。こいつをクラスタの代表配列群相手に実行しているのがUCLUST。やたらと速いのは最初にwordの出現頻度計算してメモリにのせておいて、各配列ごとに上位8配列ぐらいとしかアライメント形成していないから。wordの共有数と相同性に相関があることが根拠らしい。"
10:21 AM - 25 Oct 2010

----------


----------

## tools

http://fox-bioinformatics.net/2019/01/05/qiime2-how-to-install/
QIIME2インストールの方法解説 | Rとバイオインフォマティクス

----------
### phage


https://academic.oup.com/bioinformatics/advance-article/doi/10.1093/bioinformatics/btz265/5480131
PHANOTATE: A novel approach to gene identification in phage genomes 

https://twitter.com/XabiVC/status/1123503405626826752
Xabier Vázquez-Campos on Twitter: "Any recommendations for detecting #prophages in #bacteria #genomes? Specially from rather fragmented genomes and/or MAGs I've tried PHASTER and Phigaro so far. Any suggestions welcomed. Thanks!"
4:24 AM - 1 May 2019

https://github.com/simroux/VirSorter
https://www.ncbi.nlm.nih.gov/pubmed/26038737
PeerJ. 2015 May 28;3:e985. doi: 10.7717/peerj.985. eCollection 2015.
VirSorter: mining viral signal from microbial genomic data.
Roux S1, Enault F2, Hurwitz BL3, Sullivan MB1.

http://aclame.ulb.ac.be/Tools/Prophinder/
ACLAME: Prophinder

----------

### cognizer

https://omictools.com/cognizer-tool
This tool is not available anymore.

https://www.ncbi.nlm.nih.gov/pubmed/26561344
PLoS One. 2015 Nov 11;10(11):e0142102. doi: 10.1371/journal.pone.0142102. eCollection 2015.
COGNIZER: A Framework for Functional Annotation of Metagenomic Datasets.
Bose T1, Haque MM1, Reddy C1, Mande SS1.
The COGNIZER framework includes a cross-mapping database that enables end-users to simultaneously derive/infer KEGG, Pfam, GO, and SEED subsystem information from the COG annotations.




----------

### annotree

https://academic.oup.com/nar/advance-article/doi/10.1093/nar/gkz246/5432638
AnnoTree: visualization and exploration of a functionally annotated microbial tree of life | Nucleic Acids Research | Oxford Academic

https://twitter.com/strnr/status/1117782170645483520
AnnoTree: visualization and exploration of a functionally annotated microbial tree of life
Paper https://academic.oup.com/nar/advance-article/doi/10.1093/nar/gkz246/5432638 …
App http://annotree.uwaterloo.ca/ 
Code https://bitbucket.org/account/user/doxeylabcrew/projects/AN …
Docs https://annotree-docs.readthedocs.io/en/latest/ 
Data http://gtdb.ecogenomic.org/downloads 
9:30 AM - 15 Apr 2019
![](https://pbs.twimg.com/media/D4Mo9PSXoAEYnZ1.jpg)

----------
## distribution
遺伝子の系統分布

酸素
https://www.frontiersin.org/articles/10.3389/fmicb.2019.00499/full
Frontiers | Oxygen Reductases in Alphaproteobacterial Genomes: Physiological Evolution From Low to High Oxygen Environments | Microbiology

Based on their phylogenetic distribution, CtaG_Cox11 proteins, which so far only have been found in proteobacteria and mitochondria, appear to have originated within the proteobacteria (Banci et al., 2004, 2007). The distribution of different Cu assembly proteins among selected organisms is shown in Figure 6. 


https://twitter.com/search?q=%22phylogenetic%20distribution%22

https://twitter.com/LAHug_/status/1059900649351987200
Laura Hug on Twitter: "Want an addictive, informative, gene distribution experience? Check out AnnoTree, our new tool. Here's the distribution of reductive dehalogenases (my favorite) on the bacterial tree of life. https://t.co/ziywZa8UvC https://t.co/Z6vVQ6VtyN @ACDoxey… https://t.co/3nayeeYGVx"
3:09 PM - 6 Nov 2018
![](https://pbs.twimg.com/media/DrWF2tgUUAEejFi.jpg)

プロテオロドプシン
http://iwasakilab.bs.s.u-tokyo.ac.jp/iwasaki/publications.html
Solar-panel and parasol strategies shape the proteorhodopsin distribution pattern in marine Flavobacteriia.
The ISME Journal, 12, 1329-1343. (2018)

 2006年2月16日
https://www.natureasia.com/ja-jp/nature/439/7078/nature04435
海洋性の浮遊細菌と古細菌の間でのプロテオロドプシン遺伝子の水平伝播 | Nature | Nature Research
プロテオロドプシンの全世界的な系統的分布

原核生物におけるヒ素耐性遺伝子の分布
https://www.ncbi.nlm.nih.gov/pubmed/30405552
Front Microbiol. 2018 Oct 23;9:2473. doi: 10.3389/fmicb.2018.02473. eCollection 2018.
Distribution of Arsenic Resistance Genes in Prokaryotes.
Ben Fekih I1, Zhang C1, Li YP1, Zhao Y2, Alwathnani HA3, Saquib Q4, Rensing C1,5, Cervantes C6.
Numerous ars operons, with a variety of genes and different combinations of them, populate the prokaryotic genomes, including their accessory plasmids, transposons, and genomic islands. 
This review summarizes the presence, distribution, organization, and redundance of arsenic resistance genes in prokaryotes.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6205960/
Additional Arsenic Resistance Genes
However, the arsenite transport pathway was unknown until an aquaglyceroporin, the glycerol facilitator GlpF, was discovered in E. coli as an “accidental” arsenite uptake transporter (Sanders et al., 1997; Rosen, 2002; Meng et al., 2004). 

FIGURE 1
Distribution of ars genes in arsenic-resistant prokaryotes. 
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6205960/figure/F1/
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6205960/bin/fmicb-09-02473-g001.jpg

http://www.chem.utsunomiya-u.ac.jp/lab/bio/research_qs1.html
研究テーマ（Quorum Sensing その1） -生物工学研究室-

Quorum Sensingに関連する遺伝子 LuxI and LuxR 
https://www.ncbi.nlm.nih.gov/pubmed/28765541
Sci Rep. 2017 Aug 1;7(1):6969. doi: 10.1038/s41598-017-07241-5.
In silico analyses of conservational, functional and phylogenetic distribution of the LuxI and LuxR homologs in Gram-positive bacteria.
Rajput A1, Kumar M2.
```
Moreover, Phylogenetic analyses (LuxI, LuxR, LuxI + LuxR and 16s rRNA) revealed horizontal gene transfer events with significant statistical support among Gram-positive and Gram-negative bacteria.
```

外来遺伝子サイレンサー
https://www.ncbi.nlm.nih.gov/pubmed/26247404
Comput Biol Chem. 2015 Oct;58:167-72. doi: 10.1016/j.compbiolchem.2015.06.007. Epub 2015 Jul 23.
Distribution of putative xenogeneic silencers in prokaryote genomes.
Perez-Rueda E1, Ibarra JA2.
xenogeneic silencers (XS) and belong to either the H-NS, Lsr2, MvaT or Rok families.

セルラーゼ
https://www.ncbi.nlm.nih.gov/pubmed/23263967
Appl Environ Microbiol. 2013 Mar;79(5):1545-54. doi: 10.1128/AEM.03305-12. Epub 2012 Dec 21.
Phylogenetic distribution of potential cellulases in bacteria.
Berlemont R1, Martiny AC.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3591946/

Strain-specific glycoside hydrolase distribution in bacteria.

![https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3591946/figure/F3/](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3591946/bin/zam9991041460003.jpg)

----------
## database

### LEA

https://twitter.com/level3defless/status/1008994650957332481
Koichi Higashi on Twitter: "論文（やっと）出ました。約3万サンプルの微生物群集構造に関する公共データ（メタ16S、メタゲノム）を対象に自然言語情報と系統の対応関係を調べて、その結果を遊べるようにしたツールです。 #PLOSCompBio: Latent environment allocation of microbial community data https://t.co/YHJSNJVLfx"
4:47 AM - 19 Jun 2018

https://twitter.com/NIG_idenken/status/1008941881051398144
国立遺伝学研究所 on Twitter: "遺伝研の研究成果について、新しい記事を公開しました。 ゲノム進化研究室・黒川研究室 「環境と微生物をビッグデータでつなぐ ～「環境」から微生物を検索し、微生物から「環境」を予測するウェブツール「LEA」を開発～」… "
1:17 AM - 19 Jun 2018

https://www.nig.ac.jp/nig/ja/2018/06/research-highlights_ja/20180619.html
環境と微生物をビッグデータでつなぐ ～「環境」から微生物を検索し、微生物から「環境」を予測するウェブツール「LEA」を開発～

### MetaMetaDB
http://mmdb.aori.u-tokyo.ac.jp
MetaMetaDB: To the Habitabilities of Microbes

https://www.ncbi.nlm.nih.gov/pubmed/24475242
PLoS One. 2014 Jan 27;9(1):e87126. doi: 10.1371/journal.pone.0087126. eCollection 2014.
MetaMetaDB: a database and analytic system for investigating microbial habitability.
Yang CC1, Iwasaki W1.

27 Jan 2014
https://twitter.com/iwasakiw/status/427965935094222849
Wataru IWASAKI on Twitter: "MetaMetaDBは、様々な環境のメタゲノム（"メタ・メタゲノム"）をまとめ、微生物がどのような環境に生息できるかの指標（"Microbial Habitability"）を簡便に得られるようにしたデータベースです。URLは http://t.co/zfQ8d84v6k"

https://www.jst.go.jp/kisoken/crest/research/nenpou/h25/JST_1111065_11103779_2013_YR.pdf
遺伝子解析基盤技術グループは、これまでに世界中の様々な環境か ら得られたメタゲノムデータを収集した網羅的メタゲノムデータベース(MetaMetaDB) を開発し、海洋環境中に新たなグループの微生物が見つかった場合にその由来となった環 境を遺伝子情報から迅速に解析し、遺伝子情報に基づいた生態系評価を行うための基盤を 作った。

### MicrobeDB
http://microbedb.jp/MDB/

http://wiki.lifesciencedb.jp/mw/SPARQLthon59/MicrobeDB.jp
MicrobeDB.jpポータル開発 - TogoWiki

### PATRIC
https://patricbrc.org

PATRICBRC on Twitter: "New study by Junqueira examined microbiomes of blowflies and houseflies using the PATRIC metadata on habitat and potential disease associati… https://t.co/hoJoiSB6sK"
https://www.nature.com/articles/s41598-017-16353-x
The cross-validated set of 33 species identified in blowfly and housefly microbiomes were categorized according to the habitat from which they have been isolated and assigned to the potential disease association record of the Pathosystems Resource Integration Center (PATRIC)35. 

https://patricbrc.org/view/Taxonomy/2#view_tab=genomes
Bacteria::Taxonomy Genomes

http://rd-alliance.github.io/metadata-directory/standards/genome-metadata.html
Genome Metadata

http://enews.patricbrc.org/faqs/2-genome-data-and-tools/genome-metadata-faqs/

### NCBI
https://www.ncbi.nlm.nih.gov/genome/167
Escherichia coli

	Escherichia coli str. K-12 substr. MG1655
	Submitter: Univ. Wisconsin
	Morphology: Gram:Negative, Shape:Bacilli, Motility:Yes
	Environment: OxygenReq:Facultative, OptimumTemperature:37, TemperatureRange:Mesophilic, Habitat:HostAssociated

### GOLD
Genomes OnLine Database
https://gold.jgi.doe.gov

https://www.ncbi.nlm.nih.gov/pubmed/27794040
Nucleic Acids Res. 2017 Jan 4;45(D1):D446-D456. doi: 10.1093/nar/gkw992. Epub 2016 Oct 27.
Genomes OnLine Database (GOLD) v.6: data updates and feature enhancements.

### 
https://gatesopenresearch.org/articles/2-3/v1
Gates Open Res 2018, 2:3 (doi: 10.12688/gatesopenres.12772.1)
The Microbe Directory: An annotated, searchable inventory of microbes’ characteristics - Gates Open Research
https://twitter.com/search?q=Microbe%20Directory
metadata

A Barberán 著 - ‎2017 
http://msphere.asm.org/content/2/4/e00237-17
Hiding in Plain Sight: Mining Bacterial Species Records for Phenotypic Trait Information | mSphere
https://figshare.com/articles/International_Journal_of_Systematic_and_Evolutionary_Microbiology_IJSEM_phenotypic_database/4272392

https://github.com/haruosuz/mgsa/tree/master/traitar
https://www.ncbi.nlm.nih.gov/pubmed/28066816
mSystems. 2016 Dec 27;1(6). pii: e00101-16. doi: 10.1128/mSystems.00101-16. eCollection 2016 Nov-Dec.
From Genomes to Phenotypes: Traitar, the Microbial Trait Analyzer.
Weimann A1, Mooren K2, Frank J3, Pope PB3, Bremges A4, McHardy AC1.
Traitar provides phenotype classifiers to predict 67 traits related to the use of various substrates as carbon and energy sources, oxygen requirement, morphology, antibiotic susceptibility, proteolysis, and enzymatic activities.

https://www.ncbi.nlm.nih.gov/pubmed/26013493
J Bacteriol. 2015 Aug 1;197(15):2458-67. doi: 10.1128/JB.00330-15. Epub 2015 May 26.
Databases for Microbiologists.
Zhulin IB1.

https://www.ncbi.nlm.nih.gov/pubmed/25098325
PLoS One. 2014 Aug 6;9(8):e103548. doi: 10.1371/journal.pone.0103548. eCollection 2014.
MediaDB: a database of microbial growth conditions in defined media.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4123892/
The Growth_Data table links the tables describing an organism, medium, and literature source, and adds information about temperature, pH, growth rate, product secretion rates, and nutrient uptake rates (whenever reported in the literature source). MediaDB currently contains 765 growth conditions.
https://mediadb.systemsbiology.net
Defined Media Database
https://mediadb.systemsbiology.net/defined_media/growthdata/
Media database: GrowthData
https://mediadb.systemsbiology.net/defined_media/growthdata/page/4
    Escherichia coli BL21 on M9 0.24% pyruvate
https://mediadb.systemsbiology.net/defined_media/growthdata/387/
 Growth Rate: 	0.20776 (1/h)

https://www.ncbi.nlm.nih.gov/pubmed/24152717
ISME J. 2014 Jan;8(1):1-3. doi: 10.1038/ismej.2013.176. Epub 2013 Oct 24.
MIxS-BE: a MIxS extension defining a minimum information standard for sequence data from the built environment.

数十の大腸菌のゲノム配列データからゲノムスケールの代謝モデルを構築し、様々な培養条件での増殖を予測
https://www.ncbi.nlm.nih.gov/pubmed/24277855
Proc Natl Acad Sci U S A. 2013 Dec 10;110(50):20338-43. doi: 10.1073/pnas.1307797110. Epub 2013 Nov 25.
Genome-scale metabolic reconstructions of multiple Escherichia coli strains highlight strain-specific adaptations to nutritional environments.
Monk JM1, Charusanti P, Aziz RK, Lerman JA, Premyodhin N, Orth JD, Feist AM, Palsson BØ.

212種類の培養条件で得られたコロニー形成細菌群集
https://www.ncbi.nlm.nih.gov/pubmed/23033984
Clin Microbiol Infect. 2012 Dec;18(12):1185-93. doi: 10.1111/1469-0691.12023. Epub 2012 Oct 3.
Microbial culturomics: paradigm shift in the human gut microbiome study.
Lagier JC1, Armougom F, Million M, Hugon P, Pagnier I, Robert C, Bittar F, Fournous G, Gimenez G, Maraninchi M, Trape JF, Koonin EV, La Scola B, Raoult D.

### BacDive

https://twitter.com/BacDive
BacDive (@BacDive) | Twitter

https://twitter.com/BacDive/status/1103238138816839680
BacDive on Twitter: "Out now: Our new, powerful isolation source search is online. Filter & analyse bacterial strains based on their isolation source tags. Plot them on the world map or show the distribution within a Krona Plot. https://t.co/QQe6pSFZPJ #bacteria #isolationsource #microorganisms… https://t.co/5URfQNeM6S"
5:17 AM - 6 Mar 2019

2013年9月現在、細菌23,458菌株のメタ情報（分類群、培養条件、分離場所、配列データ）を含む
https://www.ncbi.nlm.nih.gov/pubmed/24214959
Nucleic Acids Res. 2014 Jan;42(Database issue):D592-9. doi: 10.1093/nar/gkt1058. Epub 2013 Nov 7.
BacDive--the Bacterial Diversity Metadatabase.
Söhngen C1, Bunk B, Podstawka A, Gleim D, Overmann J.

https://bacdive.dsmz.de/
BacDive | The Bacterial Diversity Metadatabase

https://bacdive.dsmz.de/strain/17849
https://bacdive.dsmz.de/strain/131145

----------
### growth rate
増殖速度

#### 2019

https://twitter.com/MattagenOlmics/status/1100465734046498816
Matt Olm on Twitter: "(https://t.co/uHTZlq8Mf7), secondary metabolite gene clusters using antismash (https://t.co/nQrEixuomA), BoNTs using BoNTbase (https://t.co/QEOvEieBC3), and metabolisms using KEGG modules (https://t.co/7d6QwbVOQI). Growth rates of bacteria were calculated using iRep (5/7)"
1:40 PM - 26 Feb 2019

https://twitter.com/_biogeek/status/1098660591009357824
Dr Ashish Malik on Twitter: "Two cool papers just out shedding light on "extremely" slow growing bacteria: Extreme slow growth as alternative strategy to survive deep starvation https://t.co/EzNmWhQZAF Quantifying population-specific growth in benthic communities under low oxygen https://t.co/x5g2rycDy9"
2:07 PM - 21 Feb 2019

非胞子形成状態の枯草菌が飢餓状態（純水中）で数カ月生存可能。様々なストレス（抗生物質）に耐性、定常期と異なるトランスクリプトーム・プロファイルを示す。倍加時間4日。一万倍希釈LB培地。低栄養増殖状態（oligotrophic growth state）と命名。
https://www.nature.com/articles/s41467-019-08719-8
Extreme slow growth as alternative strategy to survive deep starvation in bacteria | Nature Communications

https://twitter.com/MicrobiomDigest/status/1090641480144711681
Elisabeth Bik on Twitter: "Metagenome – Inferred bacterial replication rates in cystic fibrosis airways https://t.co/9mBQ5cyllD Note: this sounds similar to the iRep algorithm developed by @BanfieldLab but paywalled, so not sure.… https://t.co/XIlg0NuO3O"
11:02 AM - 30 Jan 2019
![](https://pbs.twimg.com/media/DyK8pSiVsAAdwDI.jpg)

#### GRiD
Growth Rate Index (GRiD) 
（ドラフトを含む）参照ゲノムとメタゲノムから細菌の増殖速度を測定

https://github.com/ohlab/GRiD
Growth Rate Index (GRiD) measures bacterial growth rate from reference genomes (including draft quality genomes) and metagenomic bins at ultra-low sequencing coverage (> 0.2x).

https://www.ncbi.nlm.nih.gov/pubmed/30470746
Nat Commun. 2018 Nov 23;9(1):4956. doi: 10.1038/s41467-018-07240-8.
High throughput in situ metagenomic measurement of bacterial replication at ultra-low sequencing coverage.
Emiola A1, Oh J2.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6251912/
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6251912/bin/41467_2018_7240_Fig1_HTML.jpg)

https://twitter.com/strnr/status/1093467959182397440
Stephen Turner on Twitter: "High throughput in situ metagenomic measurement of bacterial replication at ultra-low sequencing coverage https://t.co/ahZHseQwIA… https://t.co/bBbvOgfElw"
6:14 AM - 7 Feb 2019
![](https://pbs.twimg.com/media/DyzHUEUX0AAHJdS.jpg)

https://twitter.com/mason_lab/status/987315842948960256
Christopher Mason on Twitter: "Growth Rate Index (GRiD) measures bacterial growth rate from draft genomes and metagenomic bins at ultra-low sequencing coverage (> 0.2x) https://t.co/EhpVAES1QL from Julia Oh, Ph.D @jacksonlab"
9:03 AM - 20 Apr 2018

#### 2016

https://twitter.com/hornistyf/status/806723634165227520
Y. Furuta on Twitter: "昨年先に出た似た話。こちらは完全ゲノム必要。／Growth dynamics of gut microbiota in health and disease inferred from single metagenomic... https://t.co/UtVM1E9S92"
11:54 PM - 7 Dec 2016

https://twitter.com/hornistyf/status/806723370062467072
Y. Furuta on Twitter: "細菌叢中の各種の複製スピードをメタゲノムリードから推測する話。ドラフトゲノムでOK。／Measurement of bacterial replication rates in microbial communities https://t.co/ujR3TKUFnI"
11:53 PM - 7 Dec 2016

https://twitter.com/svetlana_up/status/796298501554663424
Svetlana U. Perović on Twitter: "Bacterial replication rates in microbial communities https://t.co/OOXB66bVgL [iRep calculates repl rates using genome-resolved metagenomics]… https://t.co/Ol4HyuGocx"
5:28 AM - 9 Nov 2016

#### iRep

https://github.com/christophertbrown/iRep
iRep is a method for determining replication rates for bacteria from single time point metagenomics sequencing and draft-quality genomes.

https://github.com/banfieldlab/BanfieldLabProjects
iRep - estimating bacteria replication rates based on population genome copy number variation

2016年12月1日
https://www.natureasia.com/ja-jp/nbt/34/12/nbt.3704
微生物群集内の細菌の複製速度の測定
我々は、概要精度のゲノム塩基配列および単一時点のメタゲノム塩基配列解読を利用して微生物集団の複製速度を推測するiRepというアルゴリズムを開発した。このアルゴリズムは、単一の複製起点からの二方向のゲノム複製から得られる塩基配列解読カバー率の傾向に基づいて複製指数（iRep）を算出する。

https://www.ncbi.nlm.nih.gov/pubmed/27819664
Nat Biotechnol. 2016 Dec;34(12):1256-1263. doi: 10.1038/nbt.3704. Epub 2016 Nov 7.
Measurement of bacterial replication rates in microbial communities.
Brown CT1, Olm MR1, Thomas BC2, Banfield JF2,3,4.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5538567/
iRep and bPTR software are maintained under github.com/christophertbrown/iRep (v1.10 used in this analysis: github.com/christophertbrown/iRep/releases/tag/v1.10; Supplementary Code).
![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5538567/bin/nihms884305f1.jpg)

#### 2015

https://www.ncbi.nlm.nih.gov/pubmed/26229116
Science. 2015 Sep 4;349(6252):1101-1106. doi: 10.1126/science.aac4812. Epub 2015 Jul 30.
Growth dynamics of gut microbiota in health and disease inferred from single metagenomic samples.

https://www.ncbi.nlm.nih.gov/pubmed/20308095
Philos Trans R Soc Lond B Biol Sci. 2010 Apr 27;365(1544):1203-12. doi: 10.1098/rstb.2009.0305.
Forces that influence the evolution of codon bias.
Sharp PM1, Emery LR, Zeng K.
- Here we show that the strength of selected codon usage bias is highly correlated with bacterial growth rate, suggesting that selection has favoured translational efficiency. 

https://www.ncbi.nlm.nih.gov/pubmed/20090831
PLoS Genet. 2010 Jan 15;6(1):e1000808. doi: 10.1371/journal.pgen.1000808.
The systemic imprint of growth and its uses in ecological (meta)genomics.
Vieira-Silva S1, Rocha EP.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2797632/
- The resulting ΔENC′ and S values were then subject to principal components analysis, of which the first component (Fa) was compared with the one obtained from the whole genome.
- Codon usage bias is the best determinant of minimum generation time

![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2797632/bin/pgen.1000808.g003.jpg)

https://www.ncbi.nlm.nih.gov/pubmed/15479947
Genome Res. 2004 Nov;14(11):2279-86. Epub 2004 Oct 12.
Codon usage bias from tRNA's point of view: redundancy, specialization, and efficient decoding for translation optimization.
Rocha EP1.
- We show that as minimal generation times get shorter, the genomes contain more tRNA genes, but fewer anticodon species. 
- It also provides new evidence that a selective force for the optimization of the translation machinery is the maximization of growth.

https://genome.cshlp.org/content/14/11/2279/suppl/DC1
Supplemental Research Data
https://genome.cshlp.org/content/suppl/2004/10/18/gr.2896904.DC1/tableA1.pdf
Table A1- Data table with major results. 
the growth rate class (μ). the optimal doubling time (1/μ).


#### 199X

https://www.jstage.jst.go.jp/browse/jssm/50/0/_contents/-char/ja
土と微生物
https://www.jstage.jst.go.jp/article/jssm/50/0/50_KJ00008103464/_article/-char/ja/
土壌微生物のエコ・コレクションと進化・適応(共生・寄生微生物の進化と環境適応,シンポジウム)
服部 勉
1997 年 50 巻 p. 1-3

https://www.jstage.jst.go.jp/article/kagakutoseibutsu1962/28/5/28_5_307/_article/-char/ja
細菌コロニー形成曲線と低栄養細菌
服部 勉
1990 年 28 巻 5 号 p. 307-315

----------
## resistance
耐性

https://twitter.com/arpcard
CARD Developers (@arpcard) | Twitter
https://card.mcmaster.ca/
The Comprehensive Antibiotic Resistance Database

a cool map of AMRs in current cities and some public usage data:
https://resistancemap.cddep.org/

Also here is another great map from John Brownstein’s lab:
https://resistanceopen.org/

https://omictools.com/drug-resistance-category
Drug resistance prediction bioinformatics tools | Drug design analysis - OMICtools

https://twitter.com/volatilebug/status/1107680239818366977
Gautam Dantas on Twitter: "Excited to have our review published on Sequencing-Based Methods and Resources to Study Antimicrobial Resistance in @NatureRevGenet co-authored by WashU PhD students @ManishBoolcha and @alaric_dsouza https://t.co/ObSBXuSn52 #AMR #NGS @WUSTLnews @WUSTLdbbs @WUSTLmed"
12:28 PM - 18 Mar 2019
https://www.nature.com/articles/s41576-019-0108-4
Sequencing-based methods and resources to study antimicrobial resistance | Nature Reviews Genetics

https://www.ncbi.nlm.nih.gov/pubmed/30381421
J Clin Microbiol. 2018 Oct 31. pii: JCM.01405-18. doi: 10.1128/JCM.01405-18. [Epub ahead of print]
Genome-based prediction of bacterial antibiotic resistance.
Su M1,2,3, Satola SW1,3,4, Read TD1,3,4.

https://www.pediatricsurgery.site/entry/2018/11/05/142545
Rで細菌に有効な抗菌薬を探せるようにSanfordの表からデータを整形する - Note of Pediatric Surgery

https://www.ncbi.nlm.nih.gov/pubmed/30333483
Nat Commun. 2018 Oct 17;9(1):4306. doi: 10.1038/s41467-018-06634-y.
Machine learning and structural analysis of Mycobacterium tuberculosis pan-genome identifies genetic signatures of antibiotic resistance.
Kavvas ES1, Catoiu E1, Mih N1,2, Yurkovich JT1,2, Seif Y1, Dillon N3,4, Heckmann D1, Anand A1, Yang L1, Nizet V3,4, Monk JM5, Palsson BO6,7,8.

https://www.ncbi.nlm.nih.gov/pubmed/30332990
BMC Bioinformatics. 2018 Oct 17;19(1):383. doi: 10.1186/s12859-018-2403-z.
Predicting bacterial resistance from whole-genome sequences using k-mers and stability selection.
Mahé P1, Tournoud M2.

https://f1000research.com/articles/6-1971/v1
NastyBugs: A simple method for extracting antimicrobial resistance information from metagenomes - F1000Research

http://kazumaxneo.hatenablog.com/entry/2018/07/19/142001
メタゲノムから抗生物質耐性情報を検出する NastyBugs - macでインフォマティクス

http://kazumaxneo.hatenablog.com/entry/2018/07/03/094105
点変異も考慮して抗生物質耐性遺伝子を検出する PointFinder - macでインフォマティクス

http://kazumaxneo.hatenablog.com/entry/2018/07/03/113439
抗生物質耐性遺伝子や病原性遺伝子を素早く検索できる ABRicate - macでインフォマティクス


抗生物質耐性・病原性遺伝子予測
https://github.com/tseemann/abricate
ABRicate
Mass screening of contigs for antimicrobial resistance or virulence genes. It comes bundled with multiple databases: Resfinder, CARD, ARG-ANNOT, NCBI BARRGD, NCBI, EcOH, PlasmidFinder, Ecoli_VF and VFDB.

抗生物質耐性遺伝子および金属耐性遺伝子
https://www.ncbi.nlm.nih.gov/pubmed/26441947
Front Microbiol. 2015 Sep 24;6:1025. doi: 10.3389/fmicb.2015.01025. eCollection 2015.
Exploring antibiotic resistance genes and metal resistance genes in plasmid metagenomes from wastewater treatment plants.
Li AD1, Li LG1, Zhang T1.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4585309/
MRGs annotation was conducted similarly by searching against MRDB (Cai et al., 2013; Li et al., 2014; Pal et al., 2014). 

抗菌性殺生物剤・金属耐性遺伝子データベース
http://bacmet.biomedicine.gu.se
https://www.ncbi.nlm.nih.gov/pubmed/24304895
Nucleic Acids Res. 2014 Jan;42(Database issue):D737-43. doi: 10.1093/nar/gkt1252. Epub 2013 Dec 3.
BacMet: antibacterial biocide and metal resistance genes database.
Pal C1, Bengtsson-Palme J, Rensing C, Kristiansson E, Larsson DG.

----------
### 


## fastGEAR
https://users.ics.aalto.fi/~pemartti/fastGEAR/

https://www.ncbi.nlm.nih.gov/pubmed/29291727
BMC Genomics. 2018 Jan 2;19(1):2. doi: 10.1186/s12864-017-4249-6.
Whole genome sequencing of the monomorphic pathogen Mycobacterium bovis reveals local differentiation of cattle clinical isolates.
Lasserre M1, Fresia P2, Greif G1, Iraola G2, Castro-Ramos M3, Juambeltz A3, Nuñez Á3, Naya H2, Robello C4,5, Berná L6.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5748942/

Phylogenetic reconstruction of 186 MTBC strains
Recombination was inspected using fastGEAR [44]. 

Variant calling and clustering
We used SnpSift (v4.2) [68], a vcf-manipulation tool, to extract all the genes contained between the SNP-densest regions.

Dec 7, 2017
https://github.com/tseemann/snippy/issues/122
VCF filtering: Pruning / thinnig · Issue #122 · tseemann/snippy

We tend to use the core.full.aln and provide it to ClonalFrameML or gubbins or BratNextGen or FastGear to remove recombination in a more model-based manner. But it is much slower.

https://www.ncbi.nlm.nih.gov/pubmed/29202045
mSphere. 2017 Nov 29;2(6). pii: e00511-17. doi: 10.1128/mSphere.00511-17. eCollection 2017 Nov-Dec.
Adaptation in a Fibronectin Binding Autolysin of Staphylococcus saprophyticus.
Mortimer TD1,2, Annis DS3, O'Neill MB1,4, Bohr LL1,2, Smith TM1,5, Poinar HN6,7,8,9, Mosher DF3, Pepperell CS1,5.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5705806/
Recombination analyses.
To identify recombinant regions in the S. saprophyticus alignment, we used Gubbins v 2.1.0 (20). fastGEAR (42) was used with the recommended input specifications to identify recombination events between major lineages of S. saprophyticus.

Site frequency spectrum.
We used SNP-sites v 2.0.3 (97) to convert the alignment of S. saprophyticus isolates to a multisample variant call format (VCF).

https://www.ncbi.nlm.nih.gov/pubmed/28957464
Genome Biol Evol. 2017 Sep 1;9(9):2403-2417. doi: 10.1093/gbe/evx183.
Population Structure and Local Adaptation of MAC Lung Disease Agent Mycobacterium avium subsp. hominissuis.
Yano H1,2, Iwamoto T3, Nishiuchi Y4, Nakajima C5,6, Starkova DA7, Mokrousov I7, Narvskaya O7, Yoshida S8, Arikawa K3, Nakanishi N3, Osaki K9, Nakagawa I10, Ato M11, Suzuki Y5,6, Maruyama F10.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5622343/
https://academic.oup.com/gbe/article/9/9/2403/4107938
Chromosome recombination was inferred using fastGEAR software (Mostowy etal. 2017).

https://www.ncbi.nlm.nih.gov/pubmed/28650958
PLoS Genet. 2017 Jun 26;13(6):e1006855. doi: 10.1371/journal.pgen.1006855. eCollection 2017 Jun.
Dynamics and impact of homologous recombination on the evolution of Legionella pneumophila.
David S1,2, Sánchez-Busó L1, Harris SR1, Marttinen P3, Rusniok C4,5, Buchrieser C4,5, Harrison TG2, Parkhill J1.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5507463/

https://www.ncbi.nlm.nih.gov/pubmed/28199698
Mol Biol Evol. 2017 May 1;34(5):1167-1182. doi: 10.1093/molbev/msx066.
Efficient Inference of Recent and Ancestral Recombination within Bacterial Populations.
Mostowy R1, Croucher NJ1, Andam CP2, Corander J3,4, Hanage WP2, Marttinen P5.
We introduce a novel algorithm called fastGEAR which identifies lineages in diverse microbial alignments, and recombinations between them and from external origins.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5400400/
(1) Identifying lineages: To identify lineages in a data set, we start by running a previously published clustering algorithm (Corander and Marttinen, 2006) included in the Bayesian Analysis of Population Structure (BAPS) software (Corander et al., 2003).

https://mostowylab.com/2017/02/26/fastgear/
fastGEAR: detecting mosaicism in bacterial genomes – Research of Rafal Mostowy

## BAPS
http://www.helsinki.fi/bsg/software/BAPS/

https://www.ncbi.nlm.nih.gov/pubmed/23408797
Mol Biol Evol. 2013 May;30(5):1224-8. doi: 10.1093/molbev/mst028. Epub 2013 Feb 13.
Hierarchical and spatially explicit clustering of DNA sequences with BAPS software.
Cheng L1, Connor TR, Sirén J, Aanensen DM, Corander J.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3670731/
This tool, hierBAPS, is freely available for research purposes at http://www.helsinki.fi/bsg/software/BAPS/

https://www.ncbi.nlm.nih.gov/pubmed/12586722/
Genetics. 2003 Jan;163(1):367-74.
Bayesian analysis of genetic differentiation between populations.
Corander J1, Waldmann P, Sillanpää MJ.

----------
## harvest

- http://harvest.readthedocs.org
- http://harvest.readthedocs.io/en/latest/content/parsnp/tutorial.html
- https://harvest.readthedocs.io/en/v1.0/

https://www.ncbi.nlm.nih.gov/pubmed/25410596
Genome Biol. 2014;15(11):524.
The Harvest suite for rapid core-genome alignment and visualization of thousands of intraspecific microbial genomes.
Treangen TJ, Ondov BD, Koren S, Phillippy AM.

http://kazumaxneo.hatenablog.com/entry/2017/11/26/205234
数百から数千のバクテリアゲノムの同時比較を行うHarvest - macでインフォマティクス

https://www.cbcb.umd.edu/software/harvest
Harvest | CBCB


----------
### ASaiM
https://www.biorxiv.org/content/early/2017/09/04/183970
ASaiM: a Galaxy-based framework to analyze raw shotgun data from microbiota | bioRxiv

Published on Jul 9, 2015
https://www.slideshare.net/bebatut/asaim-an-environment
JOBIM 2015 - ASaiM: an environment to analyze intestinal microbiota - Demo with analysis of gut metatranscriptomic sequences

https://twitter.com/galaxyproject/status/794453380202725376
Galaxy Project on Twitter: "Computational workflow for fine-grained analysis of metagenomic samples, Pérez-Wohlfeil et al. https://t.co/MAJKM97Pxb #usegalaxy @InfoUMA https://t.co/FAtN47hRES"

----------
### BUSCO
https://busco.ezlab.org/
Bacteria Bacteria sets

25 April 2019
https://link.springer.com/protocol/10.1007/978-1-4939-9173-0_14
BUSCO: Assessing Genome Assembly and Annotation Completeness

https://www.ncbi.nlm.nih.gov/pubmed/29220515
Mol Biol Evol. 2017 Dec 6. doi: 10.1093/molbev/msx319. [Epub ahead of print]
BUSCO applications from quality assessments to gene prediction and phylogenomics.

http://web.sfc.keio.ac.jp/~gaou/wiki/wiki.cgi?page=%A5%B2%A5%CE%A5%E0%B9%A9%B3%D8%BC%C2%BD%AC
ゲノム工学実習	大学院科目
【開講日程】 2018年度 秋学期 特定期間集中	【担当教員】 荒川　和晴
アセンブリークオリティの検証
アセンブリーのクオリティ確認はN50だけではだめで、ちゃんとゲノムとして全遺伝情報がカバーできているか、を確認する必要があります。このためにはCEGMAやBUSCOといった手法(http://kazumaxneo.hatenablog.com/entry/2017/07/19/145640) を用います。これらのソフトウェアはインストールが面倒なのですが、理研が開発しているgVolanteというウェブサーバが非常に簡単に使えるようにしてくれています。https://gvolante.riken.jpBUSCOはv.1がバクテリアに対応しています。

http://kazumaxneo.hatenablog.com/entry/2018/09/05/155855
ラージゲノムにも対応したアセンブリ評価ツール QUAST-LG - macでインフォマティクス
論文内では、最新のmummer4（紹介）やminimap2（紹介）によるcontigのアライメント、KMC3（紹介）によるk-mer評価を元にしたアセンブリ完全性の評価、BUSCO（紹介）によるハウスキーピング遺伝子のhit率に基づいたアセンブリ評価、などの詳細が書かれています。

http://kazumaxneo.hatenablog.com/entry/2017/07/26/211528
ゲノム情報はないが、モデル生物と近縁な生物のRNA seq 解析 - macでインフォマティクス
２、buscoによるcore geneの探索。

https://pacbiobrothers.blogspot.com/2017/07/
2017年7月13日
パックマンの挑戦　－　PacBioシークエンサー: 7月 2017
gVolante でアセンブリを検証したくなるこれだけの理由！
ゲノムアセンブリの論文を読んだことのある方は、BUSCOとかCEGMAとかいう解析で、「Completeが何%、Fragmentedが何%、だからこのアセンブリはまずまず良い」なんていう文章を読んだことがあるかもしれません。
特に真核生物で、新しくゲノムを決めた、みたいな論文では必ずと言っていいほど。

このような解析を、GUIで簡単に解析できるツールが gVolante（ジーボランチ）です。
神戸理化学研究所の工樂さん、西村さん、原さんらの論文も、先日Publishされたそうです

2017-07-19
http://kazumaxneo.hatenablog.com/entry/2017/07/19/145640
アセンブル結果をCore gene setの検出数で評価する　BUSCO - macでインフォマティクス

https://pacbiobrothers.blogspot.com/2016/07/pacbio.html
2016年7月6日
パックマンの挑戦　－　PacBioシークエンサー: パイナップルドラフトゲノム　PacBioでアセンブリ
しかし、残念ながら、CEGMAは昨年サービスを中止したらしいです。
これからはBUSCO（Benchmarking Universal Single-Copy Orthologs)らしいです。

11 of July, 2016
http://cell-innovation.nig.ac.jp/wiki//tiki-index.php?page=BUSCOインストールログ
BUSCOインストールログ

March 2016
http://sesj.kenkyuukai.jp/images/sys%5Cinformation%5C20160313221003-D6FE3AF4AC97B309F7EF6B0B70F4E54C2EBB49CDD91586A8C5AA323F471D2D06.pdf
「大量データと知見の架け橋」どのアセンブリを使うか？：分子系統学的観点に基づくアセンブリの評価
遺伝子探索パイプラインの選択：CEGMAとBUSCOのどちらにするか?

----------
### Tax4Fun

2017/4/30
http://ja.whotwi.com/windowmoon/tweets/user/tksmiki
@tksmiki Tax4Funの論文でも同様の比較をやってますが、土壌がやたら良くて(謎)、ヒトも良いですが、哺乳類腸内細菌叢は少し悪化、高塩環境はちょいヤバゲという感じですね。やっぱり陸水海洋がないのですが。

30 Apr 2017
https://twitter.com/tksmiki/status/858803605435854848
ヨーロッパの某湖一つでちょっと前にやったんですが、メタゲノムのうち、6-8割、5割しかTax4funとpapricaで予測できませんでした。かつ、時期の異なるサンプル間でメタゲノムは2-4割組成が違うのに、予測メタゲノム組成の違いは1割以下。今保留にしてます。

http://pediatricsurgery.hatenadiary.jp/entry/2017/03/13/152234
16S rRNA遺伝子解析の限界と予測メタゲノム解析 - Piphillinの導入 - Note of Pediatric Surgery

2017年02月26日(日)
http://tweez.net/razumall/archive/7/
同じ予測メタゲノム解析の論文でもPICRUStはNature biotechnologyでTax4FunはBioinformaticsだけど、Piphillinの掲載論文はPLoS One。目新しさがなくなったということなのか。インフォマの人たちIFにこだわらない印象はあるけど。

2016-08-13
http://blog.goo.ne.jp/gooquruquru/e/72dd0c0494c54e0f2be827b54af33ba7
バクテリアの群集組成(16S rRNA gene)から機能遺伝子の組成を予測したい（KEGGオーソログリストがほしい）。予測のためのツールが３つ（PICRUSt, Tax4Fun, paprica）、

----------
### diamond
https://ab.inf.uni-tuebingen.de/software/diamond/
https://github.com/bbuchfink/diamond
blastx

http://kazumaxneo.hatenablog.com/entry/2017/08/24/150512
BLASTとコンパチブルで高速なホモロジー検索ツール Diamond - macでインフォマティクス

2015-12-28
http://d.hatena.ne.jp/ang65/20151228/1451307913
高速なタンパク質配列相同性検索ツール「DIAMOND」 - それなりにマジメなメモ

----------
### Tychus

https://www.biorxiv.org/content/early/2018/03/16/283101
Tychus: a whole genome sequencing pipeline for assembly, annotation and phylogenetics of bacterial genomes

Christopher Dean, Noelle Noyes, Steven M Lakin, Pablo Rovira-Sanz, Xiang Yang, Keith Belk, Paul Morley, Richard Meinersmann, Zaid Abdo

https://github.com/Abdo-Lab/Tychus



----------

## eggnog
EggNOG Database | Orthology predictions and functional annnotaion

http://eggnogdb.embl.de/#/app/emapper

https://twitter.com/yokadzaki/status/958651006702661632
Yusuke Okazaki on Twitter: "eggNOG-mapper便利。"https://t.co/pWUltPTHld -i <input.fa> -o <outname> -m diamond --cpu <ncpu>"でアミノ酸FASTA投げたら全自動でアノテーションしてCOGカテゴリとKO番号まで出してくれる。こいつとpVOGを併せて使えば環境ウイルスメタゲノムでも40%弱のORFに一応アノテーションがついた"
5:39 AM - 31 Jan 2018

http://www.geocities.jp/ancientfishtree/phyMarker.html
系統推定 - Jun Inoue

巨大な配列データセットの機能アノテーションを行う eggNOG-Mapper の報告．スタンドアローンとオンライン・サービスがある．eggNOG データベースで，すでに推定されているオーソログクラスターと系統樹を用いることで，高速化．

https://www.ncbi.nlm.nih.gov/pubmed/28460117
Mol Biol Evol. 2017 Aug 1;34(8):2115-2122. doi: 10.1093/molbev/msx148.
Fast Genome-Wide Functional Annotation through Orthology Assignment by eggNOG-Mapper.
Huerta-Cepas J1, Forslund K1, Coelho LP1, Szklarczyk D2,3, Jensen LJ4, von Mering C2,3, Bork P1,5,6,7.







----------




----------
## review

総説
https://academic.oup.com/bib/advance-article/doi/10.1093/bib/bbz020/5363831
New approaches for metagenome assembly with short reads | Briefings in Bioinformatics | Oxford Academic
```
In this review, we describe the challenges inherent in metagenomic assemblies and compare the different approaches taken by these novel assembly tools.

Figure 1
Two different approaches to genome assembly: (a)

(Single) genome assembly
The challenge of metagenomic assembly
Unknown abundance and diversity
Related species
Memory and processing challenges
Initial classification of reads
Graph partitioning
Read pair information
Approaches taken by metagenomic assemblers

Table 1
Metagenomic assembly tools: key concepts and references to publications

Assemblers adopting overlap strategies
dBg-based assemblers
Assembly pipelines
Reference-guided assembly and contig binning
Assessing assembly quality
Conclusion
```

![](https://oup.silverchair-cdn.com/oup/backfile/Content_public/Journal/bib/PAP/10.1093_bib_bbz020/2/m_bbz020f1.png?Expires=1551724400&Signature=eW-f5nggqiGFicDj19UIhx9WVxfzqDe8Cn3tUcP5v9R1WK7HsoarGwZNupnwsOCHKZG13iUnI9bcHAriSfpFKLpZWUL9Gd5vdqPJIDzpSmV0urOuB-LwDLbkDCTglYBa0F9c0nEq88yTxpRgAAxeFn28KA6MNXtV8Rb~qOI7Ecri~SRnZ-5Zo42-oM523PssfYl0vAcdTR8SSQdkWDvKSqNMpfwxFG5SUtEcTDLvNXV1lxu60iQh4uxPEL3S2m4c8D2YJr~EkEXXUqB-P6k0S3~Zf33sPmcyJEOF84w2o~fe1R~AH2M1byWLMT16kONZCxO901LBORzchNhWY5HfMw__&Key-Pair-Id=APKAIE5G5CRDK6RD3PGA)



----------



## qc
- [クオリティコントロール | FASTQ | RNA-seq](http://bi.biopapyrus.net/rnaseq/qc/)
 - [FastQC | FASTQのクオリティチェック](http://bi.biopapyrus.net/rnaseq/qc/fastqc.html)
 - [Trimmomatic | アダプター配列除去](http://bi.biopapyrus.net/rnaseq/qc/trimmomatic.html)

http://kazumaxneo.hatenablog.com/entry/2017/06/21/111007
ショートリードのアダプタートリミングツール Trim Galore - macでインフォマティクス

## assembly

http://kazumaxneo.hatenablog.com/archive/category/アセンブリ

2018/01/19
https://www.biostars.org/p/294053/
Criteria for filtering contigs after spades assembly
scripts that remove contigs having less than 500 pb and 2 fold coverage.

https://microsizedmind.wordpress.com/2015/03/05/removing-small-low-coverage-contigs-from-a-spades-assembly/
Removing small & low coverage contigs from a Spades assembly | The Microsized Mind

https://github.com/rrwick/Unicycler
  --depth_filter DEPTH_FILTER    Filter out contigs lower than this fraction of the chromosomal
                                 depth, if doing so does not result in graph dead ends (default:
                                 0.25)


March 23 2018
http://www.bioinformaticszen.com/post/automating-selection-of-genome-assembly-software/
Bioinformatics Zen
Automating the selection of genome assembly software

The assemblers compared in this analysis were ABySS [7], A5-miseq [8], GATB Minia [9], LightAssembler [10], MEGAHIT [11], Ray [13], Shovill, SPAdes [14], StriDe [15], BBTools Tadpole, Unicycler [16], and Velvet [17]. 

https://www.ncbi.nlm.nih.gov/pubmed/27742661
Brief Bioinform. 2018 Jan 1;19(1):23-40. doi: 10.1093/bib/bbw096.
The present and future of de novo whole-genome assembly.
Sohn JI, Nam JW.

### unicycler
https://github.com/rrwick/Unicycler
https://github.com/rrwick/Unicycler#limitations-of-short-reads

https://www.ncbi.nlm.nih.gov/pubmed/28594827
PLoS Comput Biol. 2017 Jun 8;13(6):e1005595. doi: 10.1371/journal.pcbi.1005595. eCollection 2017 Jun.
Unicycler: Resolving bacterial genome assemblies from short and long sequencing reads.
Wick RR1, Judd LM1, Gorrie CL1, Holt KE1.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5481147/
Limitations

http://kazumaxneo.hatenablog.com/entry/2017/10/26/132951
ハイブリッドアセンブルを行うUnicycler - macでインフォマティクス

https://galaxyproject.github.io/training-material/topics/assembly/tutorials/unicycler-assembly/tutorial.html

https://toolshed.g2.bx.psu.edu/repository/display_tool?repository_id=009c2bee22b4ded4&render_repository_actions_for=tool_shed&tool_config=%2Fsrv%2Ftoolshed%2Fmain%2Fvar%2Fdata%2Frepos%2F003%2Frepo_3386%2Funicycler.xml&changeset_revision=e9c1cdb9f9dc

### de Bruijn Graph
  - 2017.06.04 [de novo アセンブリー | de Bruijn graph によるゲノムアセンブリー](https://bi.biopapyrus.jp/rnaseq/assembly/de-bruijn-graph-assembly.html)
  - [de Bruijn Graph を使った de novo アセンブリの発想がすごい件 - ほくそ笑む](http://d.hatena.ne.jp/hoxo_m/20100930/p1)
  - [CLCバイオジャパン - De Novo アセンブリ](http://www.clcbio.co.jp/fileadmin/user_upload/Mari/DeNovo_6.5.pdf)
  - ["de Bruijn"はどう発音する？ - Wolfeyes Bioinformatics beta](http://yagays.github.io/blog/2013/08/01/de-bruijn-pronounce/)
  - [de Bruijn graphを使ったアセンブラーのヘテロなサイトの取り扱いについて - #LSQA](http://qa.lifesciencedb.jp/questions/623/de-bruijn-graphを使ったアセンブラーのヘテロなサイトの取り扱いについて) 質問日 Aug 31 '12
- [GAGE-B: an evaluation of genome assemblers for bacterial organisms. Bioinformatics. 2013 Jul 15](http://www.ncbi.nlm.nih.gov/pubmed/23665771)
  - 細菌で複数のアセンブラー（Abyss、Cabog、Mira、MaSuRCA、SGA、SoapDenovo2、SPAdes、Velvet）の性能を比較。MaSuRCAとSPAdesの結果が良い（N50値が高い）。リード長100bpの250x coverageで（N50値はプラトーに達するので）十分なデータ量。
  - [Supplementary data](http://bioinformatics.oxfordjournals.org/content/suppl/2013/05/10/btt273.DC1/GAGE-B_SupplementaryMaterial_Apr4.docx)の「Recipes for genome assemblies」にアセンブラーの実行コマンドを記載。
  - 2013-05-20 [Homolog.us - Frontier in Bioinformatics](http://www.homolog.us/blogs/blog/2013/05/20/spades-and-masurca-assemblers-performed-best-in-gage-b-evaluation/) SPAdes and MaSuRCA Assemblers Performed Best in GAGE-B Evaluation
- SpadesとVelvetの比較 
  - 2013-08-30 [The Genome Factory: How Spades differs from Velvet](http://thegenomefactory.blogspot.com/2013/08/how-spades-differs-from-velvet.html)
  - 2013-05-25 [SPAdes vs Velvet assemby comparison | BacPathGenomics](https://bacpathgenomics.wordpress.com/2013/05/25/spades-vs-velvet-assemby-comparison/)
- 2009-09-30 [Tips for de novo bacterial genome assembly · Loman Labs](http://nickloman.github.io/uncategorized/2009/09/30/tips-for-de-novo-bacterial-genome-assembly/)
- [アセンブルの指標であるN50とNG50の違い - Wolfeyes Bioinformatics beta](http://yagays.github.io/blog/2013/05/15/n50-ng50/)

## reordering contigs

近縁細菌のコンプリート(reference)ゲノムにマッチするように、ドラフト(draft)ゲノムのコンティグ群を並べ替える

http://kazumaxneo.hatenablog.com/entry/2018/02/06/092702
Reference-assisted assembly　CSAR

http://kazumaxneo.hatenablog.com/entry/2018/02/05/235453
複数のリファレンスを使い精度を上げたReference-assisted assembly　Multi-CAR

http://kazumaxneo.hatenablog.com/entry/2018/02/05/232317
原核生物のReference-assisted assembly　CAR

https://www.ncbi.nlm.nih.gov/pubmed/28968788
Bioinformatics. 2018 Jan 1;34(1):109-111. doi: 10.1093/bioinformatics/btx543.
CSAR: a contig scaffolding tool using algebraic rearrangements.
Chen KT1, Liu CL1, Huang SH1, Shen HT1, Shieh YK1, Chiu HT2, Lu CL1.

https://www.ncbi.nlm.nih.gov/pubmed/28155633
BMC Bioinformatics. 2016 Dec 23;17(Suppl 17):469. doi: 10.1186/s12859-016-1328-7.
Multi-CAR: a tool of contig scaffolding using multiple references.
Chen KT1, Chen CJ1, Shen HT1, Liu CL1, Huang SH1, Lu CL2.

https://www.ncbi.nlm.nih.gov/pubmed/25431302
BMC Bioinformatics. 2014 Nov 28;15:381. doi: 10.1186/s12859-014-0381-3.
CAR: contig assembly of prokaryotic draft genomes using rearrangements.
Lu CL1, Chen KT2, Huang SY3, Chiu HT4.

https://holtlab.net/2017/07/01/update-to-comparative-bacterial-genomics-tutorial/
https://katholtlab.files.wordpress.com/2017/07/comparativegenomicstutorialv2.pdf
1.4 Ordering contigs against a reference using Mauve

http://darlinglab.org/mauve/user-guide/reordering.html
Reordering contigs

https://www.ncbi.nlm.nih.gov/pubmed/19515959
Bioinformatics. 2009 Aug 15;25(16):2071-3. doi: 10.1093/bioinformatics/btp356. Epub 2009 Jun 10.
Reordering contigs of draft genomes using the Mauve aligner.
Rissman AI1, Mau B, Biehl BS, Darling AE, Glasner JD, Perna NT.

----------

https://en.wikipedia.org/wiki/Phyre
Phyre and Phyre2 (Protein Homology/AnalogY Recognition Engine; pronounced as 'fire') are web-based services for protein structure prediction

https://www.ncbi.nlm.nih.gov/pubmed/25950237
Nat Protoc. 2015 Jun;10(6):845-58. doi: 10.1038/nprot.2015.053. Epub 2015 May 7.
The Phyre2 web portal for protein modeling, prediction and analysis.
Kelley LA1, Mezulis S1, Yates CM1, Wass MN1, Sternberg MJ1.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5298202/
 In collaboration with other groups we have applied Phyre2 to the annotation of a wide range of genomes4–6.

----------


## annotation
アノテーション

https://twitter.com/search?q=%23annotathon
#annotathon - Twitter Search

https://twitter.com/chalkless/status/931390702595878912
Nakazato T. on Twitter: "アノテーションの際に用いるツールなどのリストアップをしてみています。興味のある方はご自由に書き込みください。質問も歓迎 https://t.co/MagBjfy0y4 #annotathon"

https://docs.google.com/spreadsheets/d/1eFFSILjN1OqMitzJVMwJYomwZGZ4N1QRK8mesXWuaQI/edit#gid=0
MiGAP
DFAST
Prokka

https://www.ncbi.nlm.nih.gov/pubmed/26283419
BMC Genomics. 2015 Aug 18;16:616. doi: 10.1186/s12864-015-1826-4.
BEACON: automated tool for Bacterial GEnome Annotation ComparisON.
Kalkatawi M1, Alam I2, Bajic VB3.

https://www.ncbi.nlm.nih.gov/pubmed/24203705
Nucleic Acids Res. 2014 Jan;42(Database issue):D617-24. doi: 10.1093/nar/gkt1078. Epub 2013 Nov 6.
MetaRef: a pan-genomic database for comparative and community microbial genomics.
Huang K1, Brady A, Mahurkar A, White O, Gevers D, Huttenhower C, Segata N.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3964974/
Consensus functional annotation of MetaRef families
- However, we observed that functional annotation of individual members within a family were, at times, inconsistent, often stemming from the fact that individual genomes were annotated by different methods at different times, with varying criteria and terminology.

https://www.ncbi.nlm.nih.gov/pubmed/22408191
Brief Bioinform. 2013 Jan;14(1):1-12. doi: 10.1093/bib/bbs007. Epub 2012 Mar 9.
The automatic annotation of bacterial genomes.
Richardson EJ1, Watson M.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3548604/
Inconsistent annotation

### [DFAST](https://github.com/nigyta/dfast_core)
DFAST - DDBJ Fast Annotation and Submission Tool

http://togotv.dbcls.jp/20180318.html
微生物ゲノムのキラーアノテーションパイプライン DFASTの紹介 @ Annotathon2017

https://www.ncbi.nlm.nih.gov/pubmed/29106469
Bioinformatics. 2018 Mar 15;34(6):1037-1039. doi: 10.1093/bioinformatics/btx713.
DFAST: a flexible prokaryotic genome annotation pipeline for faster genome publication.
Tanizawa Y1, Fujisawa T1, Nakamura Y1.

http://www.iu.a.u-tokyo.ac.jp/~kadota/JSLAB_9_kadota.pdf
次世代シーケンサーデータの解析手法 第 9 回 ゲノムアノテーションとその可視化、DDBJ への登録
谷澤 靖洋、真島 淳、藤澤 貴智、李 慶範、 中村 保一、清水 謙多郎、門田 幸二

DFAST を用いたゲノムアノテーション

http://www.iu.a.u-tokyo.ac.jp/~kadota/book/JSLAB9_suppl_win_20170201.pdf
次世代シーケンサーデータの解析手法 第9回ゲノムアノテーションとその可視化、 DDBJへの登録
ウェブ資料

http://wiki.lifesciencedb.jp/mw/BH16.12/DFAST

### [Prokka](http://www.vicbioinformatics.com/software.prokka.shtml)
 - [Invoking Prokka](https://github.com/tseemann/prokka#invoking-prokka)
- FEB 6, 2017 [BINF 6203: Bacterial genome annotation with prokka | Genome Intelligence](http://genomeintelligence.org/?p=1212)
 - [Genome annotation and Pangenome analysis](https://github.com/microgenomics/tutorials/blob/master/pangenome.md)
  - [Annotating genomes](https://github.com/microgenomics/tutorials/blob/master/pangenome.md#annotating-genomes)
 - [Annotating the assembly using the PROKKA pipeline — Metagenomics Workshop SciLifeLab 1.0 documentation](http://metagenomics-workshop.readthedocs.io/en/latest/functional-annotation/prokka.html)
 - [Annotating a bacterial genome with Prokka — 2013-caltechworkshop 0.1 documentation](http://2013-caltech-workshop.readthedocs.org/en/latest/prokka-annotation.html)

http://crusade1096.web.fc2.com/katei.html
メタアセンブル後に遺伝子予測を行います。バクテリアの遺伝子予測で紹介したprokkaやGeneMarkは，メタゲノム用にも使用できます。実行時間に大きく差があり，数によってはprokkaの場合だと数日かかる実行時間が，MetaGeneMarkを使用すれば，数分で完了することが可能です。

http://kazumaxneo.hatenablog.com/entry/2017/06/18/165258
バクテリア、ウィルス、アーキアのアノテーションツール; Prokka - macでインフォマティクス

日本乳酸菌学会誌
Vol. 28 No. 1 3 ~ 11(2017)
http://www.iu.a.u-tokyo.ac.jp/~kadota/JSLAB_9_kadota.pdf
 Prokka は、CDS、rRNA、tRNA の 予 測 と い っ た 基 本的なアノテーションに加えて、CRISPR(Clustered regularly interspaced short palindromic repeats)32) や シグナルペプチドの検出機能を備えている。Prokka の高 速なアノテーションは、予測された CDS を複数の参照ア ミノ酸配列 DB に対して段階的に検索していくことで実 現されている。はじめに近縁種から得られた配列を中心 に構成されたより信頼できる参照 DB に対して BLAST 検索を行い、そこでヒットしなかった遺伝子はより包括 的な参照 DB を用いて検索される。そこでもヒットしな かった遺伝子については、最終的に隠れマルコフモデル を用いたモチーフ・ドメイン検索ソフト HMMER3 33)を 使って Pfam 34) や TIGRFAMs 35) などの DB に対して検 索を行う。

http://www.iu.a.u-tokyo.ac.jp/~kadota/JSLAB_5_kadota.pdf
 ウェブベースで手軽に利用できるバクテリア用の解析パ 14 イプラインも存在する。連載第 1 回でも触れた Galaxy ベー 15 スのものとしては、Orione 14)というウェブツールが提供 16 されている。Orione の枠組みで、リードの QC、de novo 17 assembly、CISA 15)による scaffolding やアセンブリ後の 18 解析、Prokka 16)によるアノテーションまで一通りの解析 19 が可能である。


----------

## GSEA

http://array.cell-innovator.com/?p=1452
Gene Set Enrichment Analysis (GSEA) – 遺伝子発現解析（マイクロアレイ解析, RNA-seq）

### PAGE
PAGE: Parametric Analysis of Gene Set Enrichment

https://www.ncbi.nlm.nih.gov/pmc/articles/PMC1183189/
BMC Bioinformatics. 2005; 6: 144.

PAGEは正規分布（normal distribution）を仮定したパラメトリックなテストで、ノンパラメトリックテストのGSEAと比較して、計算が速く、検出感度が高い（統計的に有意な遺伝子が多い）。
GOカテゴリの構成遺伝子数が最低10は必要。
we set the minimal gene set size as 10

https://www.t-kagaku.co.jp/seimeiken/top/xmlSupport.php?id=21004
PAGE解析(Parametric Analysis of Gene set Enrichment)とは

http://home.hiroshima-u.ac.jp/naka/wiki/wiki.cgi%3FGSEA_(Gene_Set_Enrichment_Analysis)%25A4%25CB%25A4%25C4%25A4%25A4%25A4%25C6
GSEA_(Gene_Set_Enrichment_Analysis)について -

http://www.iu.a.u-tokyo.ac.jp/~kadota/r.html#page_go
解析 | 機能解析 | PAGE法(Kim_2005;統計量の変換なし)を用いてGene Ontology解析


----------
## [K-mer](https://en.wikipedia.org/wiki/K-mer)

https://twitter.com/kazumachack
上坂一馬 (@kazumachack) | Twitter

http://kazumaxneo.hatenablog.com/entry/2018/02/24/161757
kallistoを動かしメタゲノムからウィルスゲノムを高速に検出・定量する FastViromeExplorer - macでインフォマティクス

http://kazumaxneo.hatenablog.com/entry/2017/06/27/180033
k-mer カウントして、配列も出力するツール　jellyfish、BFCounter - macでインフォマティクス

http://kazumaxneo.hatenablog.com/archive/category/k-mer
k-mer カテゴリーの記事一覧 - macでインフォマティクス

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

----------
## metagenomics
メタゲノム

https://www.biorxiv.org/content/early/2018/05/18/326363
Sunbeam: a pipeline for next-generation metagenomic sequencing experiments | bioRxiv

https://biosciencedbc.jp/gadget/human/170831_mori_170830.pdf
2017年 NGSハンズオン講習会 8月31日
メタゲノム解析
森 宙史(HiroshiMori),Ph.D.

代表的なメタゲノムデータベース
MG-RAST
EBI-Metagenomics

http://kazumaxneo.hatenablog.com/entry/2017/05/22/164017
メタゲノム解析ツール - macでインフォマティクス

https://www.ncbi.nlm.nih.gov/pubmed/28321234
Front Genet. 2017 Mar 6;8:23. doi: 10.3389/fgene.2017.00023. eCollection 2017.
A Review of Bioinformatics Tools for Bio-Prospecting from Metagenomic Sequence Data.
Roumpeka DD1, Wallace RJ2, Escalettes F3, Fotheringham I3, Watson M1.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5337752/
Data Sharing and Online Portals
MG-RAST (Glass et al., 2010) 
EBI MetaGenomics (Hunter et al., 2014) 
IMG/M (Markowitz et al., 2014) 

https://www.ebi.ac.uk/metagenomics/
EBI metagenomics: archiving, analysis and integration of metagenomics data < EBI metagenomics < EMBL-EBI

https://www.slideshare.net/DDBJslide/ddbjing30-43012395
[DDBJing30] メタゲノム解析と微生物統合データベース
講師：森 宙史
2014年12月18日

https://wg.biosciencedbc.jp/doku.php/ゲノム・メタゲノム情報を基盤とした微生物dbの統合
ゲノム・メタゲノム情報を基盤とした微生物dbの統合.txt · 最終更新: 2011/12/27 09:54 +0900 (外部編集)

https://www.ncbi.nlm.nih.gov/pubmed/25983555
Bioinform Biol Insights. 2015 May 5;9:75-88. doi: 10.4137/BBI.S12462. eCollection 2015.
Metagenomics: tools and insights for analyzing next-generation sequencing data derived from biodiversity studies.
Oulas A1, Pavloudi C2, Polymenakou P1, Pavlopoulos GA3, Papanikolaou N3, Kotoulas G1, Arvanitidis C1, Iliopoulos I3.

http://clark.cs.ucr.edu
CLARK :: Fast and accurate classification method for metagenomic/genomic sequences

https://www.ncbi.nlm.nih.gov/pubmed/27540266
Bioinformatics. 2016 Dec 15;32(24):3823-3825. Epub 2016 Aug 18.
Higher classification sensitivity of short metagenomic reads with CLARK-S.
Ounit R1, Lonardi S1.

https://www.ncbi.nlm.nih.gov/pubmed/25879410
BMC Genomics. 2015 Mar 25;16:236. doi: 10.1186/s12864-015-1419-2.
CLARK: fast and accurate classification of metagenomic and genomic sequences using discriminative k-mers.
Ounit R1, Wanamaker S2, Close TJ3, Lonardi S4.

- [Kraken](http://ccb.jhu.edu/software/kraken/)
 - 論文 [Wood DE, Salzberg SL. Genome Biol. 2014 "Kraken: ultrafast metagenomic sequence classification using exact alignments."]()

- [Kaiju: Fast and sensitive taxonomic classification for metagenomics](http://kaiju.binf.ku.dk)
 - 論文 [Menzel P et al. Nat Commun. 2016 "Fast and sensitive taxonomic classification for metagenomics with Kaiju."](https://www.ncbi.nlm.nih.gov/pubmed/27071849)
  - We compared the performance of Kaiju with the two k-mer-based programs Kraken and Clark, which performed best in speed and accuracy in a recent benchmark study18. https://www.ncbi.nlm.nih.gov/pubmed/26778510

### Metagenomic Assembly

https://omictools.com/metagenomic-assembly-category
Assembly software tools | Metagenomic sequencing analysis - OMICtools

https://www.ncbi.nlm.nih.gov/pubmed/28693474
BMC Genomics. 2017 Jul 10;18(1):521. 
Assembling metagenomes, one community at a time.

https://twitter.com/StevenJRobbins/status/849484107797204997
Three very recent papers comparing metagenome assembly tools:

https://www.ncbi.nlm.nih.gov/pubmed/28099457
PLoS One. 2017 Jan 18;12(1):e0169662.
Comparing and Evaluating Metagenome Assembly Tools from a Microbiologist's Perspective - Not Only Size Matters!

https://www.ncbi.nlm.nih.gov/pubmed/27698619
Yale J Biol Med. 2016 Sep 30;89(3):353-362. eCollection 2016.
Metagenomic Assembly: Overview, Challenges and Applications.
Ghurye JS1, Cepeda-Espinoza V1, Pop M1.

[MetAMOS](https://github.com/treangen/MetAMOS)
https://www.ncbi.nlm.nih.gov/pubmed/23320958
Genome Biol. 2013 Jan 15;14(1):R2. doi: 10.1186/gb-2013-14-1-r2.
MetAMOS: a modular and open source metagenomic assembly and analysis pipeline.

[MOCAT](http://www.bork.embl.de/mocat/)
https://www.ncbi.nlm.nih.gov/pubmed/23082188
PLoS One. 2012;7(10):e47656.
MOCAT: a metagenomics assembly and gene prediction toolkit.


----------

### comparative genomics
ゲノム比較

http://kazumaxneo.hatenablog.com/archive/category/ゲノム比較

https://sites.google.com/site/scriptofbioinformatics/pei-lie-jie-xi-guan-xi/bi-jiaogenomu-iroiro
比較ゲノム(いろいろ） - script of bioinformatics

https://www.ncbi.nlm.nih.gov/pubmed/28705636
J Biotechnol. 2017 Nov 10;261:2-9. doi: 10.1016/j.jbiotec.2017.07.010. Epub 2017 Jul 10.
A review of bioinformatics platforms for comparative genomics. Recent developments of the EDGAR 2.0 platform and its utility for taxonomic and phylogenetic studies.
Yu J1, Blom J2, Glaeser SP3, Jaenicke S4, Juhre T4, Rupp O4, Schwengers O4, Spänig S4, Goesmann A4.
https://www.sciencedirect.com/science/article/pii/S0168165617315225?via%3Dihub
Review
, for instance IMG/M (Chen et al., 2017), MicrobesOnline (Dehal et al., 2010), MBGD (Uchiyama et al., 2015), Roary (Page et al., 2015), EzBioCloud (Yoon et al., 2017) or OrtholugeDB (Whiteside et al., 2013).


Gardnerella vaginalis：細菌性膣症（bacterial vaginosis: BV）に関与する細菌の一つ
https://www.ncbi.nlm.nih.gov/pubmed/29632552
Evol Appl. 2017 Nov 16;11(3):312-324. doi: 10.1111/eva.12555. eCollection 2018 Mar.
Focusing the diversity of Gardnerella vaginalis through the lens of ecotypes.
Cornejo OE1, Hickey RJ2,3,4, Suzuki H5, Forney LJ2,3.

Our functional enrichment analysis suggests that some lineages of G. vaginalis may possess enhanced pathogenic capabilities, including genes involved in mucus degradation like sialidases, while others may be commensal strains, lacking many of these pathogenic capabilities. 

Streptococcus属
https://www.ncbi.nlm.nih.gov/pubmed/24625962
Genome Biol Evol. 2014 Apr;6(4):741-53. doi: 10.1093/gbe/evu048.
Phylogenomics and the dynamic genome evolution of the genus Streptococcus.
Richards VP1, Palmer SR, Pavinski Bitar PD, Qin X, Weinstock GM, Highlander SK, Town CD, Burne RA, Stanhope MJ.

Multiple gene ontology terms were significantly enriched for each group, and mapping terms onto the phylogeny showed that those corresponding to genes born on branches leading to the major groups represented approximately one-fifth of those enriched. 

Lactobacillus属：膣から分離
http://www.ncbi.nlm.nih.gov/pubmed/24488312
J Bacteriol. 2014 Apr;196(7):1458-70.
Comparative Functional Genomics of Lactobacillus spp. Reveals Possible Mechanisms for Specialization of Vaginal Lactobacilli to Their Environment.
Mendes-Soares H, Suzuki H, Hickey RJ, Forney LJ.

Lactobacillus属：体重増加に関連
https://www.ncbi.nlm.nih.gov/pubmed/24567124
Nutr Diabetes. 2014 Feb 24;4:e109. doi: 10.1038/nutd.2014.6.
Comparative genomics analysis of Lactobacillus species associated with weight gain or weight protection.
Drissi F1, Merhej V1, Angelakis E1, El Kaoutari A1, Carrière F2, Henrissat B3, Raoult D1.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3940830/
The functional distribution into gene families showed that the genes encoding the proteins involved in transcription (median±intraquartile range, 178±71 vs 118±9, P=0.28) and carbohydrate transport and metabolism (median±intraquartile range, 253±54 vs 158±17, P=0.16) were primarily identified in weight protection-associated Lactobacillus (Figure 3). In contrast, weight gain-associated Lactobacillus primarily contained genes involved in replication, recombination and repair (median±intraquartile range, 195±86 vs 106±13, P=0.12). In addition, a small number of genes involved in lipid transport and metabolism was observed in both groups (∼53 genes per genome; Figure 3).





#### Mycobacterium
2017年9月15日
https://www.tohoku.ac.jp/japanese/2017/09/press20170915-03.html
http://www.amed.go.jp/news/release_20170915-02.html
肺MAC症原因菌が進化する仕組みを解明
https://www.ncbi.nlm.nih.gov/pubmed/28957464
Genome Biol Evol. 2017 Sep 1;9(9):2403-2417. doi: 10.1093/gbe/evx183.
Population Structure and Local Adaptation of MAC Lung Disease Agent Mycobacterium avium subsp. hominissuis.
Yano H1,2, Iwamoto T3, Nishiuchi Y4, Nakajima C5,6, Starkova DA7, Mokrousov I7, Narvskaya O7, Yoshida S8, Arikawa K3, Nakanishi N3, Osaki K9, Nakagawa I10, Ato M11, Suzuki Y5,6, Maruyama F10.
https://academic.oup.com/gbe/article/4107938/

- 結核菌 [Whole-genome sequencing and social-network analysis of a tuberculosis outbreak. N Engl J Med. 2011 Feb 24](http://www.ncbi.nlm.nih.gov/pubmed/21345102)
 - [結核の集団感染の全ゲノム配列決定とソーシャルネットワーク解析による検討 ｜ 日本語アブストラクト ｜ The New England Journal of Medicine（日本国内版）](http://www.nejm.jp/abstract/vol364.p730)
 - [次世代 分子疫学技術/情報　と　その周辺 - 感染症診療の原則](http://blog.goo.ne.jp/idconsult/e/6bc7fda02403371fb2b77a26bc03d003)
  - 例えばカナダBCの結核のアウトブレイク。記述疫学によるSocial Networkの絵は大変複雑になりましたが、菌の全ゲノム情報を元に分類すると、きれいに2つのクラスターがみえました。
 - [不法コカイン使用と結核流行 : 内科開業医のお勉強日記](http://intmed.exblog.jp/12182822/)

#### Escherichia coli
- 大腸菌 [Comparative genomics of recent Shiga toxin-producing Escherichia coli O104:H4: short-term evolution of an emerging pathogen. MBio. 2013 Jan 22](http://www.ncbi.nlm.nih.gov/pubmed/23341549)
- 大腸菌 [Genomic epidemiology of the Escherichia coli O104:H4 outbreaks in Europe, 2011. Proc Natl Acad Sci U S A. 2012 Feb](http://www.ncbi.nlm.nih.gov/pubmed/22315421)
- 大腸菌 [Ogura Y et al. PNAS. 2009 Oct. "Comparative genomics reveal the mechanism of the parallel evolution of O157 and non-O157 enterohemorrhagic Escherichia coli."](http://www.ncbi.nlm.nih.gov/pubmed/19815525)

https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2764950/
The gene contents of the 4 EHECs do not follow the phylogenetic relationships of the strains, and they share virulence genes for Shiga toxins and many other factors. 
Fig. 3.
4 EHECs は、系統的に近縁ではないが、遺伝子の有無は類似（病原遺伝子を共有）している。
4 EHECs (O157, O26, O111, and O103) は、系統樹でクレードを形成しない (Fig. 3A) が、遺伝子の有無 (gene contents / gene repertoire) に基づくクラスター分析で得られたデンドログラムで単一クラスターを形成する (Fig. 3B).

2011
https://www.jstage.jst.go.jp/article/jsb/66/2/66_2_175/_article/-char/ja/
腸管出血性大腸菌と腸管病原性大腸菌のゲノム解読と病原性進化メカニズムの解明
https://www.jstage.jst.go.jp/article/jsb/66/2/66_2_175/_pdf/-char/ja

- [下毛類](https://ja.wikipedia.org/wiki/下毛類)Euplotesの共生細菌 [Polynucleobacter necessarius, a model for genome reduction in both free-living and symbiotic bacteria. Proc Natl Acad Sci U S A. 2013 Nov ](http://www.ncbi.nlm.nih.gov/pubmed/24167248)
- サルモネラ [Evolutionary Genomics of Salmonella enterica Subspecies. MBio. 2013 Mar](http://www.ncbi.nlm.nih.gov/pubmed/23462113)
- []()
- クロストリジウム属 [Comparative genomic and phenomic analysis of Clostridium difficile and Clostridium sordellii, two related pathogens with differing host tissue preference. BMC Genomics. 2015 Jun](http://www.ncbi.nlm.nih.gov/pubmed/26059449)
- ゾウリムシ核内共生細菌 [Draft genome sequences of three Holospora species (Holospora obtusa, Holospora undulata, and Holospora elegans), endonuclear symbiotic bacteria of the ciliate Paramecium caudatum. FEMS Microbiol Lett. 2014 Oct](http://www.ncbi.nlm.nih.gov/pubmed/25115770)
- 大腸菌 [Inflammation-associated Adherent-invasive Escherichia coli Are Enriched in Pathways for Use of Propanediol and Iron and M-cell Translocation. Inflamm Bowel Dis. 2014 Nov](http://www.ncbi.nlm.nih.gov/pubmed/25230163)
- 膣内乳酸桿菌 [Comparative Functional Genomics of Lactobacillus spp. Reveals Possible Mechanisms for Specialization of Vaginal Lactobacilli to Their Environment. J Bacteriol. 2014 Apr](http://www.ncbi.nlm.nih.gov/pubmed/24488312)
- ブドウ球菌 [Comparative genomic analysis of the genus Staphylococcus including Staphylococcus aureus and its newly described sister species Staphylococcus simiae. BMC Genomics. 2012 Jan](http://www.ncbi.nlm.nih.gov/pubmed/22272658)
- レンサ球菌 [Comparative genomic analysis of the Streptococcus dysgalactiae species group: gene content, molecular adaptation, and promoter evolution. Genome Biol Evol. 2011](http://www.ncbi.nlm.nih.gov/pubmed/21282711)


https://www.ncbi.nlm.nih.gov/pubmed/23011009
Antonie Van Leeuwenhoek. 2013 Feb;103(2):385-98. doi: 10.1007/s10482-012-9819-7. Epub 2012 Sep 26.
Comparative bacterial genomics: defining the minimal core genome.
Huang CH1, Hsiang T, Trevors JT.



### Illumina
- [Illumina Sequencing by Synthesis (Now in 3D) - YouTube](https://www.youtube.com/watch?v=fCd6B5HRaZ8)
- [Publication Reviews | Highlights of recently published research](http://www.illumina.com/science/publications/publications-review.html)
  - [Microbes and Metagenomics in Human Health](http://www.illumina.com/content/dam/illumina-marketing/documents/products/research_reviews/metagenomics_research_review.pdf)
- An Overview of Publications Featuring Illumina technology
 - [Infectious Disease Review](http://www.illumina.com/content/dam/illumina-marketing/documents/products/research_reviews/infectious-disease-review.pdf)
- イルミナテクノロジーを使用した研究論文の概要
 - [総説:感染症](http://www.illuminakk.co.jp/documents/pdf/publication_infectious_disease-j.pdf)
 - [総説:微生物ゲノム研究](http://www.illuminakk.co.jp/documents/pdf/publication_microbiology-j.pdf)
 - [総説:ウィルス研究](http://www.illuminakk.co.jp/documents/pdf/publication_virus_j.pdf)
 - [総説:メタゲノム研究](http://jp.illumina.com/content/dam/illumina-marketing/apac/japan/documents/pdf/publication_metagenome-j.pdf)
- PhiX
 - [Mukherjee S et al. Stand Genomic Sci. 2015 Mar. "Large-scale contamination of microbial isolate genomes by Illumina PhiX control."](https://www.ncbi.nlm.nih.gov/pubmed/26203331)
 - [PhiXを使用してRun Qualityを改善する](http://jp.illumina.com/content/dam/illumina-marketing/apac/japan/documents/pdf/2013_illumina_techsupport_session16.pdf)
- 2015年9月4日 [イルミナ サポートウェビナー | 解析に適したリード前処理 を行うために](http://jp.illumina.com/content/dam/illumina-marketing/apac/japan/documents/pdf/2015_techsupport_session10.pdf)

### genome report
- [Goodbye genome paper, hello genome report: the increasing popularity of 'genome announcements' and their impact on science. Brief Funct Genomics. 2016 Jun 23](http://www.ncbi.nlm.nih.gov/pubmed/27339634)
- Genome Biology and Evolution https://academic.oup.com/gbe/pages/general_instructions Genome Reports
- Gut Pathogens | Genome report https://gutpathogens.biomedcentral.com/submission-guidelines/preparing-your-manuscript/genome-report
- Standards in Genomic Sciences | Short genome report https://standardsingenomics.biomedcentral.com/submission-guidelines/preparing-your-manuscript/short-genome-report
- Journal of Biotechnology https://www.elsevier.com/journals/journal-of-biotechnology/0168-1656/guide-for-authors  (4) Short Genome Communications
#### Genome Announcements
- [抗ウイルス活性物質を生産する放線菌ゲノムの解読　バイオ燃料電池に有用なFDH-O遺伝子の発見 - 国立大学法人 岡山大学](http://www.okayama-u.ac.jp/tp/release/release_id330.html)
- [Genome Announcementsの評価 - 下っ端○○の日記 第4部 ～ダイヤモンドは砕けない～（仮）](http://d.hatena.ne.jp/Masarakki/20151005/p1)
- ["Genome announcement"という雑誌ができるメリット - バイオ系研究室PC管理担当のメモ (id:hornistyf / @hornistyf)](http://d.hatena.ne.jp/hornistyf/20130216/1360991017)

### BioPerl
- 18/05/2015 [BioPerl をインストールして Perl モジュールを使ってみよう！ | Tools FoR](http://kiagorod.wp.xdomain.jp/2015.05.18.212/)
- 2015.04.26 [BioPerl | バイオ系なら知っておきたいBioPerlの利用方法,インストール法](http://bi.biopapyrus.net/perl/bioperl/)
- 2015.04.29 [SeqIO | BioPerlの使い方,フラットファイルの処理](http://bi.biopapyrus.net/perl/bioperl/seqio.html)
- 2012-11-30 [井上 潤：BioPerl](http://www.geocities.jp/ancientfishtree/BioPerl_JI.html)
- 2013-01-28 [BioPerlのインストール(Mac OS X) - Masamichi_C2の日記](http://d.hatena.ne.jp/Masamichi_C2/20130128/1359362290)

### BLAST
- BLAST® Command Line Applications User Manual - NCBI Bookshelf
 - [Options for the command-line applications.](http://www.ncbi.nlm.nih.gov/books/NBK279675/)
- [BLASTの使用方法全般](http://bio-info.biz/article/ato_blast_basic_usage.html)　インストール　BLASTデータベースの作り方　DELTA-BLASTの使い方　RPS-BLASTの使い方　MSAからのPSSM作成法
- [Local BLAST の使い方〜導入・準備編（MacOSX版）〜 2011 - 統合TV (togotv)(2011-04-20)](http://togotv.dbcls.jp/20110420.html)
- [Local BLAST の使い方〜検索実行・オプション編（MacOSX版）〜 2011 - 統合TV (togotv)(2011-06-08)](http://togotv.dbcls.jp/20110608.html)
- [Local BLAST (togotv)(2011-02-25)](http://togotv.dbcls.jp/20110225.html)
- 2013 年 7 月 10 日 [井上 潤：Blast+](http://www.geocities.jp/ancientfishtree/BLASTplus_JI.html)
- [Building a BLAST database with local sequences](http://www.ncbi.nlm.nih.gov/books/NBK279688/)
  - 2017.06.03 [makeblastdb | BLAST ホモロジー検索用のデータベースの作成方法](https://bi.biopapyrus.jp/seq/blast/makeblastdb.html)
- [Extracting data from BLAST databases with blastdbcmd](http://www.ncbi.nlm.nih.gov/books/NBK279689/)
  -  2014/08/08 [自家製BLAST用DBから必要な配列エントリ取得 | ぼうのブログ](http://bonohu.jp/blog/2014/08/08/yetanother-blastdbcmd/)
  - [Blasted Bioinformatics!?: My IDs not good enough for NCBI BLAST+](http://blastedbio.blogspot.com/2012/10/my-ids-not-good-enough-for-ncbi-blast.html)

### Swiss-Prot
- [Swiss-Prot - Wikipedia](https://ja.wikipedia.org/wiki/Swiss-Prot)
- [バイオインフォマティクスの基礎実習（データベース検索）](http://lecture.ecc.u-tokyo.ac.jp/~ashugo/database/lec1_2.html) 2.4. UniProt(Swiss-Prot)を用いたタンパク質データベースの検索
- 平成21年度ゲノムリテラシー講座　分子生物学データベース[【講義１】](http://www.jst.go.jp/nbdc/bird/jinzai/literacy/streaming/h21_4_1.pdf)[【講義２】](http://www.jst.go.jp/nbdc/bird/jinzai/literacy/streaming/h21_4_2.pdf)
- [Nucleic Acids Res. 2015 Jan;43(Database issue):D204-12. UniProt: a hub for protein information.](http://www.ncbi.nlm.nih.gov/pubmed/25348405)
- [Database (Oxford). 2014 Mar 12;2014:bau016. Expert curation in UniProtKB: a case study on dealing with conflicting and erroneous data.](http://www.ncbi.nlm.nih.gov/pubmed/24622611)
- [Parsing Swissprot With Biopython](https://www.biostars.org/p/59648/)
- [Biopython Tutorial and Cookbook | 10.1  Parsing Swiss-Prot files](http://biopython.org/DIST/docs/tutorial/Tutorial.html#htoc136)
- [biopythonでswissprotのレコードをパースする - kozo-niのはてなダイアリー](http://d.hatena.ne.jp/kozo-ni/touch/20100129/1264757221)

### [rarefaction](https://en.wikipedia.org/wiki/Rarefaction_(ecology))

![https://en.wikipedia.org/wiki/Rarefaction_(ecology)](https://upload.wikimedia.org/wikipedia/commons/thumb/f/f8/Sogin-Huber-CombinedRarefac.jpg/220px-Sogin-Huber-CombinedRarefac.jpg)

2018.08.20
https://bi.biopapyrus.jp/rnaseq/exp/replicate-sequencing-depth.html
replicate 数と sequencing depth | RNA-Seq 実験に最適な replicate 数と sequencing depth の決め方
近似曲線（希薄化曲線）を描く

2018.01.27
https://stats.biopapyrus.jp/stats/rarefaction-curve.html
希薄化曲線 | 多様性の解析などに利用する希薄化曲線

2018/01/05 
https://ultrabem.com/environment/ecology/species_richness.html
種の豊富さと rarefaction curve: 生態学や腸内細菌叢の論文で頻出

2016-02-21
http://pedsurgery.wp.xdomain.jp/213
腸内細菌の論文が読める様になりたい臨床医へ ( 2 ) レアファクション解析 – Site of Pediatric Surgery

2016-02-21
http://pedsurgery.wp.xdomain.jp/504
腸内細菌の論文が読める様になりたい臨床医へ ( 1 ) 多様性 – Site of Pediatric Surgery

2010/01/21
http://smokeandumami.com/gene-accumulation-curves-in-r
Gene accumulation curves in R – Smokeandumami

- [Vegan: ecological diversity](https://cran.r-project.org/web/packages/vegan/vignettes/diversity-vegan.pdf)
- [plot - accumulation curve in R - Stack Overflow](http://stackoverflow.com/questions/21615628/accumulation-curve-in-r)
- [自前でrarefactionカーブ in R](http://tullbergia.at.webry.info/201009/article_3.html)
- [自前でrarefactionカーブ in R vol.2: マルチコア対応](http://tullbergia.at.webry.info/201111/article_1.html) [.](http://s.webry.info/sp/tullbergia.at.webry.info/201111/article_1.html)








----------
## people

----------


https://sites.google.com/site/microbioinformatics/genomu-bi-jiao-jie-xi
Hiromi Nishida
ゲノム比較解析 - microbioinformatics

http://crusade1096.web.fc2.com/katei.html
半田佳宏
NGSのためのバイオインフォマティクス Bioinformatics for NGS

http://crusade1096.web.fc2.com/blast.html
BLASTBasic Local Alignment Search Tool

 [NGS Surfer's Wiki | コンバータ・パーサ](https://cell-innovation.nig.ac.jp/wiki/tiki-index.php?page=コンバータ・パーサ)

----------
### [kadota](http://www.iu.a.u-tokyo.ac.jp/~kadota/)
門田　幸二のホームページ
#### [(Rで)塩基配列解析](http://www.iu.a.u-tokyo.ac.jp/~kadota/r_seq.html)
- [参考資料 | 書籍、学会誌](http://www.iu.a.u-tokyo.ac.jp/%7Ekadota/r_seq.html#reference_materials1)
 - [日本乳酸菌学会誌：次世代シーケンサーデータの解析手法](http://www.iu.a.u-tokyo.ac.jp/~kadota/r_seq.html#about_book_JSLAB)
  - [第1回イントロダクション](http://www.iu.a.u-tokyo.ac.jp/%7Ekadota/JSLAB_1_kadota.pdf)
  - [第2回GUI環境からコマンドライン環境へ](http://www.iu.a.u-tokyo.ac.jp/%7Ekadota/JSLAB_2_kadota.pdf)
  - [第3回Linux環境構築からNGSデータ取得まで](http://www.iu.a.u-tokyo.ac.jp/%7Ekadota/JSLAB_3_kadota.pdf)
  - [第4回クオリティコントロールとプログラムのインストール](http://www.iu.a.u-tokyo.ac.jp/~kadota/JSLAB_4_kadota.pdf)
  - [第5回アセンブル、マッピング、そしてQC](http://www.iu.a.u-tokyo.ac.jp/~kadota/JSLAB_5_kadota.pdf)
  - [第6回ゲノムアセンブリ](http://www.iu.a.u-tokyo.ac.jp/~kadota/JSLAB_6_kadota.pdf)
  - [第7回ロングリードアセンブリ](http://www.iu.a.u-tokyo.ac.jp/%7Ekadota/r_seq.html#book_JSLAB_7)

- 第3部:NGS解析(中~上級) ~ Linux環境でのデータ解析:マッピング、トリミング、アセンブリ~ http://www.iu.a.u-tokyo.ac.jp/~kadota/bioinfo_ngs_sokushu_2016/3/20160802_kadota_20160731.pdf

----------
### kazumaxneo
http://kazumaxneo.hatenablog.com
macでインフォマティクス

http://kazumaxneo.hatenablog.com/entry/2017/07/19/145640
アセンブル結果をCore gene setの検出数で評価する　BUSCO - macでインフォマティクス

http://kazumaxneo.hatenablog.com/entry/2018/02/03/154624
GC-skewと複数アセンブルデータを使ってバクテリアのゲノムアセンブリを改善するGUIツール GFinisher - macでインフォマティクス

http://kazumaxneo.hatenablog.com/entry/2017/09/04/105002
メタゲノムデータを種レベルで検出し割合を計算するMOCAT - macでインフォマティクス

----------
### koji.yahara

https://researchmap.jp/koji.yahara/
矢原耕史

https://www.ncbi.nlm.nih.gov/pubmed/30065291
Sci Rep. 2018 Jul 31;8(1):11496. doi: 10.1038/s41598-018-29272-2.
Investigation of recombination-intense viral groups and their genes in the Earth's virome.
Meier-Kolthoff JP1, Uchiyama J2, Yahara H3, Paez-Espino D4, Yahara K5.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6068154/
Because approximately 90% of such genes were initially annotated as hypothetical, we conducted iterative protein searches based on representing both query and database sequences by profile hidden Markov models31 using a UniProt database. We examined all hits with >99% probability of being true positives, and identified 89 notable genes in 24 viral groups (listed in Table S2).

----------
### 

https://www.fifthdimension.jp/documents/metabarcodingtextbook/metabarcodingtextbook.ja.pdf
https://www.fifthdimension.jp/documents/metabarcodingtextbook/metabarcodingtextbook.ja.html
生態学のためのメタバーコーディングとDNAバーコーディング
田辺晶史
2018年5月8日

----------
### holt Lab

https://holtlab.net
Holt Lab | microbial genomics

https://holtlab.net/2017/07/01/update-to-comparative-bacterial-genomics-tutorial/
Update to Comparative Bacterial Genomics tutorial | Holt Lab

https://holtlab.net/2016/01/19/genomics-of-atypical-enteropathogenic-e-coli/
Genomics of atypical enteropathogenic E. coli | Holt Lab

We tried making the core genome tree in a few different ways, including mapping reads to a reference genome vs using Roary to generate core gene alignments from assemblies; with and without removing recombinant regions identified using ClonalFrameML. 

![](https://katholtlab.files.wordpress.com/2016/01/aepec_tree_lee_subtypes1.png)

https://holtlab.net/2015/02/25/tools-for-bacterial-comparative-genomics/
Tools for bacterial comparative genomics | Holt Lab

https://holtlab.net/2014/12/27/bacterial-genomics-tutorial-2/
Bacterial genomics tutorial | Holt Lab

https://bacpathgenomics.wordpress.com/2013/04/13/bacterial-genomics-tutorial/
Bacterial genomics tutorial | BacPathGenomics

https://www.ncbi.nlm.nih.gov/pubmed/23575213
Microb Inform Exp. 2013 Apr 10;3(1):2. doi: 10.1186/2042-5783-3-2.
Beginner's guide to comparative bacterial genome analysis using next-generation sequence data.
Edwards DJ1, Holt KE.

----------

## unclassified


http://www.genomesize.com/prokaryotes/
Prokaryote Genome Size Database

https://www.ncbi.nlm.nih.gov/pubmed/27471065
Microb Biotechnol. 2016 Sep;9(5):681-6. doi: 10.1111/1751-7915.12389. Epub 2016 Jul 29.
Microbial bioinformatics 2020.
Pallen MJ1.

https://www.ncbi.nlm.nih.gov/pubmed/26548914
Nat Rev Microbiol. 2015 Dec;13(12):787-94. doi: 10.1038/nrmicro3565. Epub 2015 Nov 9.
Twenty years of bacterial genome sequencing.
Loman NJ1, Pallen MJ2.


- 2016-09-22 [Guideline to bioinformatics tools | Bits and Bugs](https://bitsandbugs.org/2016/09/22/guideline-to-bioinformatics-tools/)

PLOS Genetics: Combined Analysis of Variation in Core, Accessory and Regulatory Genome Regions Provides a Super-Resolution View into the Evolution of Bacterial Populations

http://www.ncbi.nlm.nih.gov/pubmed/27603265
Genome. 2016 May 11:1-9. [Epub ahead of print]
bcgTree: automatized phylogenetic tree building from bacterial core genomes.
Ankenbrand MJ1,2, Keller A2,2.

- 10X Genomics
 - 2016年03月23日 [ロングリード・シーケンシングを可能にする10X Genomicsの新機種"Chromium"の魅力](http://genaport.genaris.com/GOC_topics2_post.php?eid=00031)
 - 2016年03月11日 [10X Genomics、単細胞RNAシーケンシングを可能にする新機種Chromiumを発表](http://genaport.genaris.com/GOC_topics2_post.php?eid=00030)
 - 2015年03月12日 [10X Genomics、衝撃的デビュー：ショートリード・シーケンサーをグレードアップ！](http://genaport.genaris.com/GOC_topics2_post.php?eid=00006)

- [遺伝子ホモログ - PsyberStyle - Seesaa Wiki（ウィキ）](http://seesaawiki.jp/w/psyberformula/d/%B0%E4%C5%C1%BB%D2%A5%DB%A5%E2%A5%ED%A5%B0)

https://www.ncbi.nlm.nih.gov/pubmed/22047552
BMC Genomics. 2011 Nov 2;12:542. doi: 10.1186/1471-2164-12-542.
Insight into cross-talk between intra-amoebal pathogens.
Gimenez G1, Bertelli C, Moliner C, Robert C, Raoult D, Fournier PE, Greub G.

- https://www.ncbi.nlm.nih.gov/pubmed/12217498
Trends Microbiol. 2002 Sep;10(9):393-5.
Is there a role for replication fork asymmetry in the distribution of genes in bacterial genomes?
Rocha E1.

x=遺伝子の有無、y=特徴量の分布 を示す箱ひげ図を作成する。
polC遺伝子[COG2176 DNA polymerase III, alpha subunit (gram-positive type)]の有無に関するRocha E. (2002) (http://www.ncbi.nlm.nih.gov/pubmed/12217498) のFig. 2.(a)(b)を参照
Fig. 2. 
Distribution of the percentage of genes in the leading strand (a) and the ΔGC skew (b) in relation to the existence of a polC orthologue in the genome. 


https://github.com/Geo-omics/scripts/blob/master/NCBITools/gbk2fna.pl
gbk2fna.pl -- Read Genbank to Nucleotide Fasta file.

https://www.ncbi.nlm.nih.gov/pathogens/isolates/#/search/
Isolates Browser - Pathogen Detection - NCBI

----------
## 2019-05-02

### diversity index
多様性指数

https://www.ncbi.nlm.nih.gov/pubmed/21912589
PLoS One. 2011;6(8):e23214. doi: 10.1371/journal.pone.0023214. Epub 2011 Aug 31.
The phylogenetic diversity of metagenomes.
Kembel SW1, Eisen JA, Pollard KS, Green JL.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3166145/
Figure 3
Taxonomic diversity and standardized phylogenetic diversity versus depth in environmental samples along an oceanic depth gradient at the HOT ALOHA site.

https://github.com/haruosuz/evolve/blob/master/README.md#fifthdimension

https://www.fifthdimension.jp/wiki.cgi?page=FrontPage&file=20100522BiometricsJapanPreprint%2Epdf&action=ATTACH
[PDF]ベイジアン MCMC による生物間系統関係の推定法
生物学における系統樹の必要性
そもそも、これまでに「系統的に独立した生物」は確認 されていない。そのため、統計解析上の最も重要な仮定の一つである「サンプル間の独立 性」が生物では成立し得ないことは明白である。ここで、仮に 100 種のトカゲの体色を考 えてみる。草原と砂漠にそれぞれ 50 種生息し、草原に生息する種は緑色と褐色がそれぞ れ 40 種と 10 種、砂漠に生息する種は緑色と褐色がそれぞれ 20 種と 30 種だったとしよ う (表 3)。では、生息環境と体色に関連性はあるだろうか。系統関係を考慮しない研究者
はサンプル間の非独立性には気付かず、Fisher の正確確率検定を用いてしまうかもしれな い。すると、p = 0.00008039 となり、生息環境と体色に関連性を見いだすことになるだ ろう。しかし、仮に表 3 のマス目の各種群が単系統であったならどうだろう。数えるべき は種数ではなく単系統群の数であり、各マス目の数値は 1 ということになる。以上のよう に、系統関係を考慮するかしないかで結論が大きく変化し得ることがわかるだろう。そこ で、系統関係=サンプル間の非依存性を考慮して統計解析を行うことでこのような問題を 解決しようとする手法があり、系統的独立比較法などと呼ばれている (Felsenstein, 1985; Grafen, 1989)。これが系統樹の第 2 の用途である。
系統樹の第 3 の用途は、多様性の定量化である。生物多様性の重要性が叫ばれて久しい が、いまだに多様性は種・属・科などの分類群の数で定量化されている。しかしこれらの 分類群は人間が便宜的に設定したものであり、その数では十分に自然界の多様性を認識 できているとは言い難いと考えられる。これを、系統樹上での生物間のパスの長さの和= 系統的多様性で置き換えることで解決しようという研究が徐々に増えてきている (Faith, 1992; Forest et al., 2007)。

https://github.com/haruosuz/evolve/blob/master/README.md#leeswijzer

2007.3
http://www.naro.affrc.go.jp/archive/niaes/magazine/083/mgzn08304.html
論文の紹介： 生物多様性を進化系統学的な尺度で測る (情報：農業と環境 No.83 2007.3)
系統樹（phylogenetic tree）に基づく「系統学的多様性（PD: phylogenetic diversity）」を提案
旧来の種数ベースの生物多様度に代わる尺度として提唱されたのが系統学的多様度である。しかし、系統学的多様度それ自体に関して、いまなお理論的・概念的な論争が続いている （3）。系統学的多様性の尺度は、系統樹の樹形を考慮しつつ生物多様性の重みづけをしている。提唱者である Daniel P. Faith の定義では （1）、ある生物群の系統学的多様度とは、その生物群を系統樹上で結ぶ枝の長さの総和として求められる。このとき、枝の長さをどのようにして推定するのかという現実的問題がある（分子系統樹と形態系統樹では「枝」の意味は異なっているだろう）。

統計的独立の問題。種間に系統関係があるならば、統計学的にみてデータ点は独立ではあり得ない。（三中信宏「生物系統学」334ページ）
FIG.2.データ点が独立 FIG.3. データ点が非独立
https://www.jstor.org/stable/2461605
Joseph Felsenstein (1985)
Phylogenies and the Comparative Method

http://en.wikipedia.org/wiki/Phylogenetic_comparative_methods
Phylogenetic comparative methods (PCMs) use information on the historical relationships of lineages (phylogenies) to test evolutionary hypotheses.

https://github.com/haruosuz/microbe/blob/master/references/README.MoBE.md
16SリボソームRNA遺伝子配列に基づく細菌の多様性レベルは属間で大きく異なった。
https://www.ncbi.nlm.nih.gov/pubmed/30691394
BMC Genomics. 2019 Jan 28;20(1):92. doi: 10.1186/s12864-018-5389-z.
Comparative genomics of Bacteria commonly identified in the built environment.
Merino N, Zhang S, Tomita M, Suzuki H.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6350394/
The Dmean was also selected over the phylogenetic diversity index (PD) [64, 65] because it is less affected by the number of taxa (N) available in the LTP database, 

https://github.com/haruosuz/plasmids/blob/master/references/README.suzuki.md
プラスミド間の宿主域を比較するために、「細菌の種類」と「細菌間の距離」に基づいて宿主候補の多様性を測定した。先ず、「細菌の種類」（門・綱・目・科・属・種・株などの分類群の数）に基づいて各プラスミドの宿主多様性を測定した。分類群の数は、細菌間の距離を考慮しておらず、宿主候補として検出された菌株の数（利用可能なゲノム配列の偏り）によっても影響され得るという欠点を有する。例えば、プラスミド間の宿主多様性の高低が分類階級により逆転することがある。さらに新種・新属に再分類されている菌株もある。次に、種などの分類学的情報を用いることなく、16S rRNA遺伝子配列に基づく「細菌間の距離」に基づいてプラスミドの宿主多様性を測定した。狭宿主域プラスミドは、広宿主域プラスミドと比較して、宿主候補の多様性が低かった。
https://www.ncbi.nlm.nih.gov/pubmed/20851899
J Bacteriol. 2010 Nov;192(22):6045-55. doi: 10.1128/JB.00277-10. Epub 2010 Sep 17.
Predicting plasmid promiscuity based on genomic signature.
Suzuki H1, Yano H, Brown CJ, Top EM.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2976448/
Second, we inferred plasmid host range based on genetic distance between putative evolutionary hosts without using taxonomic information. “Taxonomic richness” has drawbacks, because it does not take into account distances between bacterial strains and also can be influenced by the number of strains detected as candidate evolutionary hosts, which in turn is biased by the genome sequences available. For example, as shown in Table ​Table1,1, the numbers of classes, orders, families, genera, species, and strains for IncP plasmid pQKH54 were 2, 3, 3, 3, 6, and 11, respectively, while those for IncN plasmid R46 were 1, 1, 1, 13, 17, and 55. Thus, while pQKH54 showed higher taxonomic richness values at the class, order, and family levels, R46 showed higher taxonomic richness values at the genus, species, and strain levels. Moreover, several bacterial strains are still being reclassified into new species and even new genera. Therefore, a method for inferring evolutionary host diversity that does not require a species or any other taxonomic information was conducted.

https://www.ncbi.nlm.nih.gov/pubmed/16535456
Appl Environ Microbiol. 1996 Nov;62(11):4299-301.
Problems in measuring bacterial diversity and a possible solution.
Watve MG, Gangal RM.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC1388994/pdf/hw4299.pdf
Simpson’s
index, the Shannon index, and evenness indices give enough
weighting to the relative abundances along with species richness but fail to take into account the taxonomic distances
between species, individuals, or any other appropriate unit. An
information-based index would treat a community of four different biotypes of coliforms identical to another community
consisting of one species of coliforms, one of actinomycetes,
one of myxobacteria, and one of archaebacteria, whereas we
feel that the latter should be treated as more diverse. 

A simple alternative is to use the mean taxonomic distance (Dmean) between all pairs of isolates as a diversity index (14): 

https://sites.google.com/site/colloqfoundbio/
第12回生物学基礎論研究会の発表「プラスミドの宿主細菌の過去予測と多様性測定」における多様性指数（Dmean）の論文です。
小谷野 仁さんの以下の論文で引用されておりました。

https://www.ism.ac.jp/editsec/toukei/pdf/60-2-263.pdf
統計数理 60(2), 263-278, 2012-12
特集「多様性と進化の統計解析」α 多様性の測定と確率文字列の理論
「代替的な方法の研究として，Watve and Gangal（1996）, Hughes et al.（2001）, Hong et al.（2006）などがあるが，理論的な基礎を持つ体系的な方法とは言えなかった．」

https://www.ncbi.nlm.nih.gov/pubmed/20866445
Phys Rev E Stat Nonlin Soft Matter Phys. 2010 Jun;81(6 Pt 1):061912. Epub 2010 Jun 7.
Quantifying biodiversity and asymptotics for a sequence of random strings.
Koyano H1, Kishino H.
https://journals.aps.org/pre/abstract/10.1103/PhysRevE.81.061912

https://www.nies.go.jp/kanko/news/20/20-1/20-1-06.html
「生物多様性の減少機構と保全プロジェクト」が目指すもの（2001年度 20巻1号）｜
多様性を，それぞれ種類数，均等性，系統的距離で計っていることになる。

![https://www.nies.go.jp/kanko/news/20/20-1/20-1-06.html](https://www.nies.go.jp/kanko/news/20/20-1/gh5r5k000001g6rd-img/20-1-06-f1.jpg)

----------

https://github.com/haruosuz/statistics/blob/master/README.md#distance

### UniFrac
UniFracは、距離計量 distance metric の要件を満たす。

https://en.wikipedia.org/wiki/UniFrac
This definition satisfies the requirements of a distance metric, being non-negative, zero only when entities are identical, transitive, and conformant to the triangle inequality.

https://www.ncbi.nlm.nih.gov/pubmed/20827291
ISME J. 2011 Feb;5(2):169-72. doi: 10.1038/ismej.2010.133. Epub 2010 Sep 9.
UniFrac: an effective distance metric for microbial community comparison.
Lozupone C1, Lladser ME, Knights D, Stombaugh J, Knight R.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3105689/
In this study, we present a mathematical proof that both weighted and unweighted UniFrac values have the formal requirements of a distance metric (Rudin, 1987): they are always non-negative, symmetric and satisfy the triangle inequality, and identical sequence sets have a value of 0 (Supplementary Methods). 

https://www.ncbi.nlm.nih.gov/pubmed/16332807
Appl Environ Microbiol. 2005 Dec;71(12):8228-35.
UniFrac: a new phylogenetic method for comparing microbial communities.
Lozupone C1, Knight R.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC1317376/
UniFrac can be used to compare many samples simultaneously because it satisfies the technical requirements for a distance metric (it is always positive, is transitive, and satisfies the triangle inequality) and can thus be used with standard multivariate statistics such as unweighted-pair group method using average linkages (UPGMA) clustering (9) and principal coordinate analysis (23). Similarly, UniFrac is more powerful than nonphylogenetic distance measures because it exploits the different degrees of similarity between sequences. 

https://twitter.com/level3defless/status/890749455590342658
Koichi Higashi on Twitter: "系統組成をアップロードして類似したサンプルを検索、比較するウェブサーバ。Earth mover's distance的な計算でweighted UniFracを高速に評価できるらしい。 https://t.co/K6RszvQpzR"
9:43 PM - 27 Jul 2017

https://twitter.com/windowmoon/status/783394541067829252
働く窓月 on Twitter: "UniFracを計算しようとして、有根系統樹が必要なことにハマった。というか、ものすごい高次系統で根の位置が決められない…。Phylogenetic Community Dissimilarityなら無根でいいから、こっちにしよう。"
3:53 PM - 4 Oct 2016

https://twitter.com/windowmoon/status/411160508532658176
働く窓月 on Twitter: "そう言えば、種生物でUniFrac使ってる発表(Q大のMTYKさんだったか?)があって、「細菌向けに開発されたものだから何か問題あるのかも」とか書いていたように記憶している。が、対象生物が細菌であることを前提とした方法ではないと思う。問題があるとすれば、系統樹だろう。"
10:47 AM - 12 Dec 2013

https://twitter.com/Tyu_Shi/status/411124035401949184
Tyu_Shi on Twitter: "昨日からの発表を聴いていると、みんなUniFrac Distanceを万能の距離尺度と考えて使っているように感じられるが、あれはUniFrac Distanceを計算する系統樹が問題無いことを前提にしているのだから、その前提の確認無しに信頼しすぎるのはマズいよ。"
8:23 AM - 12 Dec 2013

https://twitter.com/yuifu/status/187741115720548352
Haruka Ozaki on Twitter: "UniFracの元論文。細菌叢の配列集合間の距離を計算する手法。系統樹上で共有する枝長を使い、かつ、距離を定義したことが新しかったらしい。オルタナティブを作ろうとすると、優位性を示す方法がないことが課題。 http://t.co/nZudriEa #Everydayペーパー"
11:19 PM - 4 Apr 2012

----------
## LEfSe
linear discriminant analysis (LDA) effect size (LEfSe) 
線形判別分析（LDA）効果量（LEfSe）

https://www.ncbi.nlm.nih.gov/pubmed/21702898
Genome Biol. 2011 Jun 24;12(6):R60. doi: 10.1186/gb-2011-12-6-r60.
Metagenomic biomarker discovery and explanation.
Segata N1, Izard J, Waldron L, Gevers D, Miropolsky L, Garrett WS, Huttenhower C.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3218848/
LEfSe determines the features (organisms, clades, operational taxonomic units, genes, or functions) most likely to explain differences between classes
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3218848/figure/F6/
(a) Step 1, Kruskal–Wallis
(b) Step 2, Wilcoxon (pairwise comparisons)
(c) Step 3, build a LDA model, effect size

LEfSeのステップ

https://twbattaglia.gitbooks.io/introduction-to-qiime/content/lefse.html
LEfSe · An Introduction to QIIME 1.9.1

LEfSe (Linear discriminant analysis effect size) is a tool developed by the Huttenhower group to find biomarkers between 2 or more groups using relative abundances.

LEfSe uses a table of relative abundances which also includes sample identifiers and group meta data. 

https://picrust.github.io/picrust/tutorials/humann_tutorial.html#differential-abundance-analysis-with-lefse
Differential abundance analysis with LEfSe

2018-04-05
https://www.micenavi.jp/jss118/search/detail_program/id:93
大腸癌患者，健常者それぞれに豊富なOTUをLinear discriminant analysis effect size (LEfSe)法にて選出し，これらを用いて診断モデルを作成した．

http://www.frc.a.u-tokyo.ac.jp/wp-content/uploads/2018/04/JRAreport_web.pdf
汚染試料と非汚染試料における構成細菌の違いを明らかにするために、Linear
discriminant analysis (LDA) effect size (LEfSe) 解析[4]を行いました。LEfSe 解析では
LDA スコアが大きいほど各試料群を特徴付けている細菌といえます。

2017-06-29
https://kaken.nii.ac.jp/file/KAKENHI-PROJECT-15K15774/15K15774seika.pdf
さらに菌種レベルで両群に差異のある細菌を抽出するため、各 OTU の検出リード数に基づいて Linear Discriminant Analysis Effect Size (LEFSe) 解析を行った。

27 April 2017
http://wiki.pitagora-galaxy.org/wiki/index.php/Huttenhower_Lab_Workflows#LEfSe_.28Galaxy.29
LEfSe (Linear discriminant analysis Effect Size) は、クラス間の違いを説明する可能性が最も高い 特徴（生物、クレード、OTU、遺伝子、機能）を決定する。

https://www.pediatricsurgery.site/archive/category/菌叢解析
菌叢解析

2016-10-31
LEfSeを実際にやってみる

2016-10-31
LEfSeをインストールする

https://www.pediatricsurgery.site/entry/2016/10/31/214233
LEfSeを実際にやってみる - Note of Pediatric Surgery

https://www.pediatricsurgery.site/entry/2016/10/31/210537
LEfSeをインストールする - Note of Pediatric Surgery

2013-03-29
https://syodokukai.exblog.jp/18438512/
Linear discriminant analysis (LDA) effect size (LEfSe)法を用いて、RYGB群、SHAM群、WMS群の便サンプルの間で有意に量が変化した細菌種の同定を行った。

----------
## Mash
Mash: fast genome and metagenome distance estimation using MinHash

https://twitter.com/search?q=Mash%3A%20fast%20genome%20and%20metagenome%20distance%20estimation%20using%20MinHash&src=typd

https://twitter.com/aphillippy/status/745254551947714561
Adam Phillippy on Twitter: "Our latest "Mash: fast genome and metagenome distance estimation using MinHash" now published in @GenomeBiology https://t.co/KONRKwjlF8"
9:58 AM - 21 Jun 2016

http://kazumaxneo.hatenablog.com/entry/2018/05/11/180244
MinHashを使い高速にゲノムを比較する MASH - macでインフォマティクス

----------








