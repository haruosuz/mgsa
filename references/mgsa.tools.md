# mgsa.tools

## Table of Contents
- [PhyloPhlAn](#phylophlan)
- [harvest](#harvest)
- [reordering-contigs](#reordering-contigs)
  - [eggnog](#eggnog)
  - [cd-hit](#cd-hit)
  - [usearch](#usearch)
- [USEARCH](#usearch)
- [GSEA](#gsea)
- [qc](#qc)
- [reordering contigs](#reordering-contigs)
- [people](#people)
  - [Holt Lab](#holt-Lab)
  - [kadota](#kadota) 門田　幸二のホームページ
  - [kazumaxneo](#kazumaxneo) macでインフォマティクス
- [jsme2018](#jsme2018) Microbial lifestyle and genome signatures.
- [2018-06](#2018-06)
  - [2018-06-26](#2018-06-26)
  - [2018-06-05](#2018-06-05)
- [replication](#replication)
- [phage](#phage)
- [primer](#primer)
- [genome report](#genome-report)
- [database](#database)
- [assembly](#assembly)
  - [unicycler](#unicycler)
  - [de Bruijn Graph](#de-bruijn-graph)
- [assembly quality](#assembly-quality)
  - [QUAST](#quast)
  - [CheckM](#checkm)
  - [BUSCO](#busco)
- [ANI](#ani) Average Nucleotide Identity
- [Mash](#mash)
- [MinHash](#minhash)
- [Genome alignment](#genome-alignment)
- [lea](#lea)
- [vitcomic](#vitcomic)
- [unclassified](#unclassified)
- [updates](#updates)
- [island](#island)
- [population genetics](#population-genetics)
- [recombination](#recombination)　組み換え
- [maskrc-svg](#maskrc-svg)
- [clonalframeml](#clonalframeml)
- [gubbins](#gubbins)
- [fastGEAR](#fastgear)
- [BAPS](#baps)
- [](#)
- [GWAS](#gwas)
- [](#)
- [](#)
- [temperature](#temperature)
  - [metathermo](#metathermo) メタゲノム温度計
- [codon](#codon) コドンバイアス
- [growth rate](#growth-rate) 増殖速度
- [metadata](#metadata)
  - [source](#source) 分離源
  - [mediadb](#mediadb)
- [](#)

----------


----------
## MicrobeDB
http://microbedb.jp/MDB/

http://wiki.lifesciencedb.jp/mw/SPARQLthon59/MicrobeDB.jp
MicrobeDB.jpポータル開発 - TogoWiki

----------
## LEA

https://github.com/haruosuz/bioinfo/blob/master/2019/CaseStudy.md#lea

https://twitter.com/copypasteusa/status/1171355568440655872
#IIBMP2019 http://leamicrobe.jp
（LEAの使い方・日本語版はこちら）
http://133.39.177.105/lea/help_ja.html

https://twitter.com/level3defless/status/1008994650957332481
Koichi Higashi on Twitter: "論文（やっと）出ました。約3万サンプルの微生物群集構造に関する公共データ（メタ16S、メタゲノム）を対象に自然言語情報と系統の対応関係を調べて、その結果を遊べるようにしたツールです。 #PLOSCompBio: Latent environment allocation of microbial community data https://t.co/YHJSNJVLfx"
4:47 AM - 19 Jun 2018

https://twitter.com/NIG_idenken/status/1008941881051398144
国立遺伝学研究所 on Twitter: "遺伝研の研究成果について、新しい記事を公開しました。 ゲノム進化研究室・黒川研究室 「環境と微生物をビッグデータでつなぐ ～「環境」から微生物を検索し、微生物から「環境」を予測するウェブツール「LEA」を開発～」… "
1:17 AM - 19 Jun 2018

https://www.nig.ac.jp/nig/ja/2018/06/research-highlights_ja/20180619.html
環境と微生物をビッグデータでつなぐ ～「環境」から微生物を検索し、微生物から「環境」を予測するウェブツール「LEA」を開発～

----------
## VITCOMIC
http://vitcomic.org/

https://doi.org/10.7875/togotv.2020.024
2020-01-24 MicrobeDB.jp version 3の活用法 @ 第42回日本分子生物学会年会
2019年12月2-4日に開催された第42回日本分子生物学会年会のフォーラム(チュートリアル企画)「生命科学のデータベース活用法2019」から、国立遺伝学研究所 森 宙史 氏 による「MicrobeDB.jp version 3の活用法」をお送りします。約12分です。

https://doi.org/10.7875/togotv.2019.121
2019-09-18 【How to use1】MicrobeDB.jpの使い方 @ AJACS番町3
目標:公共の微生物のゲノム・メタゲノム解析データ等をMicrobeDB.jpで検索する方法、および、VITCOMIC2、LEA等を用いて、自分の持つマイクロバイオームのアンプリコンシーケンスデータやメタゲノムシーケンスデータから系統組成を推定し、系統組成が似たMicrobeDB.jp上のメタゲノム解析データを検索する方法がわかる。

https://www.nig.ac.jp/nig/ja/2018/06/research-highlights_ja/20180613.html
高速かつ高精度に細菌群集の系統組成を推定するツールVITCOMIC2を開発

https://www.ncbi.nlm.nih.gov/pubmed/29560821
BMC Syst Biol. 2018 Mar 19;12(Suppl 2):30. doi: 10.1186/s12918-018-0545-2.
VITCOMIC2: visualization tool for the phylogenetic composition of microbial communities based on 16S rRNA gene amplicons and metagenomic shotgun sequencing.
Mori H1, Maruyama T2, Yano M2, Yamada T2, Kurokawa K3.

2020年01月15日
https://qiita.com/danryo_official/items/9861f8140b63b3a5c7e9
オススメツール VITCOMIC2


----------

https://www.nig.ac.jp/nig/ja/research-infrastructure-collaboration/methods-lab

・ゲノム進化研究室・黒川研究室
　　メタゲノム配列の遺伝情報から環境温度を予測する技術（メタゲノム温度計)
　　高速かつ高精度に細菌群集の系統組成を推定するツール（VITCOMIC2）
　　「環境」から微生物を検索し、微生物から「環境」を予測するウェブツール（LEA）
　　膨大なメタゲノムデータの相同性検索システム（PZLAST）※理化学研究所との共同開発

・ゲノム多様性研究室・森研究室
　　メタゲノム配列の遺伝情報から環境温度を予測する技術（メタゲノム温度計)
　　膨大なメタゲノムデータの相同性検索システム（PZLAST）※理化学研究所との共同開発


----------
## temperature
optimum growth temperature
最適増殖温度

### 


### 2025-10-24
https://pubmed.ncbi.nlm.nih.gov/41136894/
BMC Genomics
. 2025 Oct 24;26(1):957. doi: 10.1186/s12864-025-12162-z.
Machine learning prediction of bacterial optimal growth temperature from protein domain signatures reveals thermoadaptation mechanisms
Haida Liu # 1, Geyi Zhu # 1, Lijuan Chen 2, Hui Ye 3, Yunhua Zhang 4, Guomin Han 5 6
https://bmcgenomics.biomedcentral.com/articles/10.1186/s12864-025-12162-z
https://pmc.ncbi.nlm.nih.gov/articles/PMC12553261/

### 

Posted May 12, 2025.
https://www.biorxiv.org/content/10.1101/2025.03.03.640802v2.full
Machine learning for optimal growth temperature prediction of prokaryotes using amino acid descriptors | bioRxiv

### 2024-12-29
https://pubmed.ncbi.nlm.nih.gov/39739114/
Commun Biol
. 2024 Dec 29;7(1):1709. doi: 10.1038/s42003-024-07436-3.
Accurately predicting optimal conditions for microorganism proteins through geometric graph learning and language model
Mingming Zhu # 1, Yidong Song # 1, Qianmu Yuan 1 2, Yuedong Yang 3 4
https://www.nature.com/articles/s42003-024-07436-3
https://pmc.ncbi.nlm.nih.gov/articles/PMC11683147/

### metathermo
メタゲノム温度計

http://metathermo.jp/

2023-12-01
https://pubmed.ncbi.nlm.nih.gov/37940329/
DNA Res
. 2023 Dec 1;30(6):dsad024. doi: 10.1093/dnares/dsad024.
Metagenomic Thermometer
Masaomi Kurokawa 1, Koichi Higashi 1 2, Keisuke Yoshida 2, Tomohiko Sato 3, Shigenori Maruyama 3, Hiroshi Mori 1 4 2, Ken Kurokawa 1 2 3
https://academic.oup.com/dnaresearch/article/30/6/dsad024/7368459
https://pmc.ncbi.nlm.nih.gov/articles/PMC10660216/

FIVYWREL values were calculated from the amino-acid fasta files, and Eq. 1 was applied to calculate metagenomic predicted temperature (MPT) instead of calculating OGT. Hereafter, we call this temperature prediction method the Metagenomic Thermometer, for which a web application (written in Python) is freely available at http://metathermo.jp/. Users can upload a fasta or fastq file for shotgun sequencing data and receive a corresponding MPT value.

https://www.nig.ac.jp/nig/ja/2023/11/research-highlights_ja/pr20231122.html
環境温度は微生物群集をどのように規定するか〜環境中の微生物が持つ遺伝情報と環境温度を繋ぐ数理法則を発見〜 | 国立遺伝学研究所

### 2022-05-26
https://pubmed.ncbi.nlm.nih.gov/35460223/
Bioinformatics
. 2022 May 26;38(11):3106-3108. doi: 10.1093/bioinformatics/btac289.
CnnPOGTP: a novel CNN-based predictor for identifying the optimal growth temperatures of prokaryotes using only genomic k-mers distribution
Shaojing Wang 1, Guoqiang Li 1, Zitong Liao 1, Yunke Cao 1, Yuan Yun 1, Zhaoying Su 1, Xuefeng Tian 1, Ziyu Gui 1, Ting Ma 1
https://academic.oup.com/bioinformatics/article/38/11/3106/6572810

### 2022-04-23
### tempura
http://togodb.org/db/tempura

2020
https://pubmed.ncbi.nlm.nih.gov/32727974/
Microbes Environ
. 2020;35(3):ME20074. doi: 10.1264/jsme2.ME20074.
TEMPURA: Database of Growth TEMPeratures of Usual and RAre Prokaryotes
Yu Sato 1, Kenji Okano 1, Hiroyuki Kimura 2 3, Kohsuke Honda 1
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC7511790/
https://www.jstage.jst.go.jp/article/jsme2/35/3/35_ME20074/_html/-char/en

### 2019-09-15

https://pubmed.ncbi.nlm.nih.gov/30689741/
Bioinformatics
. 2019 Sep 15;35(18):3224-3231. doi: 10.1093/bioinformatics/btz059.
Predicting the optimal growth temperatures of prokaryotes using only genome derived features
David B Sauer 1, Da-Neng Wang 1
https://academic.oup.com/bioinformatics/article/35/18/3224/5301315
https://pmc.ncbi.nlm.nih.gov/articles/PMC6748728/
Optimal growth temperatures were predicted by multiple linear regression against the quantitative genomic, tRNA, rRNA, ORF and proteome features. Only those features with an absolute value of r greater than 0.3 were used as predictor variables for multiple linear regression (Supplementary Table S1). 
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6748728/#sup1
btz059_supplementary_data.pdf
Table S1. Correlation of features to OGT. Features with |r| > 0.3 are shown in bold.

### 2007-01-12

https://pubmed.ncbi.nlm.nih.gov/17222055/
PLoS Comput Biol
. 2007 Jan 12;3(1):e5. doi: 10.1371/journal.pcbi.0030005. Epub 2006 Nov 30.
Protein and DNA sequence determinants of thermophilic adaptation
Konstantin B Zeldovich 1, Igor N Berezovsky, Eugene I Shakhnovich
https://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.0030005
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC1769408/


----------

### CSBFinder

Nov 9, 2021
https://github.com/dinasv/CSBFinder
dinasv/CSBFinder: A Java Desktop application with a graphical user interface for the discovery of colinear syntenic blocks across thousands microbial genomes

plasmid_genomes.fasta
Plasmid dataset - 471 prokaryotic genomes with at least one plasmid, chromosomes were removed.
chromosomal_genomes.fasta
Chromosomal dataset - 1,485 prokaryotic genomes with at least one chromosome, plasmids were removed.

https://twitter.com/dina_svet

12:48 AM · Jan 4, 2021
https://twitter.com/dina_svet/status/1345759002676887553
Dina Svetlitsky on Twitter: "Watch my talk from ISMB2020 to learn how the tool CSBFinder-S discovers conserved groups of genes across large datasets microbial genomes, and some possible applications. https://t.co/Z4VWJuf6a1" / Twitter

https://pubmed.ncbi.nlm.nih.gov/30321308/
Bioinformatics
. 2019 May 15;35(10):1634-1643. doi: 10.1093/bioinformatics/bty861.
CSBFinder: discovery of colinear syntenic blocks across thousands of prokaryotic genomes
Dina Svetlitsky 1, Tal Dagan 2, Vered Chalifa-Caspi 3, Michal Ziv-Ukelson 1

https://kazumaxneo.hatenablog.com/entry/2018/10/24/080000
バクテリア間で保存されたシンテシーブロックを探す CSBFinder - macでインフォマティクス
plasmid
２つデータが入っているが、それぞれ、1592バクテリアのCOG (Cluster of Orthologous Genes) を集めたファイルと、933プラスミドのCOGを集めたファイルとなっている。

----------

----------
## database

----------
## metadata

### 2021-07-14

### Refget

https://pubmed.ncbi.nlm.nih.gov/34260694/
Bioinformatics
. 2021 Jul 14;btab524. doi: 10.1093/bioinformatics/btab524. Online ahead of print.
Refget: standardised access to reference sequences
Andrew D Yates 1 2, Jeremy Adams 3 2, Somesh Chaturvedi 1 4, Robert M Davies 2 5, Matthew Laird 1, Rasko Leinonen 1, Rishi Nag 1 2, Nathan C Sheffield 6, Oliver Hofmann 2 7, Thomas M Keane 1 2

https://github.com/ga4gh/large-scale-genomics-wiki/blob/master/refget.md
Refget: access to reference sequences
|
Python code 
|
Getting sequence metadata
|
What does an identifier derived from the sequence mean?

### 2021-06-05

https://github.com/bacteria-archaea-traits

https://github.com/bacteria-archaea-traits/bacteria-archaea-traits

https://pubmed.ncbi.nlm.nih.gov/32503990/
Sci Data
. 2020 Jun 5;7(1):170. doi: 10.1038/s41597-020-0497-4.
A synthesis of bacterial and archaeal phenotypic trait data
Joshua S Madin 1, Daniel A Nielsen 2, Maria Brbic 3 4, Ross Corkrey 5, David Danko 6, Kyle Edwards 7, Martin K M Engqvist 8, Noah Fierer 9, Jemma L Geoghegan 2, Michael Gillings 2, Nikos C Kyrpides 10 11, Elena Litchman 12, Christopher E Mason 6, Lisa Moore 13, Søren L Nielsen 14, Ian T Paulsen 13, Nathan D Price 15, T B K Reddy 10 11, Matthew A Richards 15, Eduardo P C Rocha 16, Thomas M Schmidt 17, Heba Shaaban 6, Maulik Shukla 18, Fran Supek 19 20, Sasha G Tetu 13, Sara Vieira-Silva 21, Alice R Wattam 22, David A Westfall 6, Mark Westoby 2
https://www.nature.com/articles/s41597-020-0497-4
https://www.ncbi.nlm.nih.gov/labs/pmc/articles/PMC7275036/

Fig. 2

Coloured bands represent the presence of traits in the dataset for 14,884 species. In order for the centre outwards, green are habitat traits (isolation source, optimum pH, optimum temperature, growth temperature), blue are organism trait (gram stain, metabolism, metabolic pathways, carbon substrate, sporulation, motility, doubling time, cell shape, any cell diameter), and red are genomic traits (genome size, GC content, coding genes, rRNA16S genes, tRNA genes).


Online-only Table 2

Isolation source

Condense traits

Isolation source or habitat information for prokaryotes follows different schemes in different data sources, and often is unstructured, consisting of a string of words or sentences.


Code availability
The complete data workflow was scripted in the programming language R (https://www.R-project.org) and instructions for generating the merged data sets accompanying this data descriptor can be found at GitHub (https://github.com/bacteria-archaea-traits/bacteria-archaea-traits/releases/tag/v1.0.0).



4:09 PM · Jun 11, 2020
https://twitter.com/epcrocha/status/1270976361172213760
Eduardo Rocha on Twitter: "Studies on microbial evolution are hampered by the availability of systematic data. Here's a synthesis led by @jmadin of bacterial and archaeal phenotypic trait data. Proud to be part of it. Paper https://t.co/wF3fNAtLNf Data https://t.co/K8CUyDHfpR Blog https://t.co/QDZzeNdk7n https://t.co/JGK2XW7Wxy" / Twitter

6:09 AM · Jun 11, 2020
https://twitter.com/mason_lab/status/1270825374306443264
Chris Mason on Twitter: "Merging all the microbial annotation we can find into one spot! Our new paper: "A synthesis of bacterial and archaeal phenotypic trait data" https://t.co/EjfNZ20iJi from in @ScientificData" / Twitter



### 2019-02-22

https://pubmed.ncbi.nlm.nih.gov/30853946/
Review Front Microbiol
. 2019 Feb 22;10:208. doi: 10.3389/fmicb.2019.00208. eCollection 2019.
A Comparison of Microbial Genome Web Portals
Peter D Karp 1, Natalia Ivanova 2, Markus Krummenacker 1, Nikos Kyrpides 2, Mario Latendresse 1, Peter Midford 1, Wai Kit Ong 1, Suzanne Paley 1, Rekha Seshadri 2
https://www.frontiersin.org/articles/10.3389/fmicb.2019.00208/full
https://www.ncbi.nlm.nih.gov/labs/pmc/articles/PMC6395428/

### proGenomes2

http://progenomes.embl.de/
proGenomes Database v2

https://academic.oup.com/nar/advance-article/doi/10.1093/nar/gkz1002/5606617
proGenomes2: an improved database for accurate and consistent habitat, taxonomic and functional annotations of prokaryotic genomes

Habitat information
three broad (soil-associated, aquatic, host-associated) and additionally five more specific categories (mud/sediment, freshwater, disease-associated, food-associated)


### protraits
http://protraits.irb.hr/
https://www.ncbi.nlm.nih.gov/pubmed/27915291
Nucleic Acids Res. 2016 Dec 1;44(21):10074-10090. Epub 2016 Oct 24.
The landscape of microbial phenotypic traits and associated genes.
Brbić M1, Piškorec M1, Vidulin V1, Kriško A2, Šmuc T1, Supek F3,4,5.

https://www.ncbi.nlm.nih.gov/pubmed/26538122
J Mol Evol. 2016 Jan;82(1):65-73. doi: 10.1007/s00239-015-9714-8. Epub 2015 Nov 4.
The Code of Silence: Widespread Associations Between Synonymous Codon Biases and Gene Function.
Supek F1,2,3.
https://link.springer.com/article/10.1007%2Fs00239-015-9714-8
Regarding prokaryote genomics—databases with microbial phenotypes are scarce, with some annotation provided by GOLD (Reddy et al. 2015) and BacMap (Cruz et al. 2011). We have thus developed a database named ProTraits (Brbić et al. unpublished; http://protraits.irb.hr/) which contains millions of phenotype annotations for ~3000 prokaryotic taxa, inferred by text mining of scientific literature, while requiring independent validation in genomic data.

### BacDive

https://bacdive.dsmz.de/
BacDive | The Bacterial Diversity Metadatabase

https://bacdive.dsmz.de/tutorials
Tutorials | BacDive

https://twitter.com/BacDive
BacDive (@BacDive) | Twitter

https://academic.oup.com/nar/advance-article/doi/10.1093/nar/gkab961/6414049
BacDive in 2022: the knowledge base for standardized bacterial and archaeal data

isolation source

https://twitter.com/BacDive/status/1103238138816839680
BacDive on Twitter: "Out now: Our new, powerful isolation source search is online. Filter & analyse bacterial strains based on their isolation source tags. Plot them on the world map or show the distribution within a Krona Plot. https://t.co/QQe6pSFZPJ #bacteria #isolationsource #microorganisms… https://t.co/5URfQNeM6S"
5:17 AM - 6 Mar 2019

https://twitter.com/BacDive/status/1095559495651115009
BacDive on Twitter: "Find here an interesting example how @BacDive data can be used to correlate microbial growth temperatues with temperature optima of enzymes: https://t.co/XWenohoc5W #biodiversity #bacteria #microbiology"
12:45 AM - 13 Feb 2019

2013年9月現在、細菌23,458菌株のメタ情報（分類群、培養条件、分離場所、配列データ）を含む
https://www.ncbi.nlm.nih.gov/pubmed/24214959
Nucleic Acids Res. 2014 Jan;42(Database issue):D592-9. doi: 10.1093/nar/gkt1058. Epub 2013 Nov 7.
BacDive--the Bacterial Diversity Metadatabase.
Söhngen C1, Bunk B, Podstawka A, Gleim D, Overmann J.

```
https://bacdive.dsmz.de/search?search=Shewanella&submit=

https://bacdive.dsmz.de/strain/14068
Shewanella denitrificans OS217 | Type strain | DSM 15013, LMG 21692 | BacDiveID:14068
[Ref.: #39951]	Temperature range	mesophilic
Isolation, sampling and environmental information
	Isolation sources categories	
#Environmental	#Aquatic	   -   

https://bacdive.dsmz.de/strain/134647
Shewanella livingstonensis | Type strain | CIP 107390, CECT 5933, LMG 19866 | BacDiveID:134647
[Ref.: #33120]	Temperature range	psychrophilic	
Isolation, sampling and environmental information

https://bacdive.dsmz.de/strain/134207
Shewanella piezotolerans WP3 | Type strain | JCM 13877, CGMCC1.6160 | BacDiveID:134207
[Ref.: #31844]	Oxygen tolerance	facultative anaerobe	
Culture and growth conditions
[Ref.: #31844]	Temperature range	psychrophilic
Isolation, sampling and environmental information
[Ref.: #31844]	Sample type/isolated from	marine sediment
```

http://kazumaxneo.hatenablog.com/entry/2019/07/06/073000
バクテリアの表現型情報データベース BacDive - macでインフォマティクス

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

### BV-BRC
https://www.bv-brc.org/
Bacterial and Viral Bioinformatics Resource Center | BV-BRC

11:01 PM · Sep 30, 2022
https://x.com/PATRICBRC/status/1575848216980955136
PATRICBRC on X: "New paper by Sharp and Foster used data that they got from PATRIC in their analysis. https://t.co/aJ9FqSdH1F" / X
https://pmc.ncbi.nlm.nih.gov/articles/PMC9218092/
Host control and the evolution of cooperation in host microbiomes - PMC

9:08 PM · Sep 15, 2022
https://x.com/PATRICBRC/status/1570383936345493505
PATRICBRC on X: "It's official! PATRIC is now BV-BRC. The new site includes more tools, faster loads, improved downloads, and more data. Check it out! https://t.co/1SNqoOkhSt" / X


### GOLD
Genomes OnLine Database

https://gold.jgi.doe.gov/
```
Biosamples
Classification
Ecosystems
   Host-associated 74,470
   Engineered 13,727
   Environmental 59,735
```

https://gold.jgi.doe.gov/downloads
```
Public Studies/Biosamples/SPs/APs/Organisms Excel Last generated: 16 Oct, 2024

goldData.xlsx
Biosample
BIOSAMPLE SAMPLE COLLECTION DATE
```

https://www.ncbi.nlm.nih.gov/pubmed/27794040
Nucleic Acids Res. 2017 Jan 4;45(D1):D446-D456. doi: 10.1093/nar/gkw992. Epub 2016 Oct 27.
Genomes OnLine Database (GOLD) v.6: data updates and feature enhancements.

### NCBI
https://www.ncbi.nlm.nih.gov/genome/167
Escherichia coli

	Escherichia coli str. K-12 substr. MG1655
	Submitter: Univ. Wisconsin
	Morphology: Gram:Negative, Shape:Bacilli, Motility:Yes
	Environment: OxygenReq:Facultative, OptimumTemperature:37, TemperatureRange:Mesophilic, Habitat:HostAssociated

### microbe-directory

https://www.biorxiv.org/content/10.1101/2019.12.20.860569v1
The Microbe Directory v2.0: An Expanded Database of Ecological and Phenotypical Features of Microbes. | bioRxiv
https://www.biorxiv.org/content/10.1101/2019.12.20.860569v1.full.pdf
Data Availability and Contribution
A web interface for the Microbe Directory may be found at https://microbe.directory. Source code
for collating and cleaning tables along with a CSV spreadsheet version of the database may be found at
the GitHub repository https://github.com/dcdanko/MD2. 

- https://microbe.directory
- https://github.com/dcdanko/MD2


https://github.com/microbe-directory/microbe-directory
```
wget https://raw.githubusercontent.com/microbe-directory/microbe-directory/master/data/microbe-directory.csv
```
https://www.ncbi.nlm.nih.gov/pubmed/29630066
Gates Open Res. 2018 Jan 5;2:3. doi: 10.12688/gatesopenres.12772.1.
The Microbe Directory: An annotated, searchable inventory of microbes' characteristics.
Shaaban H#1,2,3, Westfall DA#1,2,4, Mohammad R1,2,5, Danko D1,2, Bezdan D1,2, Afshinnekoo E1,2,6, Segata N7, Mason CE1,2,8.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5883067/
- Such characteristics include, but are not limited to: optimal pH, optimal temperature, Gram stain, biofilm-formation, spore-formation, antimicrobial resistance, and COGEM class risk rating. 
- Several databases were used to collect this information, including COGEM, MicrobeWiki, BacMap, ATCC, PATRIC, ARDB, GOLD, HOMD, and BEI Resources (see Annotation Tutorial and Guidelines and Links in Supplementary File 1). 
https://gatesopenresearch.org/articles/2-3/v1

https://www.ncbi.nlm.nih.gov/pubmed/28776041
mSphere. 2017 Aug 2;2(4). pii: e00237-17. doi: 10.1128/mSphere.00237-17. eCollection 2017 Jul-Aug.
Hiding in Plain Sight: Mining Bacterial Species Records for Phenotypic Trait Information.
Barberán A1, Caceres Velazquez H2, Jones S2, Fierer N3,4.
https://doi.org/10.6084/m9.figshare.4272392

https://github.com/haruosuz/mgsa/tree/master/traitar
https://www.ncbi.nlm.nih.gov/pubmed/28066816
mSystems. 2016 Dec 27;1(6). pii: e00101-16. doi: 10.1128/mSystems.00101-16. eCollection 2016 Nov-Dec.
From Genomes to Phenotypes: Traitar, the Microbial Trait Analyzer.
Weimann A1, Mooren K2, Frank J3, Pope PB3, Bremges A4, McHardy AC1.
Traitar provides phenotype classifiers to predict 67 traits related to the use of various substrates as carbon and energy sources, oxygen requirement, morphology, antibiotic susceptibility, proteolysis, and enzymatic activities.

### MediaDB
https://www.ncbi.nlm.nih.gov/pubmed/25098325
PLoS One. 2014 Aug 6;9(8):e103548. doi: 10.1371/journal.pone.0103548. eCollection 2014.
MediaDB: a database of microbial growth conditions in defined media.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4123892/
Growth Data
- The Growth_Data table links the tables describing an organism, medium, and literature source, and adds information about temperature, pH, growth rate, product secretion rates, and nutrient uptake rates (whenever reported in the literature source). MediaDB currently contains 765 growth conditions.
- In many instances, we found rate data associated with a particular growth condition in the form of an experimentally-measured growth rate (μ) measured in h −1.

https://mediadb.systemsbiology.net
Defined Media Database

```
https://mediadb.systemsbiology.net/defined_media/growthdata/
Media database: GrowthData

https://mediadb.systemsbiology.net/defined_media/growthdata/page/5
Geobacter metallireducens - on Defined freshwater medium (coso4) + 50 mm iron citrate + 113.2 mm acetate
Geobacter sulfurreducens - on Fwafc

https://mediadb.systemsbiology.net/defined_media/growthdata/3/
Growth Data: Geobacter sulfurreducens - on Fwafc
Growth Rate:	0.06 (1/h)

https://mediadb.systemsbiology.net/defined_media/growthdata/page/7
Shewanella oneidensis MR-1 on Minimal medium (tang et al 2009)

https://mediadb.systemsbiology.net/defined_media/growthdata/374/
Growth Data: Shewanella oneidensis MR-1 on Minimal medium (tang et al 2009)
Growth Rate:	0.26609 (1/h)
```


----------


### source
分離源

https://www.ncbi.nlm.nih.gov/pubmed/30910818
G3 (Bethesda). 2019 Mar 25. pii: g3.200978.2018. doi: 10.1534/g3.118.200978. [Epub ahead of print]
Genomic Analysis of Pseudomonas sp. Strain SCT, an Iodate-Reducing Bacterium Isolated from Marine Sediment, Reveals a Possible Use for Bioremediation.
Harada M, Ito K, Nakajima N, Yamamura S, Tomita M, Suzuki H, Amachi S.
https://www.g3journal.org/content/9/5/1321.long#T1
Table 1. Genomic features of Pseudomonas strains analyzed
Isolation source

https://www.ncbi.nlm.nih.gov/pubmed/24625962
Genome Biol Evol. 2014 Apr;6(4):741-53. doi: 10.1093/gbe/evu048.
Phylogenomics and the dynamic genome evolution of the genus Streptococcus.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4007547/table/evu048-T1/
Table 1
Genome Sequence Details
Source

https://www.ncbi.nlm.nih.gov/pubmed/24488312
J Bacteriol. 2014 Apr;196(7):1458-70. doi: 10.1128/JB.01439-13. Epub 2014 Jan 31.
Comparative functional genomics of Lactobacillus spp. reveals possible mechanisms for specialization of vaginal lactobacilli to their environment.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3993339/table/T1/
TABLE 1
Genomic characteristics of the strains analyzed in this study
Source

https://www.ncbi.nlm.nih.gov/pubmed/25107967
Appl Environ Microbiol. 2014 Oct;80(20):6383-94. doi: 10.1128/AEM.02004-14. Epub 2014 Aug 8.
Investigation of the evolutionary development of the genus Bifidobacterium by comparative genomics.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4178631/table/T1/
TABLE 1
Bifidobacterium genome list
Source of isolation

https://www.ncbi.nlm.nih.gov/pubmed/24581150
BMC Genomics. 2014 Mar 1;15:170. doi: 10.1186/1471-2164-15-170.
Comparative genomics of the Bifidobacterium breve taxon.
http://www.ncbi.nlm.nih.gov/pmc/articles/PMC4007704/table/Tab1/
Table 1
List of Bifidobacterium breve representatives
Ecological origin

https://www.ncbi.nlm.nih.gov/pubmed/22031452
Microb Ecol. 2012 Apr;63(3):651-73. doi: 10.1007/s00248-011-9948-y. Epub 2011 Oct 27.
Comparative genomics of Bifidobacterium, Lactobacillus and related probiotic genera.
http://www.ncbi.nlm.nih.gov/pmc/articles/PMC3324989/table/Tab1/
Table 1
Genomes selected for analysis
Strain characteristics

----------
### codon

https://github.com/haruosuz/codon

### S value

https://www.ncbi.nlm.nih.gov/pubmed/27540085
Genome Biol Evol. 2017 Oct 1;9(10):2560-2579. doi: 10.1093/gbe/evw201.
Switches in Genomic GC Content Drive Shifts of Optimal Codons under Sustained Selection on Synonymous Sites.
Sun Y1, Tamarit D1, Andersson SGE1.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5629928/
- Materials and Methods
- The strength of selected codon usage bias was estimated from the S index, which is used as a proxy for translational selection on individual genomes (Sharp et
al. 2005, 2010). 
- Results
Switches in GC Content in Lactobacillus and Bifidobacterium Species
- fig. 2.—
Phylogenetic relationships and genome features of Lactobacillus species.
A schematic figure illustrates the variation in GC contents, selective constraints (S-value), genome sizes and number of tRNAs in the species selected for an in-depth analysis.
- In order to quantify the relative strength of selection, we calculated the S indexes for the genomes in this study (supplementary table S2, Supplementary Material online). The S index is inferred from the relative use of C-ending codons for Asn, Ile, Phe, Tyr (Sharp et
al. 2005), 

https://github.com/haruosuz/codon/blob/master/README.md#rocha

https://pubmed.ncbi.nlm.nih.gov/20090831/
PLoS Genet
. 2010 Jan 15;6(1):e1000808. doi: 10.1371/journal.pgen.1000808.
The systemic imprint of growth and its uses in ecological (meta)genomics
Sara Vieira-Silva 1, Eduardo P C Rocha
https://journals.plos.org/plosgenetics/article?id=10.1371/journal.pgen.1000808
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2797632/
- S is also an estimator of the strength of selection acting on codon usage bias, but based on the mutation-selection balance between pairs of codons, where one is fitter. Following Sharp, we compute S using the frequency of codons for four amino acids: Phe (C1 = UUC, C2 = UUU), Ile (C1 = AUC, C2 = AUU), Tyr (C1 = UAC, C2 = UAU), Asn (C1 = AAC, C2 = AAU).

https://www.ncbi.nlm.nih.gov/pubmed/15728743
Nucleic Acids Res. 2005 Feb 23;33(4):1141-53. Print 2005.
Variation in the strength of selected codon usage bias among bacteria.
Sharp PM1, Bailes E, Grocock RJ, Peden JF, Sockett RE.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC549432/
- These results are consistent with the hypothesis that species exposed to selection for rapid growth have more rRNA operons, more tRNA genes and more strongly selected codon usage bias. For example, Clostridium perfringens, the species with the highest value of S, can have a generation time as short as 7 min.
- Estimation of S
To represent genes under the weakest selection, the codon usage of the entire genome was used, on the assumption that the number of genes expressed at high levels is a very small fraction of the genome as a whole. To represent genes where codon usage would be expected to be subject to strong translational selection, codon usage was summed across a set of 40 genes expected to be expressed constitutively at very high levels. 

https://github.com/haruosuz/codon/blob/master/README.md#sharp

https://github.com/haruosuz/codon/blob/master/README.md#suzuki

人工環境で同定された細菌のゲノムの特徴（ゲノムサイズ、GC含量、DNA複製鎖間の非対称度、コドン使用バイアス）
https://www.ncbi.nlm.nih.gov/pubmed/30691394
BMC Genomics. 2019 Jan 28;20(1):92. doi: 10.1186/s12864-018-5389-z.
Comparative genomics of Bacteria commonly identified in the built environment.
Merino N1,2, Zhang S3,4, Tomita M5,6, Suzuki H7,8.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6350394/
- Case study: Mycobacterium
For example, M. tuberculosis and M. leprae have S values in the lower range (0.36–0.45) and also have slow generation times of ~ 1 and 14 d, respectively [87, 98, 99]. In comparison, one of the highest S values (1.3) corresponded to M. abscessus, which has a generation time of 4–5 h [100].
- Strength of selected codon usage bias (S value)
As a measure of translationally selected codon usage bias, the S value was calculated for each chromosome, as described in Sharp and co-workers [87] and Vieira-Silva and Rocha [89], using the codon usage for four amino acids, Phe (TTC and TTT), Tyr (TAC and TAT), Ile (ATC and ATT), and Asn (AAC and AAT). The two codons are recognized by the same tRNA species, and the C-ending codon is recognized more efficiently than T-ending codon. The S value is based on a comparison of codon usage within these synonymous groups between constitutively highly expressed genes (those encoding ribosomal proteins and translation elongation factors) and the entire genome [87, 89].

葉緑体のコドン適応
http://www.ncbi.nlm.nih.gov/pubmed/27196606
PLoS One. 2016 May 19;11(5):e0154306.
Codon Adaptation of Plastid Genes.
Suzuki H, Morton BR.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4873144/
- The strength of selection for codon adaptation (S)
Following [7] and [26], an S value was calculated for each plastid genome using the codon frequencies for four amino acids, Phe (Ca = TTC and Cs = TTT), Tyr (Ca = TAC and Cs = TAT), Ile (Ca = ATC and Cs = ATT), and Asn (Ca = AAC and Cs = AAT), where the two codons (Cs and Ca) are recognized by the same tRNA species but Ca is recognized more efficiently. The S is based on a comparison of codon frequencies within these synonymous groups between high expression genes and all other genes ([7] and [26]). 

----------
### growth rate
増殖速度

https://search.lib.keio.ac.jp/permalink/81SOKEI_KEIO/fb8nrm/alma9926457313604034
Processes in microbial ecology
Kirchman, David L., author.
Oxford : Oxford University Press, [ 2018]
Second edition.
https://academic.oup.com/book/26784
Processes in Microbial Ecology (2nd edn)
David L. Kirchman
- 5 Genomes and meta-omics for microbes
  - Genomes and growth strategies for bacteria
    - Specific genomic features and growth

2016/09
https://www.kyoto-up.or.jp/books/9784814000470.html
微生物生態学
ゲノム解析からエコシステムまで
デイビッド・Ｌ・カーチマン／永田 俊 訳
Chapter 6　微生物の増殖、現存量、生産、および、それらの支配要因
p.206: 自然界での増殖と生産の測定
表6.2　細菌の増殖速度や生産速度を測定するために提案された方法

### gRodon
https://github.com/haruosuz/r4bioinfo/blob/master/R_codon/README.md#grodon

### 2021-05-26
https://pubmed.ncbi.nlm.nih.gov/34039416/
Microbiome
. 2021 May 26;9(1):112. doi: 10.1186/s40168-021-01044-7.
Characterization of the public transit air microbiome and resistome reveals geographical specificity
M H Y Leung # 1, X Tong # 1, K O Bøifot # 2 3, D Bezdan 4, D J Butler 4, D C Danko 4, J Gohli 2, D C Green 3, M T Hernandez 5, F J Kelly 3, S Levy 6, G Mason-Buck 3, M Nieto-Caballero 5, D Syndercombe-Court 3, K Udekwu 7, B G Young 4, C E Mason 8 9 10 11, M Dybwad 12 13, P K H Lee 14
https://microbiomejournal.biomedcentral.com/articles/10.1186/s40168-021-01044-7
https://www.ncbi.nlm.nih.gov/labs/pmc/articles/PMC8157753/
Community- and subspecies-level in situ growth rate inference
Growth Rate InDex (GRiD), a growth rate estimation method based on coverage ratios between ori and ter regions [28], was used to infer bacterial growth within the public transit air community.

### 2020-02
https://pubmed.ncbi.nlm.nih.gov/31712737/
ISME J
. 2020 Feb;14(2):597-608. doi: 10.1038/s41396-019-0552-3. Epub 2019 Nov 11.
Unlinked rRNA genes are widespread among bacteria and archaea
Tess E Brewer 1 2, Mads Albertsen 3, Arwyn Edwards 4, Rasmus H Kirkegaard 3, Eduardo P C Rocha 5, Noah Fierer 6 7
https://www.nature.com/articles/s41396-019-0552-3
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6976660/
To determine if taxa with unlinked rRNA genes have a lower predicted growth rate, we calculated the codon usage proxy ΔENC′ [33, 34], which provides an estimate of minimum generation times [35].

Fig. 5
c Genomes with unlinked rRNA genes are predicted to have longer average generation times (phyloglm p = 0.028, means of groups: 0.23 linked, 0.18 unlinked; as a reference E. coli has an average ΔENC′ of 0.3).

We also calculated ΔENC′ for each complete genome—a measure of codon usage bias that is negatively correlated with minimum generation time in bacteria and archaea [35].


2019年12月23日
https://qiita.com/nkjmu/items/3572c8883d8802c3edd5
【論文紹介】メタゲノムでやってよかったよね感が出た面白い結果 - Qiita

### 2020-01
https://pubmed.ncbi.nlm.nih.gov/32939027/
ISME J
. 2021 Jan;15(1):183-195. doi: 10.1038/s41396-020-00773-1. Epub 2020 Sep 16.
Benchmarking microbial growth rate predictions from metagenomes
Andrew M Long # 1, Shengwei Hou # 2, J Cesar Ignacio-Espinoza 2, Jed A Fuhrman 2
https://www.nature.com/articles/s41396-020-00773-1
https://www.ncbi.nlm.nih.gov/labs/pmc/articles/PMC7852909/
Abstract
Growth rates are central to understanding microbial interactions and community dynamics. Metagenomic growth estimators have been developed, specifically codon usage bias (CUB) for maximum growth rates and “peak-to-trough ratio” (PTR) for in situ rates. 

PTR, calculated by three methods, rarely correlated to growth (r ~−0.26–0.08), except for rapidly growing γ-Proteobacteria (r ~0.63–0.92), while CUB correlated moderately well to observed maximum growth rates (r = 0.57). This suggests that current PTR approaches poorly predict actual growth of most marine bacterial populations, but maximum growth rates can be approximated from genomic characteristics.

Introduction

To address this problem, multiple methods modified the original PTR approach for use with incomplete genomes and MAGs. The first (iRep) was by Brown et al. [5], followed with a version for MAGs with low coverage (GRiD) by Emoila and Oh [6], and for MAGs with low coverage, low genomic completion, and high genomic redundancy (DEMIC) by Gao and Li [7].

Materials and methods

Growth rate indices: codon usage bias and peak-to-trough ratio
The maximum growth rate of each MAG was predicted using a customized growthpred v1.0.8 (available at https://hub.docker.com/r/shengwei/growthpred) in metagenome mode (-m) and with universal codons (-c 0). Blast-retrieved ribosomal protein sequences were used as the highly expressed genes (-b) and compared to all the coding sequences of each MAG (-g).

#### 2019

03 May 2019
https://www.nature.com/articles/s41396-019-0422-z
Predictive genomic traits for bacterial growth in culture versus actual growth in soil | The ISME Journal

https://twitter.com/MattagenOlmics/status/1100465734046498816
Matt Olm on Twitter: "(https://t.co/uHTZlq8Mf7), secondary metabolite gene clusters using antismash (https://t.co/nQrEixuomA), BoNTs using BoNTbase (https://t.co/QEOvEieBC3), and metabolisms using KEGG modules (https://t.co/7d6QwbVOQI). Growth rates of bacteria were calculated using iRep (5/7)"
1:40 PM - 26 Feb 2019

https://twitter.com/_biogeek/status/1098660591009357824
Dr Ashish Malik on Twitter: "Two cool papers just out shedding light on "extremely" slow growing bacteria: Extreme slow growth as alternative strategy to survive deep starvation https://t.co/EzNmWhQZAF Quantifying population-specific growth in benthic communities under low oxygen https://t.co/x5g2rycDy9"
2:07 PM - 21 Feb 2019

非胞子形成状態の枯草菌が飢餓状態（純水中）で数カ月生存可能。様々なストレス（抗生物質）に耐性、定常期と異なるトランスクリプトーム・プロファイルを示す。倍加時間4日。一万倍希釈LB培地。低栄養増殖状態（oligotrophic growth state）と命名。
https://www.ncbi.nlm.nih.gov/pubmed/30792386
Nat Commun. 2019 Feb 21;10(1):890. doi: 10.1038/s41467-019-08719-8.
Extreme slow growth as alternative strategy to survive deep starvation in bacteria.
Gray DA1, Dugar G2, Gamba P1, Strahl H1, Jonker MJ3, Hamoen LW4.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6385201/

https://twitter.com/MicrobiomDigest/status/1090641480144711681
Elisabeth Bik on Twitter: "Metagenome – Inferred bacterial replication rates in cystic fibrosis airways https://t.co/9mBQ5cyllD Note: this sounds similar to the iRep algorithm developed by @BanfieldLab but paywalled, so not sure.… https://t.co/XIlg0NuO3O"
11:02 AM - 30 Jan 2019

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

https://twitter.com/strnr/status/1093467959182397440
Stephen Turner on Twitter: "High throughput in situ metagenomic measurement of bacterial replication at ultra-low sequencing coverage https://t.co/ahZHseQwIA… https://t.co/bBbvOgfElw"
6:14 AM - 7 Feb 2019

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

#### 2015

https://www.ncbi.nlm.nih.gov/pubmed/26229116
Science. 2015 Sep 4;349(6252):1101-1106. doi: 10.1126/science.aac4812. Epub 2015 Jul 30.
Growth dynamics of gut microbiota in health and disease inferred from single metagenomic samples.

https://www.ncbi.nlm.nih.gov/pubmed/26013493
J Bacteriol. 2015 Aug 1;197(15):2458-67. doi: 10.1128/JB.00330-15. Epub 2015 May 26.
Databases for Microbiologists.
Zhulin IB1.


----------
### GWAS

- [Genome-wide association study (GWAS)](https://en.wikipedia.org/wiki/Genome-wide_association_study)
- [ゲノムワイド関連解析](https://bsd.neuroinf.jp/wiki/ゲノムワイド関連解析)
- [[PDF]次世代GWAS研究 - イルミナ株式会社](https://jp.illumina.com/content/dam/illumina-marketing/apac/japan/documents/pdf/primer_next_generation_gwas_research-j.pdf)




https://pubmed.ncbi.nlm.nih.gov/33206035/
Microb Genom
. 2020 Nov;6(11):mgen000469. doi: 10.1099/mgen.0.000469.
Hogwash: three methods for genome-wide association studies in bacteria
Katie Saund 1, Evan S Snitkin 1 2
https://www.microbiologyresearch.org/content/journal/mgen/10.1099/mgen.0.000469#tab2
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC7725327/
This work introduces hogwash, an open source R package that implements three algorithms for convergence-based bGWAS. 

bGWAS software
Several different variations of bGWAS approaches have been applied, including methods for SNPs, accessory genes (Scory) [6], or k-mers (pyseer) [7], methods using regression (pyseer) [7, 8] or phylogenetic convergence (PhyC, treeWAS) [1, 9], and methods designed for humans (PLINK) [10] or specifically for bacteria [7, 9]. 


https://pubmed.ncbi.nlm.nih.gov/32082269/
Review Front Microbiol
. 2020 Jan 30;10:3119. doi: 10.3389/fmicb.2019.03119. eCollection 2019.
Current Affairs of Microbial Genome-Wide Association Studies: Approaches, Bottlenecks and Analytical Pitfalls
James Emmanuel San 1, Shakuntala Baichoo 2, Aquillah Kanzi 1, Yumna Moosa 1, Richard Lessells 1, Vagner Fonseca 1 3, John Mogaka 4, Robert Power 5, Tulio de Oliveira 1 6
https://www.frontiersin.org/articles/10.3389/fmicb.2019.03119/full
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC7002396/
TABLE 1
Summary of details of prominent and promising bioinformatics tools and pipelines available for microbial GWAS.

Scoary
k-mers

R package



May 25, 2019
https://twitter.com/copypasteusa/status/1132087168388571136
細菌間で保存されたゲノム領域core genomeを得る方法として、Roaryで得た保存「遺伝子」conserved-geneに比べ、k-mer（31連続塩基）頻度に基づいて得た保存「配列」conserved-sequenceは、同一患者サンプルの同定精度が高い（図4）。
https://pubmed.ncbi.nlm.nih.gov/31127153/
Sci Rep
. 2019 May 24;9(1):7808. doi: 10.1038/s41598-019-44189-0.
A core genome approach that enables prospective and dynamic monitoring of infectious outbreaks
Helen van Aggelen 1, Raivo Kolde 2, Hareesh Chamarthi 2, Joshua Loving 2, Yu Fan 2, John T Fallon 3rd 3 4, Weihua Huang 3, Guiqing Wang 4, Mary M Fortunato-Habib 5, Juan J Carmona 5, Brian D Gross 5
https://www.nature.com/articles/s41598-019-44189-0
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6534532/



http://www.aeplan.co.jp/sgmj2017/pdf/program_neminar.pdf
≪バイオインフォマティクス≫ 11:06~11:54
3O1-09
ゲノムワイド関連解析による水平伝達に由来しカルバペネム耐性株に広く保存された
細胞表面接着因子の発見
○矢原耕史、鈴木 仁人、柴山 恵吾
国立感染症研究所細菌第二部

https://pubmed.ncbi.nlm.nih.gov/27892531/
Sci Rep
. 2016 Nov 28;6:37811. doi: 10.1038/srep37811.
A genome-wide association study identifies a horizontally transferred bacterial surface adhesin gene associated with antimicrobial resistant strains
Masato Suzuki 1, Keigo Shibayama 1, Koji Yahara 1
https://www.nature.com/articles/srep37811
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5124939/
We took a kmer-based approach12,13, in which the genome sequence of each isolate was fragmented into unique, overlapping, 31-bp DNA motifs or kmers, that could be used to identify any kind of genetic variation such as single nucleotide polymorphisms (SNPs), indels, and the presence or absence of a whole gene or gene region.

12
Sheppard S. K. et al.. Genome-wide association study identifies vitamin B5 biosynthesis as a host specificity factor in Campylobacter. Proc. Natl. Acad. Sci. USA 110, 11923–11927 (2013). [PMC free article] [PubMed] [Google Scholar]
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3718156/

13
Earle S. G. et al.. Identifying lineage effects when controlling for population structure improves power in bacterial association studies. Nature Microbiology 1, Article number: 16041 (2016). [PMC free article] [PubMed] [Google Scholar]
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5049680/
For example, we investigated associations between fusidic acid resistance and the presence or absence of short 31 bp haplotypes or ‘kmers’ in S. aureus (see Methods and Supplementary Fig. 2). 
31 bp kmers.



https://twitter.com/The_Microbiome/status/1099955581140508672
The Microbiome on Twitter: "A new workflow able to integrate #GWAS, #microbiome and #metabolic results to obtain causal inferences about #diabetes and the #SCFA #butyrate and #propionate. @NatureGenet The Microbiome Portal: https://t.co/ZnYwPAYxZC… https://t.co/YWAKHSJZwY"
3:53 AM - 25 Feb 2019
http://themicrobiome.com/en/publications/causal-relationships-among-the-gut-microbiome-shortchain-fatty-acids-and-metabolic-diseases
Mendelian randomization

https://twitter.com/Tyu_Shi/status/1053687083284348928
Tyu_Shi on Twitter: "それらの論文読んだ後に、GWASとの対比でメタゲコホート研究を論じたこのReviewを読んだが、現状の問題点の整理にとても良かった。提案しているindexはちょっと微妙だが。Host genetics and microbiome associations through the lens of genome wide association studies https://t.co/a7DIpB9Aqs"
12:39 PM - 20 Oct 2018
https://www.ncbi.nlm.nih.gov/pubmed/29909175
Curr Opin Microbiol. 2018 Aug;44:9-19. doi: 10.1016/j.mib.2018.05.003. Epub 2018 Jun 14.
Host genetics and microbiome associations through the lens of genome wide association studies.
Weissbrod O1, Rothschild D1, Barkan E1, Segal E2.

https://twitter.com/johnlees6/status/1013791082872745985
John Lees on Twitter: "Have a look at our (now published) short note about our microbial GWAS software pyseer: https://t.co/7u8ko59mb1 More info here: https://t.co/xOsJbzci33 We've also got some new features coming soon, how exciting"
10:26 AM - 2 Jul 2018

https://academic.oup.com/bioinformatics/advance-article/doi/10.1093/bioinformatics/bty539/5047751
pyseer: a comprehensive tool for microbial pangenome-wide association studies | Bioinformatics | Oxford Academic

http://pyseer.readthedocs.io/en/master/
pyseer documentation — pyseer 1.1.1 documentation


https://www.biorxiv.org/content/early/2018/02/15/266312
pyseer: a comprehensive tool for microbial pangenome-wide association studies | bioRxiv
- https://github.com/mgalardini/pyseer
- http://pyseer.readthedocs.io

6 Feb 2018
https://twitter.com/strnr/status/960873677532385280
Stephen Turner on Twitter: "treeWAS: A phylogenetic tree-based approach to genome-wide association studies in microbes code https://t.co/JprApEzBbj paper https://t.co/DZN9Jod0tQ docs https://t.co/e5aExAXb1L… https://t.co/ghmiArcTyI"

https://www.ncbi.nlm.nih.gov/pubmed/27840430
Nat Rev Genet. 2017 Jan;18(1):41-50. doi: 10.1038/nrg.2016.132. Epub 2016 Nov 14.
Microbial genome-wide association studies: lessons from human GWAS.
Power RA1, Parkhill J2, de Oliveira T1,2,3.

https://www.ncbi.nlm.nih.gov/pubmed/27887642
Genome Biol. 2016 Nov 25;17(1):238.
Rapid scoring of genes in microbial pan-genome-wide association studies with Scoary.
Brynildsrud O1, Bohlin J2, Scheffer L2,3, Eldholm V2.

https://www.ncbi.nlm.nih.gov/pubmed/27572652
Nat Microbiol. 2016 Apr 26;1:16059. doi: 10.1038/nmicrobiol.2016.59.
Bacterial genomics: Microbial GWAS coming of age.
Falush D1.

https://www.biostars.org/p/197270/
Is there any good GWAS software for the whole bacterial genomes?






https://twitter.com/search?q=GWAS%20microbiome

https://www.ncbi.nlm.nih.gov/pubmed/28824167
Nat Rev Genet. 2017 Nov;18(11):690-699. doi: 10.1038/nrg.2017.63. Epub 2017 Aug 21.
Human genetic variation and the gut microbiome in disease.
Hall AB1,2, Tolonen AC1, Xavier RJ1,2,3,4.

https://www.ncbi.nlm.nih.gov/pubmed/27694959
Nat Genet. 2016 Nov;48(11):1407-1412. doi: 10.1038/ng.3663. Epub 2016 Oct 3.
The effect of host genetics on the gut microbiome.

https://www.ncbi.nlm.nih.gov/pubmed/26528553
PLoS One. 2015 Nov 3;10(11):e0140301. doi: 10.1371/journal.pone.0140301. eCollection 2015.
Genome-Wide Association Studies of the Human Gut Microbiota.
Davenport ER1, Cusanovich DA1, Michelini K1, Barreiro LB2, Ober C1, Gilad Y1.

2016年7月11日
http://first.lifesciencedb.jp/archives/12735
ゲノムワイド関連解析を用いたイネにおける農業形質にかかわる新規の遺伝子の同定

http://plaza.umin.ac.jp/~yokada/yokada.files/JSHG2012_YukinoriOkada_Award.pdf
2012/10/26 日本人類遺伝学会第57回大会 奨励賞受賞講演
ゲノムワイド関連解析を通じた疾患感受性遺伝子の同定

2009年3月26日
https://www.natureasia.com/ja-jp/jobs/tokushu/detail/154
ゲノムを巨視的にとらえる…GWASとエピジェネティクスの試み

2009年3月
https://ci.nii.ac.jp/els/contentscinii_20180212133359.pdf?id=ART0009161346
全ゲノム関連解析 (GWAS)の統計的手法


----------
## population genetics

https://www.ncbi.nlm.nih.gov/pubmed/29973680
Nat Rev Genet. 2018 Sep;19(9):549-565. doi: 10.1038/s41576-018-0032-z.
Population genomics of bacterial host adaptation.
Sheppard SK1, Guttman DS2,3, Fitzgerald JR4.

https://www.ncbi.nlm.nih.gov/pubmed/29684183
Mol Biol Evol. 2018 Jun 1;35(6):1338-1347. doi: 10.1093/molbev/msy078.
Neutral Theory, Microbial Practice: Challenges in Bacterial Population Genetics.
Rocha EPC1,2.
https://academic.oup.com/mbe/article/35/6/1338/4976545
- Horizontal gene transfer (HGT)
- mobile genetic elements (MGEs, conjugation, or phage-mediated)

https://www.ncbi.nlm.nih.gov/pubmed/27091940
Cold Spring Harb Perspect Biol. 2016 Jul 1;8(7). pii: a018069. doi: 10.1101/cshperspect.a018069.
Not So Simple After All: Bacteria, Their Population Genetics, and Recombination.
Hanage WP1.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4930924/


----------
## recombination
組み換え

https://bmcbioinformatics.biomedcentral.com/articles/10.1186/s12859-018-2456-z

Over the last four decades, many methods have been proposed to detect the presence of recombination in bacterial genomes, applying concepts of maximum likelihood, phylogenetic incongruence, substitution patterns, distance-based approach, or character compatibility [16–22]. Commonly used methods to identify recombination breakpoints include ClonalFrameML [22], RDP [18] and GARD [19]. All are phylogenetic-based programs. 


----------

## maskrc-svg
https://github.com/kwongj/maskrc-svg
Masks recombinant regions in an alignment based on ClonalFrameML or Gubbins output
Option to draw SVG of recombinant regions

----------

## ClonalFrameML

最尤推定により細菌ゲノムの組換えを検出

https://github.com/xavierdidelot/ClonalFrameML
The user guide for ClonalFrameML is available here.
https://github.com/xavierdidelot/clonalframeml/wiki


https://pubmed.ncbi.nlm.nih.gov/25675341/
PLoS Comput Biol
. 2015 Feb 12;11(2):e1004041. doi: 10.1371/journal.pcbi.1004041. eCollection 2015 Feb.
ClonalFrameML: efficient inference of recombination in whole bacterial genomes
Xavier Didelot 1, Daniel J Wilson 2
https://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1004041
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4326465/

https://github.com/haruosuz/microbe/blob/master/references/microbe.COVID-19.md#tree
https://virological.org/t/issues-with-sars-cov-2-sequencing-data/473

----------

https://github.com/haruosuz/r4bioinfo/blob/master/R_tree/README.md#bactdating
https://pmc.ncbi.nlm.nih.gov/articles/PMC6294524/
Bayesian inference of ancestral dates on bacterial phylogenetic trees

ClonalFrameML (29) or Gubbins (30)

----------
## gubbins

https://nickjcroucher.github.io/gubbins/
Gubbins - Genealogies Unbiased By recomBinations In Nucleotide Sequences

https://github.com/nickjcroucher/gubbins
nickjcroucher/gubbins: Rapid phylogenetic analysis of large samples of recombinant bacterial whole genome sequences using Gubbins

Midpoint rerooting

Ancestral sequence reconstruction

https://github.com/nickjcroucher/gubbins/issues/236
install gubbins · Issue #236 · nickjcroucher/gubbins

https://pubmed.ncbi.nlm.nih.gov/25414349/
Nucleic Acids Res
. 2015 Feb 18;43(3):e15. doi: 10.1093/nar/gku1196. Epub 2014 Nov 20.
Rapid phylogenetic analysis of large samples of recombinant bacterial whole genome sequences using Gubbins
Nicholas J Croucher 1, Andrew J Page 2, Thomas R Connor 3, Aidan J Delaney 4, Jacqueline A Keane 2, Stephen D Bentley 5, Julian Parkhill 2, Simon R Harris 6
https://academic.oup.com/nar/article/43/3/e15/2410982
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4330336/

http://kazumaxneo.hatenablog.com/entry/2017/12/10/211129
近縁な何百~何千のバクテリアの系統解析を行うGubbins - macでインフォマティクス
ランにはマルチプルアライメント実行済みのファイルを使う。マニュアルではゲノムのマルチプルアライメントのツール例としてSnippyが挙げられている（Snippyの使い方）。


https://pubmed.ncbi.nlm.nih.gov/31623552/
BMC Genomics
. 2019 Oct 17;20(1):752. doi: 10.1186/s12864-019-6078-2.
The recombination-cold region as an epidemiological marker of recombinogenic opportunistic pathogen Mycobacterium avium
Hirokazu Yano 1, Haruo Suzuki 2, Fumito Maruyama 3, Tomotada Iwamoto 4
https://bmcgenomics.biomedcentral.com/articles/10.1186/s12864-019-6078-2
https://pmc.ncbi.nlm.nih.gov/articles/PMC6798384/

For this data set, we used Gubbins software [36], which produces recombination-free SNPs alignments and simultaneously infers phylogenetic trees. 

Filtered polymorphic sites of this SC2/SC4 dataset, obtained as described above, were used for phylogenetic analysis and recombination detection using Gubbins software [36]. This software is more suitable for the genealogical analysis of a population consisting of closely-related haplotypes than fastGEAR, and is useful as it generates multiple sequence alignment of recombination-free polymorphic sites [36]. Recombination-cold regions that can distinguish between SC2 and SC4 were screened manually using fasta and vcf files of the Gubbins outputs.


----------
## fastGEAR
https://users.ics.aalto.fi/~pemartti/fastGEAR/

https://mostowylab.com/news/fastgear
fastGEAR: detecting mosaicism in bacterial genomes — Mostowy Lab

identifies population genetic structure of an alignment in question, and detects recombinations between the inferred lineages as well as from external origins.

How fastGEAR works?
Before I explain, let's define two terms I'm going to use here: recent recombinations and ancestral recombinations. Let's look at the figure below.

![](https://images.squarespace-cdn.com/content/v1/5ce139641ecba2000171c9cd/1558288296780-DJDD8JO0W2KVGT9Z6KP2/fig1_example.png?format=2500w)

Summary
To summarise, fastGEAR is a tool to detect mosaicism in bacterial genomes. It can be used on individual genes as well as concatenations of genes. However, as we argued in the original publication it’s probably best used on a gene-by-gene basis as it then deals best with varying levels of diversity across different genes.


https://pubmed.ncbi.nlm.nih.gov/28199698/
Mol Biol Evol
. 2017 May 1;34(5):1167-1182. doi: 10.1093/molbev/msx066.
Efficient Inference of Recent and Ancestral Recombination within Bacterial Populations
Rafal Mostowy 1, Nicholas J Croucher 1, Cheryl P Andam 2, Jukka Corander 3 4, William P Hanage 2, Pekka Marttinen 5
https://academic.oup.com/mbe/article/34/5/1167/2983515
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5400400/
Currently, popular methods used for detecting recombination in bacterial genomes include ClonalFrame (Didelot and Falush, 2007) and ClonalFrameML (Didelot and Wilson, 2015), Gubbins (Croucher et al., 2015), and BratNextGen (Marttinen et al., 2012).

All these methods specialize in identifying imports originating in external sources, and are therefore appropriately applied to a single bacterial lineage at a time. Thus, they rely on another method to identify the underlying population structure, which limits their ability to provide insight into species-wide or even inter-species patterns of exchange. With the recent development of high-throughput sequencing methods, which can process tens of thousands of bacterial whole-genomes, such analyses have become increasingly interesting and necessary.

FIG. 4
Comparison of fastGEAR and other recombination detection methods. The figure shows the performance of fastGEAR compared with other methods: STRUCTURE, Gubbins and ClonalFrameML. 

For this reason, we chose to analyze the S. pneumoniae data gene-by-gene, rather than concatenating multiple genes for joint analysis. 



----------
## phi

https://pubmed.ncbi.nlm.nih.gov/16489234/
Genetics
. 2006 Apr;172(4):2665-81. doi: 10.1534/genetics.105.048975. Epub 2006 Feb 19.
A simple and robust statistical test for detecting the presence of recombination
Trevor C Bruen 1, Hervé Philippe, David Bryant
https://academic.oup.com/genetics/article/172/4/2665/6061749
https://www.ncbi.nlm.nih.gov/labs/pmc/articles/PMC1456386/
https://www.genetics.org/content/172/4/2665

We then develop a new statistic to test for recombination, the Φw- (or pairwise homoplasy index, PHI) statistic that uses this notion of refined incompatibility.


https://www.maths.otago.ac.nz/~dbryant/software/phimanual.pdf
PhiPack: PHI test and other tests of recombination
Trevor Bruen
trevor@mcb.mcgill.ca

8 SequenceTypes
The default option is nucleotide (DNA) sequences, but other sequence types
can be accepted as well. The basic syntax is
./Phi ... -t [D|A|O]




----------
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
## updates

### 2021

MutVis
https://pubmed.ncbi.nlm.nih.gov/33689914/
Infect Genet Evol
. 2021 Mar 6;104805. doi: 10.1016/j.meegid.2021.104805. Online ahead of print.
MutVis: Automated framework for analysis and visualization of mutational signatures in pathogenic bacterial strains
Akshatha Prasanna 1, Vidya Niranjan 2
https://www.sciencedirect.com/science/article/abs/pii/S1567134821001027
https://github.com/AkshathaPrasanna/MutVis
MutVis is an open-source, user-friendly, automated framework for analysis and visualization of mutational signatures in pathogenic bacterial strains, regardless the number, origin or species. The current framework integrates various opensource tools and is scripted using Python, R programming and Snakemake workflow management software. MutVis supports variant calling, processing of VCF files, transition and transversion graphical representation, generation of mutational count matrix, graphical visualization of basepair substitution spectrum (BPS) and mutation signatures.




17 February 2021
https://microbiomejournal.biomedcentral.com/articles/10.1186/s40168-020-00993-9
PathoFact: a pipeline for the prediction of virulence factors and antimicrobial resistance genes in metagenomic data

PathoFact, its models, and databases are freely available at https://pathofact.lcsb.uni.lu.



https://github.com/gem-pasteur/PanACoTA
https://pubmed.ncbi.nlm.nih.gov/33575648/
NAR Genom Bioinform
. 2021 Jan 12;3(1):lqaa106. doi: 10.1093/nargab/lqaa106. eCollection 2021 Mar.
PanACoTA: a modular tool for massive microbial comparative genomics
Amandine Perrin 1, Eduardo P C Rocha 1
https://academic.oup.com/nargab/article/3/1/lqaa106/6090162
Some tools, such as PIRATE (22) have also been recently developed to cluster orthologues between distant genomes. However, all these programs lack some or all of initial and final steps that are essential in comparative genomics, including download, quality control, alignment and phylogenetic inference. This spurred the development of PanACoTA (PANgenome with Annotations, COre identification, Tree and corresponding Alignments). 



https://pubmed.ncbi.nlm.nih.gov/33407081/
BMC Bioinformatics
. 2021 Jan 6;22(1):11. doi: 10.1186/s12859-020-03940-5.
MicrobeAnnotator: a user-friendly, comprehensive functional annotation pipeline for microbial genomes
Carlos A Ruiz-Perez 1, Roth E Conrad 2, Konstantinos T Konstantinidis 3 4 5 6
https://bmcbioinformatics.biomedcentral.com/articles/10.1186/s12859-020-03940-5
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC7789693/
multiple databases [KEGG Orthology (KO), Enzyme Commission (E.C.), Gene Ontology (GO), Pfam, and InterPro].
https://github.com/cruizperez/MicrobeAnnotator



### 2020



https://pubmed.ncbi.nlm.nih.gov/32426808/
Bioinformatics
. 2020 Aug 1;36(15):4341-4344. doi: 10.1093/bioinformatics/btaa512.
MetaSanity: an integrated microbial genome evaluation and annotation pipeline
Christopher J Neely 1, Elaina D Graham 1, Benjamin J Tully 1 2
https://academic.oup.com/bioinformatics/article/36/15/4341/5840471
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC7520038/



### 2019

https://pubmed.ncbi.nlm.nih.gov/30679308/
Genome Res
. 2019 Feb;29(2):304-316. doi: 10.1101/gr.241455.118. Epub 2019 Jan 24.
Fast and flexible bacterial genomic epidemiology with PopPUNK
John A Lees 1, Simon R Harris 2, Gerry Tonkin-Hill 2, Rebecca A Gladstone 2, Stephanie W Lo 2, Jeffrey N Weiser 1, Jukka Corander 2 3 4, Stephen D Bentley 2 5 6, Nicholas J Croucher 7
https://genome.cshlp.org/content/29/2/304.long
PopPUNK (Population Partitioning Using Nucleotide K -mers)
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6360808/




### 2018

  - [Tychus](#tychus)

https://www.biorxiv.org/content/early/2018/03/16/283101
Tychus: a whole genome sequencing pipeline for assembly, annotation and phylogenetics of bacterial genomes

Christopher Dean, Noelle Noyes, Steven M Lakin, Pablo Rovira-Sanz, Xiang Yang, Keith Belk, Paul Morley, Richard Meinersmann, Zaid Abdo

https://github.com/Abdo-Lab/Tychus


### 2016
https://bitsandbugs.org/2016/09/22/guideline-to-bioinformatics-tools/
Guideline to bioinformatics tools | Bits and Bugs



----------

## unclassified



http://www.microbesonline.org/
phylogenetic profile


https://twitter.com/copypasteusa/status/1132305387472822273
Haruo Suzuki on Twitter: "微生物ゲノム配列データ解析ウェブサーバ M1CR0B1AL1Z3R（microbializerと発音） https://t.co/5Yybee5kfG ProdigalでORF予測。MMSEQS2(tBlastX)で相同性検索し双方向ベストヒットによるオーソログ同定。MAFFTで多重整列し、RAxMLでコア遺伝子結合データの系統樹作成。GC含量 https://t.co/4WlNgw9YQy"
12:20 AM · May 26, 2019


https://github.com/kblin/ncbi-genome-download
kblin/ncbi-genome-download: Scripts to download genomes from the NCBI FTP servers



https://twitter.com/torstenseemann/status/1013354894730772480
Torsten Seemann on Twitter: "Need a closed bacterial reference genome that's close to your sample but can't find it on @ncbi or @enasequence ? Try looking at the @NCTC_3000 collection, as not all of the asemblies have made it into the public databases yet ! https://t.co/lIolFpNJ0z"
5:33 AM - 1 Jul 2018




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
### holt Lab

https://holtlab.net
Holt Lab | microbial genomics

https://twitter.com/DrKatHolt/status/1016835161818722305
Kat Holt on Twitter: "@BioMinnie @sylvainbrisse @KelWyres Python package ete2, using our scripts here https://t.co/5oOeLwx2Hg https://t.co/wYGiP0bAQ1 Although most of this you can now also do with ggtree, or microreact."
9:02 AM · Jul 11, 2018
https://holtlab.net/2015/10/03/plotting-trees-data/

<img src="https://katholtlab.files.wordpress.com/2015/10/pan.png" width=30% alt="https://holtlab.net/2015/10/03/plotting-trees-data/">
<img src="https://katholtlab.files.wordpress.com/2015/10/screen-shot-2015-12-15-at-4-43-05-pm.png" width=30% alt="https://holtlab.net/2015/10/03/plotting-trees-data/">
<img src="https://katholtlab.files.wordpress.com/2015/10/screen-shot-2015-12-15-at-4-47-34-pm.png" width=30% alt="https://holtlab.net/2015/10/03/plotting-trees-data/">


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
## island
ゲノムアイランド
(微生物ゲノム等で病原遺伝子等を含む可動性領域)

https://en.wikipedia.org/wiki/Genomic_island


panRGP: ゲノムアイランドを予測し、その多様性を探るためのパンゲノムベースの手法
https://pubmed.ncbi.nlm.nih.gov/33381850/
Bioinformatics
. 2020 Dec 30;36(Supplement_2):i651-i658. doi: 10.1093/bioinformatics/btaa792.
panRGP: a pangenome-based method to predict genomic islands and explore their diversity
Adelme Bazin 1, Guillaume Gautreau 1, Claudine Médigue 1, David Vallenet 1, Alexandra Calteau 1

Availability and implementation: The methods presented in the current work are available through the following software: https://github.com/labgem/PPanGGOLiN. Detailed results and scripts to compute the benchmark metrics are available at https://github.com/axbazin/panrgp_supdata.


http://kazumaxneo.hatenablog.com/entry/2018/03/25/141342
Genomic islandsを検出し視覚化する IslandViewer4 - macでインフォマティクス





----------
## viewer

http://kazumaxneo.hatenablog.com/archive/category/synteny_block


http://kazumaxneo.hatenablog.com/entry/2019/10/08/073000
ゲノムや特定の領域の配列比較結果をシンテニーブロックで視覚化する Easyfig - macでインフォマティクス

----------
### smashpp

https://github.com/smortezah/smashpp

https://academic.oup.com/gigascience/article/9/5/giaa048/5841055
Smash++: an alignment-free and memory-efficient tool to find genomic rearrangements

http://kazumaxneo.hatenablog.com/entry/2020/05/21/235631
ゲノムのリアレンジメントを検出して視覚化する smashpp - macでインフォマティクス

----------
### act
Artemis comparison tool

http://kazumaxneo.hatenablog.com/entry/2017/06/14/171106
blast解析からArtemis comparison tool 起動まで自動で行うラッパーツール - macでインフォマティクス

http://kazumaxneo.hatenablog.com/entry/2017/03/24/172503
ゲノム比較ビューア　Artemis comparison tool (ACT) - macでインフォマティクス




----------
## Genome alignment

https://sites.google.com/site/scriptofbioinformatics/pei-lie-jie-xi-guan-xi/bi-jiaogenomu-iroiro
比較ゲノム(いろいろ） - script of bioinformatics

### Murasaki

http://murasaki.dna.bio.keio.ac.jp/
Murasaki Project: Murasaki Project - Murasaki Project

http://kazumaxneo.hatenablog.com/entry/2017/06/23/134413
ゲノム比較のmurasakiと結果を表示するGMV - macでインフォマティクス

https://kaken.nii.ac.jp/ja/file/KAKENHI-PROJECT-17018029/17018029seika.pdf
ヒトなど の高等生物の複数種のゲノム比較を計算で きる既存のシステムは存在しないため (Mauve は微生物ゲノムの大きさまでが適用 の限界である.また，Pattern Hunter や BLASTZ などは2種間のゲノム比較のみ適用 可能である.)，Murasaki の性能評価結果は非 常によいものと言える.

![http://murasaki.dna.bio.keio.ac.jp/](http://murasaki.dna.bio.keio.ac.jp/9mammals-small.png)

### GenomeMatcher
http://www.ige.tohoku.ac.jp/joho/gmProject/gmhomeJP.html

http://www.ige.tohoku.ac.jp/joho/gmProject/galleryJP.html

![http://www.ige.tohoku.ac.jp/joho/gmProject/galleryJP.html](http://www.ige.tohoku.ac.jp/joho/gmProject/imageSource/image28.jpg)

### Cactus
https://github.com/ComparativeGenomicsToolkit/cactus

https://www.biorxiv.org/content/10.1101/730531v3
Progressive alignment with Cactus: a multiple-genome aligner for the thousand-genome era | bioRxiv

https://www.ncbi.nlm.nih.gov/pubmed/21665927
Genome Res. 2011 Sep;21(9):1512-28. doi: 10.1101/gr.123356.111. Epub 2011 Jun 10.
Cactus: Algorithms for genome multiple sequence alignment.
Paten B1, Earl D, Nguyen N, Diekhans M, Zerbino D, Haussler D.

### Synima
https://github.com/rhysf/Synima

https://www.ncbi.nlm.nih.gov/pubmed/29162056
BMC Bioinformatics. 2017 Nov 21;18(1):507. doi: 10.1186/s12859-017-1939-7.
Synima: a Synteny imaging tool for annotated genome assemblies.
Farrer RA1,2.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5697234/figure/Fig1/

### Mauve

http://darlinglab.org/mauve/mauve.html
Mauve

https://scholar.google.com.au/citations?user=TE8_LDwAAAAJ&hl=en&oi=ao
- progressiveMauve: multiple genome alignment with gene gain, loss and rearrangement
- Reordering contigs of draft genomes using the Mauve aligner
- Mauve: multiple alignment of conserved genomic sequence with rearrangements

https://www.ncbi.nlm.nih.gov/pubmed/20593022
PLoS One. 2010 Jun 25;5(6):e11147. doi: 10.1371/journal.pone.0011147.
progressiveMauve: multiple genome alignment with gene gain, loss and rearrangement.
Darling AE1, Mau B, Perna NT.

https://www.ncbi.nlm.nih.gov/pubmed/19515959
Bioinformatics. 2009 Aug 15;25(16):2071-3. doi: 10.1093/bioinformatics/btp356. Epub 2009 Jun 10.
Reordering contigs of draft genomes using the Mauve aligner.
Rissman AI1, Mau B, Biehl BS, Darling AE, Glasner JD, Perna NT.

https://www.ncbi.nlm.nih.gov/pubmed/15231754
Genome Res. 2004 Jul;14(7):1394-403.
Mauve: multiple alignment of conserved genomic sequence with rearrangements.
Darling AC1, Mau B, Blattner FR, Perna NT.

解析例
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5708112/figure/Fig2/
Fig. 2
Genome alignment of Clostridium difficile strains performed using progressiveMauve (http://darlinglab.org/mauve/user-guide/progressivemauve.html) and visualized using genoPlotR (http://genoplotr.r-forge.r-project.org)

![](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5708112/bin/13099_2017_219_Fig2_HTML.jpg)

http://kazumaxneo.hatenablog.com/entry/2018/08/23/212408
mauveを使いcontigをリファレンスfasta順に並べ替える - macでインフォマティクス

http://kazumaxneo.hatenablog.com/entry/2017/06/23/122010
ゲノム比較 x 変異コール x ビューア を統合したGUI（CUI）ツール Mauve - macでインフォマティクス

![http://darlinglab.org/mauve/user-guide/screenshots.html](http://darlinglab.org/mauve/user-guide/rearrangements.jpg)


----------
## MinHash

http://kazumaxneo.hatenablog.com/entry/2018/05/09/193021
MinHashを使いfasta / fastqから生物種を高速推定する BBSketch - macでインフォマティクス

http://camberbridge.github.io/2016/10/05/Min-HashによるJaccard係数の近似実験/
Min HashによるJaccard係数の近似実験

http://blog.createfield.com/entry/2015/12/24/120849
Groongaでb Bit MinHashを使って高速に類似検索 - CreateField Blog

http://yebisupress.dac.co.jp/2015/06/26/hivemall-minhash/
HivemallでMinhash！〜似てる記事を探し出そう。〜 | DACエンジニアブログ：アドテクゑびす界

https://developer.smartnews.com/blog/2013/08/05/efficient-similarity-estimation-using-b-bit-minhash/
b-Bit MinHashによる高速かつ省スペースな類似度判定 - SmartNews Engineering Blog

https://research.preferred.jp/2011/02/minhash/
MinHashによる高速な類似検索 | Preferred Research

## Mash

https://github.com/marbl/mash
Mash: fast genome and metagenome distance estimation using MinHash

https://www.ncbi.nlm.nih.gov/pubmed/27323842
Genome Biol. 2016 Jun 20;17(1):132. doi: 10.1186/s13059-016-0997-x.
Mash: fast genome and metagenome distance estimation using MinHash.
Ondov BD1, Treangen TJ1, Melsted P2, Mallonee AB1, Bergman NH1, Koren S3, Phillippy AM4.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4915045/

https://twitter.com/aphillippy/status/745254551947714561
Adam Phillippy on Twitter: "Our latest "Mash: fast genome and metagenome distance estimation using MinHash" now published in @GenomeBiology https://t.co/KONRKwjlF8"
9:58 AM - 21 Jun 2016

http://kazumaxneo.hatenablog.com/entry/2018/05/11/180244
MinHashを使い高速にゲノムを比較する MASH - macでインフォマティクス

### MashMap
https://github.com/marbl/MashMap

https://www.ncbi.nlm.nih.gov/pubmed/30423094
Bioinformatics. 2018 Sep 1;34(17):i748-i756. doi: 10.1093/bioinformatics/bty597.
A fast adaptive algorithm for computing whole-genome homology maps.
Jain C1,2, Koren S2, Dilthey A2,3, Phillippy AM2, Aluru S1.

http://kazumaxneo.hatenablog.com/entry/2018/06/19/194715
MinHashを利用した長い配列（ゲノムやロングリード）のアライナー MashMap - macでインフォマティクス

### Mash Screen

https://twitter.com/aphillippy/status/1191818906257612800
Adam Phillippy on Twitter: ""Mash Screen: High-throughput sequence containment estimation for genome discovery" is published! Two years after I blogged about it, and 8 months after the preprint. I thank @BrianOndov for his patience and the reviewers for some key corrections https://t.co/boAWvvpnn5"
5:45 AM · Nov 6, 2019
https://genomebiology.biomedcentral.com/articles/10.1186/s13059-019-1841-x

http://kazumaxneo.hatenablog.com/entry/2019/03/06/073000
サンプルのコンタミネーションを見積もる Mash Screen - macでインフォマティクス

### fastANI
https://github.com/ParBLiSS/FastANI

https://www.ncbi.nlm.nih.gov/pubmed/30504855
Nat Commun. 2018 Nov 30;9(1):5114. doi: 10.1038/s41467-018-07641-9.
High throughput ANI analysis of 90K prokaryotic genomes reveals clear species boundaries.
Jain C1,2, Rodriguez-R LM3,4, Phillippy AM2, Konstantinidis KT5,6, Aluru S7,8.

https://twitter.com/WvSchaik/status/1069298727238713346
Willem van Schaik on Twitter: "Spoiler: microbial species are a thing.… "
1:34 PM - 2 Dec 2018
https://twitter.com/aphillippy/status/1068497439617966080
Adam Phillippy on Twitter: "Our latest: Are microbial species actually a thing? FastANI gives us a peek. More great work from @chirgjain. Great to see this published! https://t.co/2igLJex2rA"
8:30 AM - 30 Nov 2018

http://kazumaxneo.hatenablog.com/entry/2018/09/14/141442
MinHashを使った高速なANI計算ツール fastANI - macでインフォマティクス

----------
## ANI

https://img.jgi.doe.gov/docs/ANI.pdf
Average Nucleotide Identity (ANI)

https://en.wikipedia.org/wiki/Bacterial_genome
The Average Nucleotide Identity method quantifies genetic distance between entire genomes by taking advantage of regions of about 10,000 bp. With enough data from genomes of one genus, algorithms are executed to categorize species. This has been done for the Pseudomonas avellanae species in 2013.[5]

5:50 AM · Mar 21, 2019
https://twitter.com/ChristianRinke/status/1108470780348649472
Chris Rinke on Twitter: "NCBI will use average nucleotide identity (ANI) analysis to correct existing public records in GenBank. https://t.co/Qis6BSy2Y1"
https://ncbiinsights.ncbi.nlm.nih.gov/2019/02/06/correct-existing-taxonomic-info-genbank-ani-analysis/amp/
NCBI Insights : NCBI to correct existing taxonomic information on public GenBank records with average nucleotide identity analysis
A paper in the International Journal of Systematic and Evolutionary Microbiology presents the method NCBI scientists used to review all prokaryotic genome assemblies in GenBank, as well as the current status of GenBank verifications and recent developments in confirming species assignments in new genome submissions.
https://www.ncbi.nlm.nih.gov/pubmed/29792589
Int J Syst Evol Microbiol. 2018 Jul;68(7):2386-2392. doi: 10.1099/ijsem.0.002809. Epub 2018 May 24.
Using average nucleotide identity to improve taxonomic assignments in prokaryotic genomes at the NCBI.
Ciufo S1, Kannan S1, Sharma S1, Badretdin A1, Clark K1, Turner S1, Brover S1, Schoch CL1, Kimchi A1, DiCuccio M1.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6978984/
Determining ANI cutoffs
Initial surveys of ANI relationships between type assemblies supported the use of a 96 % ANI cutoff to define species boundaries.
Table 2.
Determination of the default cutoff of 96 %, based on current taxa for which we can determine both concordant and discordant ANI values
Table 3.
Exceptions to ANI cutoff values: for most taxonomic groups, the assembly is considered a match when the ANI value shows a 96 % identity

Oct 13, 2017
https://github.com/rprops/MetaG_analysis_workflow/wiki/13.-Compute-Average-Nucleotide-Identity-(ANI)
13. Compute Average Nucleotide Identity (ANI)

http://kazumaxneo.hatenablog.com/archive/category/ANI
ANI カテゴリーの記事一覧 - macでインフォマティクス

http://kazumaxneo.hatenablog.com/entry/2018/09/11/234212
gANIを計算するツール ANIcalculator - macでインフォマティクス
- 微生物は数と多様性の両方で生命の樹木を支配しており、その自然分類を困難かつ重要なものにしている。動物では、種は一般に交配可能な生物群と定義されるが（biological species concept）、この定義は無性生物の集合体に直接適用することはできない。結果として、微生物分類学は、生物に関する遺伝子型、表現型および化学感受性の情報を統合し、利用可能なデータのコンセンサスに基づいて微生物種を描写する多相性のアプローチ（論文よりref.2,3）を採用する。
- Whole-genome based Average Nucleotide Identity (gANI) は、KonstantinidisとTiedjeにより、2ゲノム間の類似性の尺度として提案された（ref.4）。

http://kazumaxneo.hatenablog.com/entry/2018/09/10/201205
ANItoolsをwebで実行できるANItools web - macでインフォマティクス

https://www.tecsrg.co.jp/services/microbiological/other/average-nucleotide-identity/
ANI 解析は、対象株（検体）と比較株のゲノム配列の類似度（ANI：相同値）をコンピュータ上で計算し、種の異同を判
断します。ANI 値が95%以上であれば同種、95%未満であれば別種と判定します。DNA-DNA ハイブリッド形成試験とANI 解析には正の相関があり、DNA-DNA ハイブリッド形成試験における種の境界値「70%」は、ANI 値で「95%」に相当します（Goriset al. 2007）。

https://www.nite.go.jp/nbrc/safety/risk_assessment.html
微生物利用におけるリスク評価に関する技術情報の提供 | バイオテクノロジー | 製品評価技術基盤機構
菌種の同定法　～ Average Nucleotide Identity （ANI）について～
　急速な細菌ゲノム情報の蓄積を背景として、菌株間のゲノム配列の類似度をコンピューター上で計算し、簡便・迅速に菌種の同定を行う、Average Nucleotide Identity (ANI)法がDNA-DNA Hybridization (DDH)法にかわる方法として評価されてきています(Goris et al. 2007, IJSEM 57: 81; Richter and Rosselló-Móra 2009, PNAS 10: 105; 図1)。DDHにおける菌種判定の閾値である類似度70%は、ANIにおいて95-96%に相当すると報告されています。このことから、近年では、DDHの代替としてANIに基づく新種の提案が行われてきています(Baek et al. 2015, IJSEM 65: 504; Shahraki et al. 2015, IJSEM 65: 504)。

![](https://www.nite.go.jp/data/000060544.png)

https://katosei.jsbba.or.jp/view_html.php?aid=1007
Kagaku to Seibutsu 56(7): 459-460 (2018)
データベースから発見されたガセリ菌のサブグループ
Published: 2018-06-20
ただ，DDHや生化学試験は手間がかかるうえに，結果の判断も難しい．補足情報として16S rRNA遺伝子配列もよく使われるが，配列の保存度が高すぎる．配列が99％以上一致しても別種であることが少なくない．そこで最近脚光を浴びているのが，Average nucleotide identity（ANI）と呼ばれる全ゲノム配列に基づく指標である．この手法では，ゲノム全体を1,020 bpのフラグメントに分断し，配列検索アルゴリズムで30％以上一致するフラグメントの平均一致度を出す(2)．全ゲノムを使うので結果が偏りにくく，Multilocus sequencing analysis（MLSA）のように，利用する遺伝子配列を選別する必要もない．ゲノム情報さえあれば計算機上で簡単に実施できる点が画期的である．現在では公共データベースに多くのゲノム情報が蓄積されており，それらを再利用できる点でも利便性が高い．一般には，DDH 70％の一致度がANI 95～96％に相当するとされる．

https://www.nite.go.jp/nbrc/cultures/others/nbrcnews/news_vol43.html#news43_3
NBRCニュース No. 43（2017.2.1）
　３．バイテク分析法（3）細菌の分類同定における全ゲノム配列の利用
　現在、OGRIで利用されている手法として、ゲノム配列の相同性をコンピューター上で解
析するin silico DDH法があります。その中でも、2つのゲノム配列上のオーソログな領域
における相同値の平均値を計算する方法であるANI（Average Nucleotide Identity）が最
も利用されており、ANI値とDDH相同値には高い相関が確認されています(4)。

https://www.ncbi.nlm.nih.gov/pubmed/17220447
Int J Syst Evol Microbiol. 2007 Jan;57(Pt 1):81-91.
DNA-DNA hybridization values and their relationship to whole-genome sequence similarities.
Goris J1, Konstantinidis KT, Klappenbach JA, Coenye T, Vandamme P, Tiedje JM.

https://www.ncbi.nlm.nih.gov/pubmed/15701695
Proc Natl Acad Sci U S A. 2005 Feb 15;102(7):2567-72. Epub 2005 Feb 8.
Genomic insights that advance the species definition for prokaryotes.
Konstantinidis KT1, Tiedje JM.

----------

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

----------
## assembly quality

https://www.ncbi.nlm.nih.gov/pubmed/31429698
BMC Genomics. 2019 Aug 20;20(1):662. doi: 10.1186/s12864-019-6014-5.
The importance of genome sequence quality to microbial comparative genomics.
Smits THM1.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6701015/
basic methods for genome quality assessment are available [1–3]. 
- QUAST
- CheckM
- BUSCO

----------
### QUAST
http://quast.sourceforge.net/quast

https://www.ncbi.nlm.nih.gov/pubmed/23422339
Bioinformatics. 2013 Apr 15;29(8):1072-5. doi: 10.1093/bioinformatics/btt086. Epub 2013 Feb 19.
QUAST: quality assessment tool for genome assemblies.
Gurevich A1, Saveliev V, Vyahhi N, Tesler G.
QUAST can evaluate assemblies both with a reference genome, as well as without a reference.

http://kazumaxneo.hatenablog.com/entry/2017/08/22/231007
アセンブリ結果を評価する QUAST - macでインフォマティクス
Assembliesのところにcontig.fastaを指定、Genomeのところにリファレンスゲノムを指定してランする。リファレンスゲノムがなくても、N(G)50などのアセンブルの基礎的な評価情報は出力してくれる。

----------
### CheckM
https://ecogenomics.github.io/CheckM/

https://www.ncbi.nlm.nih.gov/pubmed/25977477
Genome Res. 2015 Jul;25(7):1043-55. doi: 10.1101/gr.186072.114. Epub 2015 May 14.
CheckM: assessing the quality of microbial genomes recovered from isolates, single cells, and metagenomes.
Parks DH1, Imelfort M1, Skennerton CT1, Hugenholtz P2, Tyson GW3.
Here we introduce CheckM, an automated method for assessing the quality of a genome using a broader set of marker genes specific to the position of a genome within a reference genome tree and information about the collocation of these genes. 
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4484387/

http://kazumaxneo.hatenablog.com/entry/2019/11/30/150703
CheckMのplotコマンド - macでインフォマティクス

http://kazumaxneo.hatenablog.com/entry/2017/09/22/012544
メタゲノムからビニングしたゲノムが完全か、またコンタミがあるか評価する CheckM - macでインフォマティクス
CheckMは、参照ゲノムツリー内のゲノムに特異的なマーカー遺伝子セット情報を使用して、ゲノムの完全性と汚染の正確な推定値を提供する。系統内で単一コピーの遺伝子を元に、ゲノムが完全であるか、コンタミがあるか分析している。

----------
### BUSCO
https://busco.ezlab.org
Bacteria Bacteria sets

25 April 2019
https://link.springer.com/protocol/10.1007/978-1-4939-9173-0_14
BUSCO: Assessing Genome Assembly and Annotation Completeness

https://www.ncbi.nlm.nih.gov/pubmed/29220515
Mol Biol Evol. 2017 Dec 6. doi: 10.1093/molbev/msx319. [Epub ahead of print]
BUSCO applications from quality assessments to gene prediction and phylogenomics.

https://www.ncbi.nlm.nih.gov/pubmed/26059717
Bioinformatics. 2015 Oct 1;31(19):3210-2. doi: 10.1093/bioinformatics/btv351. Epub 2015 Jun 9.
BUSCO: assessing genome assembly and annotation completeness with single-copy orthologs.
Simão FA1, Waterhouse RM1, Ioannidis P1, Kriventseva EV1, Zdobnov EM1.

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
### genome report

http://www.ncbi.nlm.nih.gov/pubmed/27339634
Brief Funct Genomics. 2017 May 1;16(3):156-162. doi: 10.1093/bfgp/elw026.
Goodbye genome paper, hello genome report: the increasing popularity of 'genome announcements' and their impact on science.
Smith DR.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5439286/
Table 1.
Examples of journals that currently publish genome-report-type articles
Peer reviewed?a
aEditorial review was not considered peer review.

- https://academic.oup.com/gbe/pages/general_instructions
Genome Biology and Evolution | Genome Reports
- https://gutpathogens.biomedcentral.com/submission-guidelines/preparing-your-manuscript/genome-report
Gut Pathogens | Genome report 
- https://environmentalmicrobiome.biomedcentral.com/
Standards in Genomic Sciences has now relaunched as Environmental Microbiome.
genome and metagenome reports
- http://www.jgenomics.com/
Journal of Genomics
- https://www.g3journal.org/content/genome-reports
Genome Reports | G3: Genes | Genomes | Genetics

https://ultrabem.com/other_metabolites/nucleic_acids/dna_genome_paper.html
ゲノム論文コレクション
概要: Genome paper について
2016 年現在、GenBank には 6 万以上の 原核生物 ゲノムと、2700 以上の真核生物ゲノムが登録されている。

#### jgenomics
Journal of Genomics

https://www.jgenomics.com/v08p0037.htm
Draft Genome Sequences of Bifidobacterium animalis Consecutively Isolated from Healthy Japanese Individuals

https://www.jgenomics.com/v07p0018.htm
Complete Genome Sequence of Arthrobacter sp. Strain MN05-02, a UV-Resistant Bacterium from a Manganese Deposit in the Sonoran Desert

https://www.jgenomics.com/v06p0122.htm
Genomic Analysis of Rhodococcus sp. Br-6, a Bromate Reducing Bacterium Isolated From Soil in Chiba, Japan

#### Data in Brief

2018年01月30日
https://www.editage.jp/insights/can-i-submit-the-supplemental-data-of-my-manuscript-to-the-elsevier-journal-data-in-brief
エルゼビア社のジャーナルの”Data in Brief"について | エディテージ・インサイト
投稿中のジャーナルでのアクセプトが決まったら、あなたの原稿の補足データは、その後の出版のために、Data in Brief誌に直接送られます。データは、別途査読を受けて出版されることになります。これは、データの利用と再現性の拡大を目指す倫理的行為と言えるので、二重投稿には当たりません。

2014年09月12日
https://jipsti.jst.go.jp/johokanri/sti_updates/?id=7506
エルゼビア社の新しいデータ・ジャーナルData in Brief | 科学技術情報プラットフォーム


#### genome announcements

https://github.com/haruosuz/genomea
Hidetoshi Itaya, Shohei Nagata, Haruo Suzuki
2016-03-17
Genome Announcement Project
We developed a pipeline that uses GenBank format files (.gbk) as input data and automatically generates journal-formatted manuscripts and cover letters for submission to Genome Announcements.

https://mra.asm.org/
Microbiology Resource Announcements
https://mra.asm.org/content/scope
Publication of an announcement does not preclude a later publication (e.g., a full comparative analysis) on the same resource in an ASM journal.

http://web.sfc.keio.ac.jp/~gaou/wiki/wiki.cgi?page=%A5%B2%A5%CE%A5%E0%B9%A9%B3%D8%BC%C2%BD%AC
ゲノム工学実習 - 荒川和晴, 慶應義塾大学 先端生命科学研究所 (Kazuharu Arakawa, Institute for Advanced Biosciences, Keio University)

https://twitter.com/jgalipon/status/1136884765343150080
Josephine Galipon on Twitter: "もう一個の論文がオンラインになりました！これも指導教員が @gaou_ak です。Nanoporeを使って微生物のゲノム解析し、それを論文投稿しています。実習報告書の代わりに論文投稿っていうわけで、学生も緊張感を持って行うし、査読通ったら達成感があります。https://t.co/NKfwUt5l0G"
2:37 AM - 7 Jun 2019

https://twitter.com/jgalipon/status/1123986093001584640
Josephine Galipon on Twitter: "オリーブオイル工場の廃液に生きている好塩菌 Halomonas olivaria の@nanopore によるコンプリートゲノムを発表しました。@gaou_ak の『ゲノム工学実習』では、学生がバクテリアゲノム精製⇒Nanoporeシーケンシング⇒ゲノムアセンブリ⇒論文投稿を行う実習です。@shohei_aio らhttps://t.co/RsUKnNzpJ8"
12:22 PM - 2 May 2019

https://twitter.com/DnEvnsYmmt/status/1119065344255987712
Dan E.-Y. on Twitter: "南海トラフ海底（水深 3,308 m）の泥から単離したバクテリアゲノムをシーケンスしたゲノムレポートが出版されました。 共同研究航海に参加する形でサンプリングし、 慶應大学院のゲノム工学実習で班員と共にシーケンス・アセンブリしました。 ありがとうございました。 https://t.co/UNWPN3tLjL"
10:29 PM - 18 Apr 2019

2015年09月17日
http://www.okayama-u.ac.jp/tp/release/release_id330.html
抗ウイルス活性物質を生産する放線菌ゲノムの解読　バイオ燃料電池に有用なFDH-O遺伝子の発見 - 国立大学法人 岡山大学

https://masarakki-2.hatenadiary.org/entry/20151005/p1
Genome Announcementsの評価 - 下っ端○○の日記 第4部 〜ダイヤモンドは砕けない〜（仮）

2013/2/16
http://yfuruta.sakura.ne.jp/blog/?p=771
”Genome announcement”という雑誌ができるメリット

https://www.ncbi.nlm.nih.gov/pubmed/27738047
Genome Announc. 2016 Oct 13;4(5). pii: e01155-16. doi: 10.1128/genomeA.01155-16.
Draft Genome Sequence of Arenibacter sp. Strain C-21, an Iodine-Accumulating Bacterium Isolated from Surface Marine Sediment.
Ito K, Nakajima N, Yamamura S, Tomita M, Suzuki H, Amachi S.

http://www.ncbi.nlm.nih.gov/pubmed/27151793
Genome Announc. 2016 May 5;4(3). pii: e00315-16. doi: 10.1128/genomeA.00315-16.
Draft Genome Sequences of 37 Salmonella enterica Strains Isolated from Poultry Sources in Nigeria.
Useh NM, Ngbede EO, Akange N, Thomas M, Foley A, Keena MC, Nelson E, Christopher-Hennings J, Tomita M, Suzuki H, Scaria J.

http://www.ncbi.nlm.nih.gov/pubmed/26543129
Genome Announc. 2015 Nov 5;3(6). pii: e01310-15. doi: 10.1128/genomeA.01310-15.
Draft Genome Sequence of Caedibacter varicaedens, a Kappa Killer Endosymbiont Bacterium of the Ciliate Paramecium biaurelia.
Suzuki H, Dapper AL, Jackson CE, Lee H, Pejaver V, Doak TG, Lynch M, Preer JR Jr.

http://www.ncbi.nlm.nih.gov/pubmed/25977442
Genome Announc. 2015 May 14;3(3). pii: e00474-15. doi: 10.1128/genomeA.00474-15.
Draft Genome Sequences of Five Legionella pneumophila Strains Isolated from Environmental Water Samples.
Watanabe K, Suzuki H, Nakao R, Shimizu T, Watarai M.

http://www.ncbi.nlm.nih.gov/pubmed/25977440
Genome Announc. 2015 May 14;3(3). pii: e00472-15. doi: 10.1128/genomeA.00472-15.
Draft Genome Sequence of Anaeromyxobacter sp. Strain PSR-1, an Arsenate-Respiring Bacterium Isolated from Arsenic-Contaminated Soil.
Tonomura M, Ehara A, Suzuki H, Amachi S.

http://www.ncbi.nlm.nih.gov/pubmed/25838493
Genome Announc. 2015 Apr 2;3(2). pii: e00241-15. doi: 10.1128/genomeA.00241-15.
Draft Genome Sequence of Pseudomonas sp. nov. H2.
Loftie-Eaton W, Suzuki H, Bashford K, Heuer H, Stragier P, De Vos P, Settles ML, Top EM.

http://www.ncbi.nlm.nih.gov/pubmed/25635012
Genome Announc. 2015 Jan 29;3(1). pii: e01478-14. doi: 10.1128/genomeA.01478-14.
Draft Genome Sequence of Geobacter sp. Strain OR-1, an Arsenate-Respiring Bacterium Isolated from Japanese Paddy Soil.
Ehara A, Suzuki H, Amachi S.

http://www.ncbi.nlm.nih.gov/pubmed/24994802
Genome Announc. 2014 Jul 3;2(4). pii: e00659-14. doi: 10.1128/genomeA.00659-14.
Draft genome sequence of strain Q-1, an iodide-oxidizing alphaproteobacterium isolated from natural gas brine water.
Ehara A, Suzuki H, Kanesaki Y, Yoshikawa H, Amachi S.

http://www.ncbi.nlm.nih.gov/pubmed/23969064
Genome Announc. 2013 Aug 22;1(4). pii: e00664-13. doi: 10.1128/genomeA.00664-13.
Draft Genome Sequence of Holospora undulata Strain HU1, a Micronucleus-Specific Symbiont of the Ciliate Paramecium caudatum.
Dohra H, Suzuki H, Suzuki T, Tanaka K, Fujishima M.

https://www.ncbi.nlm.nih.gov/pubmed/23469345
Genome Announc. 2013 Jan;1(1). pii: e00215-12. doi: 10.1128/genomeA.00215-12. Epub 2013 Feb 21.
Complete Genome Sequence of the Porcine Strain Brachyspira pilosicoli P43/6/78(T.).
Lin C, den Bakker HC, Suzuki H, Lefébure T, Ponnala L, Sun Q, Stanhope MJ, Wiedmann M, Duhamel GE.

----------

### vsearch

http://kazumaxneo.hatenablog.com/entry/2019/08/08/095820
多機能な配列処理ツール VSEARCH（USEARCHの代替） - macでインフォマティクス

https://twitter.com/windowmoon/status/881579535891693568
FASTQ/FASTAの配列処理、自作スクリプトで済ませている人も多いと思うけど、Seqtk https://github.com/lh3/seqtk とVSEARCH https://github.com/torognes/vsearch で処理するのが圧倒的おすすめである。何しろ速い。
3:25 AM · Jul 3, 2017


----------

### usearch

http://www.drive5.com/usearch/

http://crusade1096.web.fc2.com/usearch.html
usearchを用いてもQiimeっぽい解析をすることは可能です。

https://lab0animalhh3.wiki.fc2.com/wiki/ドライ・バイオロジーのページ
最終更新:2018-12-06 17:27:59
メタゲノム解析
　本当は、「USEARCH」で検索したのだが、出てきたPDFファイルを見てみたら、これを見ればメタゲノム解析の全体像が大変よく分かるという内容で、まずはこのリンクにとんで、内容を勉強するのがよいと思う。

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

#### uclust


http://www.drive5.com/uclust/uclust_userguide_1_1_579.pdf
http://www.drive5.com/uclust/uclust_userguide_1_1_579.html
http://www.drive5.com/uclust/uclust_userguide_1_1_579.html#_Toc257997685

Sorting input by length
Sorting by decreasing length is done in a separate step as follows:
```
   uclust --sort input.fasta --output input_sorted.fasta
```

Create non-redundant database
```
   uclust --input seqs.fasta --uc results.uc --id 0.90
   uclust --uc2fasta results.uc --types S --output nr.fasta
```

http://drive5.com/usearch/manual/uclust_algo.html
Recommended identity ranges
UCLUST is effective at identities of ~50% and above for proteins and ~75% and above for nucleotides. At lower identities, this type of method is questionable because (i) alignment quality degrades and (ii) homology cannot be reliably determined from an alignment.

Searching the centroid database
A fundamental step in UCLUST is to compare an  input sequence with the centroids identified so far. This is done using the USEARCH algorithm. Most USEARCH parameters, including indexing options, can be used with clustering commands in order to control sensitivity, memory use and speed.

https://sites.google.com/site/noteofpaediatricsurgery/in-silico/meta16s/uclust
UCLUST - Draft of Pediatric Surgery
* 類似する配列をまとめてクラスタリングするアルゴリズム
* Centroid sequenceを中心
* 設定された閾値を半径として描かれる円の中に納まる配列を1つのグループとしてクラスタリングする

https://www.pediatricsurgery.site/entry/2017/11/19/200241
mothur開発者によるmothurとQIIMEの比較 - Note of Pediatric Surgery
5. 開放性
QIIME
USEARCHから無料のVSEARCHに置き換えることに取り組んでいるらしい
6. 再現性

http://kazumaxneo.hatenablog.com/entry/2017/09/03/183139
配列のクラスタリングツール UCLUST - macでインフォマティクス

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


----------

https://twitter.com/ErichMSchwarz/status/492444458613747712
Erich M. Schwarz on Twitter: "kClust -- proteome clustering to ~25% identity, faster and/or more reliable than CD-HIT or UCLUST: http://t.co/VaH6bSKBZC"
7:01 PM - 24 Jul 2014

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

### comparative genomics
ゲノム比較

http://kazumaxneo.hatenablog.com/archive/category/ゲノム比較

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

http://kazumaxneo.hatenablog.com/entry/2018/02/03/154624
GC-skewと複数アセンブルデータを使ってバクテリアのゲノムアセンブリを改善するGUIツール GFinisher - macでインフォマティクス

http://kazumaxneo.hatenablog.com/entry/2017/09/04/105002
メタゲノムデータを種レベルで検出し割合を計算するMOCAT - macでインフォマティクス

----------
## jsme2018

http://meeting-jsme2018.com/symposium.html
日本微生物生態学会 第32回大会 シンポジウム
｢進化・群集生態学の新手法で切り拓く微生物研究のフロンティア｣
東樹 宏和（京都大学）、岩崎 渉（東京大学）

ゲノムの特徴は系統関係とライフスタイルを反映しうる。系統的に遠縁な細菌でも、ライフスタイル（生息環境）が似ている微生物は、ゲノムの特徴が類似する。逆に、系統的に近縁な細菌が、異なる環境に適応すると、ゲノムは多様化する。

https://www.ncbi.nlm.nih.gov/pubmed/23024607
Curr Genomics. 2012 Apr;13(2):153-62.
Microbial lifestyle and genome signatures.
Dutta C1, Paul S.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3308326/
```INTRODUCTION
SEQUENCE FEATURES OF MICROBIAL GENOMES INFLUENCED BY LIFESTYLE
a) G+C-Content
b) Oligonucleotide Composition
c) Codon Usage
SPECIALIZED LIFESTYLES OF MICROBIAL COMMUNITY & THEIR GENOME SIGNATURESa) Obligatory Intracellular Lifestyle, Characterized by Genome Reductionb) Non-Specialized Intra-Amoebal Lifestyle, Characterized by Genome Expansionc) Strand-Specific Codon Bias, Frequently Observed in Intracellular Microorganismsd) Acquisition of Genome Islands in Organisms Having Pathogenic or Symbiotic Lifestylee) Discriminatory Genome Features of Trophic Life Strategies of Marine Microbesf) Distinct Genome Features in Microbes Adapted to Extreme Environmentsi) Microorganisms Thriving at High Temperaturesii) Microbes Thriving at High SalinityCONCLUDING REMARKS
```

b) Oligonucleotide Composition

It has later been reported [24] that the halophilic microbes, characterized by overrepresentation of the dinucleotides GA/TC, CG and AC/GT, can be differentiated from non-halophiles on the basis of their dinucleotide abundance values.

Free-living bacteria, in general, display stronger bias in oligonucleotide usage than host-associated bacteria, as observed in a hierarchical clustering based on hexanucleotide–based genome signatures of 867 prokaryotic genomes [31]. Recently, comparative analysis of tetranucleotide composition in a set of 774 sequenced microbial genomes revealed convergence of compositional patterns among genomes with similar habitats [34], displaying distinct clusters of obligate intracellular organisms (both pathogen and endosymbiont) and grouping of the halophilic bacterium Salinibacter rubber, not with its fellow Bacteroidetes, but with halophilic and methanogenic Archaea [34].

c) Codon Usage

Distinct niche-specific trends in synonymous codon usage have also been observed in microbes thriving at high salinity [24]. An analysis of synonymous codon usage patterns in bacterial and fungal genomes by Willenbrok et al. [49] demonstrated that differences in codon preferences of translational codon adaptation and dominant codon adaptation provide an environmental signature that can segregate bacteria according to their lifestyle, for instance soil bacteria and soil symbionts, spore formers, enteric bacteria, aquatic bacteria, and small intercellular and extracellular pathogens.

[24]
https://www.ncbi.nlm.nih.gov/pubmed/18397532
Genome Biol. 2008 Apr 9;9(4):R70. doi: 10.1186/gb-2008-9-4-r70.
Molecular signature of hypersaline adaptation: insights from genome and proteome composition of halophilic prokaryotes.
Paul S1, Bag SK, Das S, Harvill ET, Dutta C.

[31]
https://www.ncbi.nlm.nih.gov/pubmed/18421372
PLoS Comput Biol. 2008 Apr 18;4(4):e1000057. doi: 10.1371/journal.pcbi.1000057.
Investigations of oligonucleotide usage variance within and between prokaryotes.
Bohlin J1, Skjerve E, Ussery DW.

[34]
https://www.ncbi.nlm.nih.gov/pubmed/20333228
Genome Biol Evol. 2010 Jan 25;2:117-31. doi: 10.1093/gbe/evq004.
Distinguishing microbial genome fragments based on their composition: evolutionary and comparative genomic perspectives.
Perry SC1, Beiko RG.

[49]
https://www.ncbi.nlm.nih.gov/pubmed/17156429
Genome Biol. 2006;7(12):R114.
An environmental signature for 323 microbial genomes based on codon adaptation indices.
Willenbrock H1, Friis C, Juncker AS, Ussery DW.

----------
Microbial lifestyle and genome signatures.
C Dutta 著 - ‎2012 - ‎被引用数: 35

review
https://www.ncbi.nlm.nih.gov/pubmed/25610432
Front Microbiol. 2015 Jan 6;5:742. doi: 10.3389/fmicb.2014.00742. eCollection 2014.
Evolution of small prokaryotic genomes.
Martínez-Cano DJ1, Reyes-Prieto M2, Martínez-Romero E3, Partida-Martínez LP1, Latorre A2, Moya A2, Delaye L1.

review
https://www.ncbi.nlm.nih.gov/pubmed/24600039
Microbiol Mol Biol Rev. 2014 Mar;78(1):1-39. doi: 10.1128/MMBR.00035-13.
Bacterial genome instability.
Darmon E1, Leach DR.

review
https://www.ncbi.nlm.nih.gov/pubmed/24847957
Annu Rev Microbiol. 2014;68:117-35. doi: 10.1146/annurev-micro-091313-103436. Epub 2014 May 16.
What ecologists can tell virologists.
Dennehy JJ1.

----------
# Salinity

https://www.frontiersin.org/article/10.3389/fmicb.2018.01492
Frontiers | Microbial Community Structure and Functional Potential Along a Hypersaline Gradient | Microbiology

----------
ゲノムサイズとGC含量

https://twitter.com/figshare/status/406777844807639040
GC Content versus Genome Size - NCBI 2013 Completed Bacterial Genomes: http://figshare.com/articles/GC_Content_versus_Genome_Size_NCBI_2013_Completed_Bacterial_Genomes/865528 … #gc #content #genome
8:32 AM - 30 Nov 2013

![](https://pbs.twimg.com/media/BaUqS26CIAEw_AX.png)

http://asserttrue.blogspot.com/2013/05/dna-gc-content-and-survival-value.html
blogorrhea: DNA G+C Content and Survival Value

![](http://1.bp.blogspot.com/-wne70sOdrto/UY417aNwGfI/AAAAAAAABno/qCD9SK8hhLE/s400/GCchart.jpg)

https://www.ncbi.nlm.nih.gov/pubmed/19609354
PLoS Genet. 2009 Jul;5(7):e1000565. doi: 10.1371/journal.pgen.1000565. Epub 2009 Jul 17.
Origin of an alternative genetic code in the extremely small and GC-rich genome of a bacterial symbiont.
McCutcheon JP1, McDonald BR, Moran NA.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2704378/
Figure 1
Relationship between genome size and GC content for sequenced Bacterial and Archaeal genomes.

![http://schaechter.asmblog.org/schaechter/2009/07/an-iconoclastic-endosymbiont.html](http://schaechter.asmblog.org/.a/6a00d8341c5e1453ef0115723c61fc970b-300wi)

----------

review
https://www.ncbi.nlm.nih.gov/pubmed/28538166
Curr Opin Microbiol. 2017 Aug;38:74-80. doi: 10.1016/j.mib.2017.05.001. Epub 2017 May 21.
An evolutionary perspective on plasmid lifestyle modes.
Hülter N1, Ilhan J1, Wein T1, Kadibalban AS1, Hammerschmidt K1, Dagan T2.


https://www.tandfonline.com/doi/abs/10.1080/1040841X.2017.1332003
The multi-omics promise in context: from sequence to microbial isolate: Critical Reviews in Microbiology: Vol 44, No 2

https://www.tandfonline.com/doi/full/10.1080/1040841X.2017.1303661
The impact of insertion sequences on bacterial genome plasticity and adaptability: Critical Reviews in Microbiology: Vol 43, No 6

----------
## 2018-06

https://twitter.com/DrKatHolt/status/1009959456849866752
Kat Holt on Twitter: "So many resistance genes... and now picking up KPC carbapenemase as well. But this ESBL/MDR clone has been spreading silently for a long time… https://t.co/brsd2djYxz"
8:41 PM - 21 Jun 2018

![](https://pbs.twimg.com/media/DgQXD5CU0AEbh15.jpg)

https://twitter.com/biorxivpreprint/status/1009741678289260544
bioRxiv on Twitter: "Emergence and rapid global dissemination of CTX-M-15-associated Klebsiella pneumoniae strain ST307 https://t.co/idRfAqGZhK #bioRxiv"

https://www.biorxiv.org/content/biorxiv/early/2018/06/21/352740.full.pdf
The distribution of ICEKp insertions on the ST307 core genome tree indicated >4 independent acquisitions with limited expansion of recipient sublineages (Figure 2), consistent with the patterns recently reported for ST258 and other common MDR Kp clones [19]. 

Figure 2: Bayesian phylogeny of 95 ST307 isolates. a, 
b, Presence of the yersiniabactin-carrying ICEKp elements (variants coloured as per inset legend), antimicrobial resistance genes (blocks coloured by drug class), and 


----------
## 2018-06-26

系統樹と遺伝子保存度（BSR値）

https://www.ncbi.nlm.nih.gov/pubmed/24749011
PeerJ. 2014 Apr 1;2:e332. doi: 10.7717/peerj.332. eCollection 2014.
The large-scale blast score ratio (LS-BSR) pipeline: a method to rapidly compare genetic content between bacterial genomes.
Sahl JW1, Caporaso JG2, Rasko DA3, Keim P1.

https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3976120/
The integrated toolkit for the exploration of microbial pan-genomes (ITEP) toolkit (Benedict et al., 2014) was recently published and performs similar functions to LS-BSR, including the identification of gene gain/loss at nodes of a phylogeny. 

Figure 2
The distribution of virulence factors and phylogenomic markers associated with a core single nucleotide polymorphism (SNP) phylogeny.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3976120/figure/fig-2/

系統樹と遺伝子の獲得・喪失

https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3890548/
ITEP: An integrated toolkit for exploration of microbial pan-genomes

https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3890548/figure/F2/
Figure 2
Illustration of ITEP’s capabilities for studying gene gain and loss patterns across a phylogeny. 

Analysis of gene gain and loss patterns across phylogeny

コアゲノム系統樹

https://www.ncbi.nlm.nih.gov/pubmed/22666370
PLoS One. 2012;7(5):e37607. doi: 10.1371/journal.pone.0037607. Epub 2012 May 30.
Gene repertoire evolution of Streptococcus pyogenes inferred from phylogenomic analysis with Streptococcus canis and Streptococcus dysgalactiae.
Lefébure T1, Richards VP, Lang P, Pavinski-Bitar P, Stanhope MJ.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3364286/

ゲノムの数を減らして、オーソログの数を増やして、系統解析
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3364286/figure/pone-0037607-g001/
Figure 1
Total evidence trees using the Streptococcus one-to-one core genes (701 orthologs, A) and the four species one-to-one core genes (1072 orthologs, B).

異なる樹形（トポロジー）の例
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3364286/figure/pone-0037607-g002/
Figure 2
The seven topologies and the number of genes mapped to them, found by the Bayesian gene tree concordance analysis.

#188ws 酵母23ゲノムの1070オーソログ遺伝子を用いた系統解析。1070遺伝子の連結配列concatenationに基づく種系統樹は、100%のbootstrapサポートを示すが、1070の異なる遺伝子系統樹の全てに一致しない http://www.ncbi.nlm.nih.gov/pubmed/23657258

http://d.hatena.ne.jp/haruosuz/20080813
1- ゲノムの遺伝子系統樹間の不一致 gene-tree incongruence

http://www.geocities.jp/ancientfishtree/phyMarker.html
系統推定 - Jun Inoue

Salichos L, Rokas A 2013. 
Inferring ancient divergences requires genes with strong phylogenetic signals. Nature 497: 327-+.

　酵母 23 種から得られた 1070 遺伝子 (シンテニーからオーソログと確認されている) を系統解析した研究では，どの遺伝子から得られた樹形も concatenate して得られた樹形とは異なっていた．

----------
## 2018-06-05

https://twitter.com/PatSchloss
https://www.mothur.org

https://twitter.com/Tyu_Shi/status/1006596459255377920
mothurの作者によるperspective。Identifying and Overcoming Threats to Reproducibility, Replicability, Robustness, and Generalizability in Microbiome Research　http://mbio.asm.org/content/9/3/e00525-18.full 
1:57 PM - 12 Jun 2018

https://twitter.com/lteytelman/status/1004254963541741568
This perspective by @PatSchloss should be required reading for scientists, funders, and pubilshers.  
"Identifying and Overcoming Threats to Reproducibility, Replicability, Robustness, and Generalizability in Microbiome Research" http://mbio.asm.org/content/9/3/e00525-18.full
2:53 AM - 6 Jun 2018

https://www.ncbi.nlm.nih.gov/pubmed/29871915
MBio. 2018 Jun 5;9(3). pii: e00525-18. doi: 10.1128/mBio.00525-18.
Identifying and Overcoming Threats to Reproducibility, Replicability, Robustness, and Generalizability in Microbiome Research.
Schloss PD1.


----------
# replication
複製

https://github.com/haruosuz/codon/blob/master/README.md#replication

遺伝子がリーディング鎖に偏る。必須遺伝子で顕著
French, S. 1992. “Consequences of Replication Fork Movement through Transcription Units in Vivo.” Science (New York, N.Y.) 258 (5086): 1362–65. http://www.ncbi.nlm.nih.gov/pubmed/1455232.

Rocha, Eduardo P C, and Antoine Danchin. 2003. “Essentiality, Not Expressiveness, Drives Gene-Strand Bias in Bacteria.” Nature Genetics 34 (4): 377–78. doi:10.1038/ng1209.

Srivatsan, Anjana, Ashley Tehranchi, David M MacAlpine, and Jue D Wang. 2010. “Co-Orientation of Replication and Transcription Preserves Genome Integrity.” PLoS Genetics 6 (1): e1000810. doi:10.1371/journal.pgen.1000810.

Zheng, Wen-Xin, Cheng-Si Luo, Yan-Yan Deng, and Feng-Biao Guo. 2015. “Essentiality Drives the Orientation Bias of Bacterial Genes in a Continuous Manner.” Scientific Reports 5 (January): 16431. doi:10.1038/srep16431.

- Arakawa, Kazuharu, and Masaru Tomita. 2012. “Measures of Compositional Strand Bias Related to Replication Machinery and Its Applications.” Current Genomics 13 (1): 4–15. doi:10.2174/138920212799034749.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3269016/
First, coding sequences are preferentially located in the leading strand in most genomes [25], 

- https://www.ncbi.nlm.nih.gov/pubmed/27196606
PLoS One. 2016 May 19;11(5):e0154306. doi: 10.1371/journal.pone.0154306. eCollection 2016.
Codon Adaptation of Plastid Genes.
Suzuki H1, Morton BR2.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4873144/figure/pone.0154306.g007/
Fig 7
Gene distribution by strand in plastid genomes.

- https://www.ncbi.nlm.nih.gov/pubmed/12217498
Trends Microbiol. 2002 Sep;10(9):393-5.
Is there a role for replication fork asymmetry in the distribution of genes in bacterial genomes?
Rocha E1.
Fig. 2. Distribution of the percentage of genes in the leading strand (a)



----------
## primer

http://kazumaxneo.hatenablog.com/entry/2017/12/25/155719
特異的なプライマーを自動設計する Primer BLAST - macでインフォマティクス

http://togotv.dbcls.jp/20170511.html
2017-05-11 PCRプライマー設計用ツール Primer3の使い方 2017

2012年5月28日
http://first.lifesciencedb.jp/from_dbcls/e0001
統合遺伝子検索GGRNA：遺伝子をGoogleのように検索できるウェブサーバ : ライフサイエンス 新着論文レビュー
2．GGRNAの活用事例
・PCRのプライマー配列から増幅遺伝子や増幅領域を確認する　　CTAGCTGCCAAAGAAGGACAT comp:CAATGAGATGTTGTCGTGCTCのようにして，fowardプライマーの配列と，reverseプライマーの相補鎖の配列とを同時に検索すれば，PCRで増幅する遺伝子や増幅領域を確認できる．

http://staffblog.amelieff.jp/entry/2011/05/24/180000
誰でも簡単にPrimer設計！への道 ~Primer3について~

----------
### phage

https://www.ncbi.nlm.nih.gov/pubmed/31086982
Bioinformatics. 2019 Nov 1;35(21):4402-4404. doi: 10.1093/bioinformatics/btz258.
multiPhATE: bioinformatics pipeline for functional annotation of phage isolates.
Ecale Zhou CL1, Malfatti S1, Kimbrel J1, Philipson C2,3, McNair K4, Hamilton T2, Edwards R4, Souza B1.

### 


https://twitter.com/XabiVC/status/1123503405626826752
Xabier Vázquez-Campos on Twitter: "Any recommendations for detecting #prophages in #bacteria #genomes? Specially from rather fragmented genomes and/or MAGs I've tried PHASTER and Phigaro so far. Any suggestions welcomed. Thanks!"
4:24 AM - 1 May 2019

https://twitter.com/yokadzaki/status/1016332354158071809
面白い。Pseudomonasに感染するファージのゲノムの多様性の高さに注目した研究。この結果を見ると、メタゲノムで得られた未知ウイルスゲノムのホストを特定するのは容易ではないし、比較的良い手がかりになるとされているnucleotide compositionにも実際はかなりばらつきがあるのが分かる
10:44 AM - 9 Jul 2018
https://www.frontiersin.org/articles/10.3389/fmicb.2018.01456/full
Frontiers | Comparative Genomic Analysis of 130 Bacteriophages Infecting Bacteria in the Genus Pseudomonas | Microbiology



### 

http://kazumaxneo.hatenablog.com/entry/2019/05/30/073000
ファージゲノムのORFを予測する PHANOTATE - macでインフォマティクス

Published: 25 April 2019
https://academic.oup.com/bioinformatics/advance-article/doi/10.1093/bioinformatics/btz265/5480131
PHANOTATE: A novel approach to gene identification in phage genomes 

### WIsH

https://www.ncbi.nlm.nih.gov/pubmed/28957499
Bioinformatics. 2017 Oct 1;33(19):3113-3114. doi: 10.1093/bioinformatics/btx383.
WIsH: who is the host? Predicting prokaryotic hosts from metagenomic phage contigs.
Galiez C1, Siebert M1, Enault F2, Vincent J2, Söding J1.


http://kazumaxneo.hatenablog.com/entry/2019/02/04/073000
メタゲノムのphage contigからホスト原核生物ゲノムを予測する WIsH - macでインフォマティクス

### HostPhinder

https://www.ncbi.nlm.nih.gov/pubmed/27153081
Viruses. 2016 May 4;8(5). pii: E116. doi: 10.3390/v8050116.
HostPhinder: A Phage Host Prediction Tool.
Villarroel J1, Kleinheinz KA2, Jurtz VI3, Zschach H4, Lund O5, Nielsen M6,7, Larsen MV8.

http://kazumaxneo.hatenablog.com/entry/2018/08/31/164441
バクテリオファージのホストを推測する HostPhinder - macでインフォマティクス

### 

https://www.ncbi.nlm.nih.gov/pubmed/26657537
FEMS Microbiol Rev. 2016 Mar;40(2):258-72. doi: 10.1093/femsre/fuv048. Epub 2015 Dec 9.
Computational approaches to predict bacteriophage-host relationships.
Edwards RA1, McNair K2, Faust K3, Raes J3, Dutilh BE4.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5831537/
All the bioinformatics code used in this work is available online at http://edwards.sdsu.edu/PhageHosts/.

http://edwards.sdsu.edu/PhageHosts/

### 

https://github.com/simroux/VirSorter
https://www.ncbi.nlm.nih.gov/pubmed/26038737
PeerJ. 2015 May 28;3:e985. doi: 10.7717/peerj.985. eCollection 2015.
VirSorter: mining viral signal from microbial genomic data.
Roux S1, Enault F2, Hurwitz BL3, Sullivan MB1.

http://aclame.ulb.ac.be/Tools/Prophinder/
ACLAME: Prophinder

----------







