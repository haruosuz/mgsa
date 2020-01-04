# mgsa.metagenomics
**メタゲノム**

## Table of Contents
- [codon](https://github.com/haruosuz/codon/blob/master/README.md#metagenome)
- [featuring](#featuring)
- [updates](#updates)
[2019](#2019)
[2018](#2018)
[2017](#2017)
- [review](#review)
- [Metagenomic Assembly](#phylophlan)
- [MAG](#mag) Metagenome Assembled Genome
- [book](#book)
- [video](#video)
- [CAMI_challenge](#cami) Critical Assessment of Metagenome Interpretation
- [MGnify](#mgnify) EBI metagenomics
- [meta-analysis](#meta-analysis)
- [people](#people)
[Mori](#mori)
[Rocha](#rocha)
  - [duvallet](#duvallet) Claire Duvallet
- [mothur-qiime](#mothur-qiime)
- [16S](#16s)
- [amplicon-shotgun](#amplicon-shotgun)
- [HGT](#hgt)
- [metabolic inference](#metabolic-inference)
  - [PICRUSt](#picrust)
  - [Tax4Fun](#tax4fun)
  - [themetagenomics](#themetagenomics) removed from CRAN
  - [paprica](#paprica)
  - [Piphillin](#piphillin)

----------
## metabolic inference
メタ16Sからメタゲノム機能推定

日本語のツイート
https://twitter.com/search?q=lang%3Aja%20(PICRUSt%20OR%20Tax4Fun%20OR%20Piphillin)&src=typed_query&f=live

### PICRUSt

https://twitter.com/NoahFierer/status/1179101529044766720
Noah Fierer on Twitter: "PiCrust2: when you want to predict metagenomes slightly better than random (sometimes) https://t.co/4FGgo4oAHN" / Twitter
3:31 AM · Oct 2, 2019

Posted June 15, 2019.
https://www.biorxiv.org/content/10.1101/672295v1
PICRUSt2: An improved and extensible approach for metagenome inference | bioRxiv
https://github.com/picrust/picrust2
Please note that PICRUSt2 is currently in beta.
https://github.com/picrust/picrust2/wiki
PICRUSt2 (Phylogenetic Investigation of Communities by Reconstruction of Unobserved States) is a software for predicting functional abundances based only on marker gene sequences.

https://en.wikipedia.org/wiki/PICRUSt

http://picrust.github.io/picrust/
Please note that PICRUSt2 is now available. PICRUSt2 is a re-written version of PICRUSt and is available here. We are no longer developing PICRUSt1 and we recommend users shift to PICRUSt2.

http://anonym.hatenablog.jp/entry/2018/10/25/172452
QIIME2でPICRUSt2が利用可能になったらしい
http://anonym.hatenablog.jp/entry/2018/09/10/183941
細菌叢解析におけるFunctional Inference
PICRUSt
PICRUSt2
Tax4Fun
Piphillin
SINAPS
http://anonym.hatenablog.jp/entry/2018/07/05/100753
PICRUSt2を使用してみる
http://anonym.hatenablog.jp/entry/2018/03/12/123658
DADA2からPICRUStへ

### Tax4Fun
http://tax4fun.gobics.de/
Tax4Fun: predicting functional profiles from metagenomic 16S rRNA data

09 Dec 2018
http://europepmc.org/article/PPR/PPR64283
Tax4Fun2: a R-based tool for the rapid prediction of habitat-specific functional profiles and functional redundancy based on 16S rRNA gene marker gene sequences - Abstract - Europe PMC
https://www.biorxiv.org/content/10.1101/490037v1
https://www.biorxiv.org/content/10.1101/490037v1.full.pdf
In recent years, several freely available tools such as PICRUSt10, Tax4Fun11, Piphillin12, Faprotax13 and paprica14 have been developed. 

https://www.ncbi.nlm.nih.gov/pubmed/25957349
Bioinformatics. 2015 Sep 1;31(17):2882-4. doi: 10.1093/bioinformatics/btv287. Epub 2015 May 7.
Tax4Fun: predicting functional profiles from metagenomic 16S rRNA data.
Aßhauer KP1, Wemheuer B2, Daniel R2, Meinicke P1.

### themetagenomics
https://github.com/EESI/themetagenomics
themetagenomics provides functions to explore topics generated from 16S rRNA sequencing information on both the abundance and functional levels. It also provides an R implementation of PICRUSt and wraps Tax4fun, giving users a choice for their functional prediction strategy.

Posted June 21, 2019.
https://www.biorxiv.org/content/10.1101/678110v1
Themetagenomics: Exploring Thematic Structure and Predicted Functionality of 16s rRNA Amplicon Data | bioRxiv
https://www.biorxiv.org/content/10.1101/678110v1.full.pdf
Standard methods that predict function from 16S rRNA survey data include PICRUSt, Tax4fun, Piphillin, and SINAPS [14–17]. 

https://github.com/EESI/themetagenomics/issues/10
Package 'themetagenomics' removed from CRAN · Issue #10 · EESI/themetagenomics
The R package on CRAN was removed apparently because of "check errors":
https://cran.r-project.org/web/packages/themetagenomics/index.html
```
Package ‘themetagenomics’ was removed from the CRAN repository.

Formerly available versions can be obtained from the archive.

Archived on 2019-12-21 as check problems were not corrected in time.
```

### paprica

Nov 10, 2019
https://github.com/bowmanjeffs/paprica
PAthway PRediction by phylogenetIC plAcement

August 18, 2015 by Jeff
https://www.polarmicrobes.org/introducing-paprica/
Introducing PAPRICA | The Bowman Lab

### Piphillin
http://piphillin.secondgenome.com/

https://www.ncbi.nlm.nih.gov/pubmed/27820856
PLoS One. 2016 Nov 7;11(11):e0166104. doi: 10.1371/journal.pone.0166104. eCollection 2016.
Piphillin: Improved Prediction of Metagenomic Content by Direct Inference from Human Microbiomes.
Iwai S1, Weinmaier T1, Schmidt BL2, Albertson DG2,3, Poloso NJ4, Dabbagh K1, DeSantis TZ1.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5098786/
Table 2
Piphillin has less pre-requisites than PICRUSt and Tax4Fun.
https://journals.plos.org/plosone/article/figure?id=10.1371/journal.pone.0166104.t002

https://www.pediatricsurgery.site/entry/2017/03/13/152234
16S rRNA遺伝子解析の限界と予測メタゲノム解析 - Piphillinの導入 - Note of Pediatric Surgery
下記の図にPICRUStとTax4Funに必要な条件がまとめられています。
![](http://journals.plos.org/plosone/article/figure/image?size=large&download=&id=10.1371/journal.pone.0166104.t002)

2016-08-13
http://blog.goo.ne.jp/gooquruquru/e/72dd0c0494c54e0f2be827b54af33ba7
予測のためのツールが３つ（PICRUSt, Tax4Fun, paprica）、

### 



https://twitter.com/sai_kai_cs/status/1115428029235322880
腸内細菌の16Sとメタゲノム比較論文。ちゃんと読んでないけど、PICRUStはPathwayレベルで相関係数0.80くらいのようだ 似てる経路もあれば似てない経路もある様子
https://www.ncbi.nlm.nih.gov/pubmed/27148170
Front Microbiol. 2016 Apr 20;7:459. doi: 10.3389/fmicb.2016.00459. eCollection 2016.
Characterization of the Gut Microbiome Using 16S or Shotgun Metagenomics.
Jovel J1, Patterson J1, Wang W1, Hotte N1, O'Keefe S1, Mitchel T1, Perry T1, Kao D1, Mason AL1, Madsen KL1, Wong GK2.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4837688/
The software PICRUSt (Langille et al., 2013) can be used to infer metabolic capacity of the microbiome contained in 16S libraries.



https://www.nature.com/articles/s41579-018-0029-9
Best practices for analysing microbiomes

Predictive functional profiling38,39,40,41 is a technique for linking marker gene data with available microbial genomes to make predictions about metagenomic content and thus the putative biological functions of a microbial community. This analysis generally requires a reference-based OTU table. Methods based on evolutionary models (for example, PICRUSt39) provide confidence intervals on these predictions of gene content, which will tend to be wider in regions of the tree distant from reference genome sequences and narrower where many reference genomes are available. 

https://www.ncbi.nlm.nih.gov/pubmed/26409790
BMC Res Notes. 2015 Sep 26;8:479. doi: 10.1186/s13104-015-1462-8.
PanFP: pangenome-based functional profiles for microbial communities.
Jun SR1,2, Robeson MS3,4, Hauser LJ5, Schadt CW6,7, Gorin AA8.

https://www.ncbi.nlm.nih.gov/pubmed/23149747
Nat Commun. 2012;3:1203. doi: 10.1038/ncomms2203.
Virtual metagenome reconstruction from 16S rRNA gene sequences.
Okuda S1, Tsuchiya Y, Kiriyama C, Itoh M, Morisaki H.



----------
### 

https://www.fifthdimension.jp/documents/metabarcodingtextbook/metabarcodingtextbook.ja.pdf
https://www.fifthdimension.jp/documents/metabarcodingtextbook/metabarcodingtextbook.ja.html
生態学のためのメタバーコーディングとDNAバーコーディング
田辺晶史
2018年5月8日


----------
## HGT

メタゲノムにおける遺伝子水平伝播イベント同定手法に関する総説
review
https://www.ncbi.nlm.nih.gov/pubmed/31504488
Genome Biol Evol. 2019 Oct 1;11(10):2750-2766. doi: 10.1093/gbe/evz184.
Current and Promising Approaches to Identify Horizontal Gene Transfer Events in Metagenomes.
Douglas GM1, Langille MGI1.


### DaisyGPS
https://www.ncbi.nlm.nih.gov/pubmed/31335917
PLoS Comput Biol. 2019 Jul 23;15(7):e1007208. doi: 10.1371/journal.pcbi.1007208. eCollection 2019 Jul.
Where did you come from, where did you go: Refining metagenomic analysis tools for horizontal gene transfer characterisation.
Seiler E1,2, Trappe K1, Renard BY1.

### MetaCHIP

https://www.ncbi.nlm.nih.gov/pubmed/30832740
Microbiome. 2019 Mar 4;7(1):36. doi: 10.1186/s40168-019-0649-y.
MetaCHIP: community-level horizontal gene transfer identification through the combination of best-match and phylogenetic approaches.
Song W1,2, Wemheuer B1,3, Zhang S1,2, Steensen K1,4, Thomas T5,6.

http://kazumaxneo.hatenablog.com/entry/2019/03/12/224600
メタゲノムbinsからHGTを検出する MetaCHIP - macでインフォマティクス

----------
## MGnify

https://www.ebi.ac.uk/metagenomics/
MGnify

https://www.ebi.ac.uk/metagenomics/sequence-search/search/phmmer
phmmer search | EBI metagenomics


https://www.ncbi.nlm.nih.gov/pubmed/31696235
Nucleic Acids Res. 2019 Nov 7. pii: gkz1035. doi: 10.1093/nar/gkz1035. [Epub ahead of print]
MGnify: the microbiome analysis resource in 2020.
Mitchell AL1, Almeida A1,2, Beracochea M1, Boland M1, Burgin J1, Cochrane G1, Crusoe MR3, Kale V1, Potter SC1, Richardson LJ1, Sakharova E1, Scheremetjew M1, Korobeynikov A4, Shlemov A4, Kunyavskaya O4, Lapidus A4, Finn RD1.
https://academic.oup.com/nar/advance-article/doi/10.1093/nar/gkz1035/5614179


https://integbio.jp/dbcatalog/record/nbdc01916
EBI Metagenomics は 対象範囲変更にあわせて名称をMgnifyに変更しました。こちらはすべてのメタゲノミクス研究者を支援することを目的とした、自由に利用可能なリソースです。メタゲノムデータを自動的に解析･保存するパイプラインとして機能します。系統発生の多様性の他、サンプルの機能的および代謝的ポテンシャルについての知見を提供することを目的としています。リポジトリ内のすべての公開データは、自由に参照することができます。

----------
## CAMI
Critical Assessment of Metagenome Interpretation

https://twitter.com/CAMI_challenge

https://msystems.asm.org/content/3/4/e00103-18
Critical Assessment of Metagenome Interpretation Enters the Second Round | mSystems

Currently, CAMI is preparing for a second round of challenges, tentatively planned to open later this year. CAMI will provide data sets representing different environments and again offer assembly, taxonomic and genomic binning, as well as taxonomic profiling challenges (Fig. 1). Two multisample “toy” data sets representing microbial communities from different human body sites and from mouse gut are already provided to allow participants to prepare for the challenges (https://data.cami-challenge.org/participate).

https://www.ncbi.nlm.nih.gov/pubmed/28967888
Nat Methods. 2017 Nov;14(11):1063-1071. doi: 10.1038/nmeth.4458. Epub 2017 Oct 2.
Critical Assessment of Metagenome Interpretation-a benchmark of metagenomics software.



----------
## featuring

http://kazumaxneo.hatenablog.com/archive/category/metagenome
metagenome カテゴリーの記事一覧 - macでインフォマティクス

http://kazumaxneo.hatenablog.com/entry/2017/05/22/164017
メタゲノム解析ツール - macでインフォマティクス




2019年09月02日
https://qiita.com/xvtyzn/items/6a008b61d852dcbaed57
Qiime2を使ったメタゲノム解析パイプライン

http://fox-bioinformatics.net/2019/01/05/qiime2-how-to-install/
QIIME2インストールの方法解説 | Rとバイオインフォマティクス


https://twitter.com/sjackman/status/1045005404227362817
Shaun Jackman on Twitter: "I have a 16 kbp query sequence, and I'd like to search all of SRA (including metagenomes) to see if any SRA read sets match this query sequence. Does this tool exist?"
1:41 PM - 26 Sep 2018

https://twitter.com/i/moments/1000738412117147648
All metagenomes searched at once?

https://twitter.com/tylerbarnumphd/status/1010247842772815872
Tyler Barnum on Twitter: "I wrote a tutorial on how to find new proteins in the ~8,000 Uncultivated Bacteria and Archaea (UBA) genomes from @donovan_parks. It's the largest collection of genomes that you can't search for on BLAST or IMG. ~1,500 metagenomes. https://t.co/PgavpbmsQg Feedback welcome!"
3:47 PM - 22 Jun 2018
https://tylerbarnum.wordpress.com/2018/06/22/searching-uncultivated-bacteria-and-archaea-uba-genomes-for-important-genes/
Searching Uncultivated Bacteria and Archaea (UBA) Genomes for Important Genes – The Biolo-Gist
June 22, 2018

----------

## updates

### 2019



https://www.ncbi.nlm.nih.gov/pubmed/31848574/
Brief Bioinform. 2019 Dec 18. pii: bbz155. doi: 10.1093/bib/bbz155. [Epub ahead of print]
Current challenges and best-practice protocols for microbiome analysis.
Bharti R, Grimm DG.
https://github.com/grimmlab/MicrobiomeBestPracticeReview
Both the workflows are controlled by bash scripts


https://twitter.com/tjsharpton/status/1192820360556793856
Thomas Sharpton on Twitter: "Published! Happy to share our review on statistical methods for integrating multi'omic microbiome data. This results from a wonderful NIGMS/DMS sponsored collaboration with my brilliant statistics colleagues. I hope you find it helpful! cc @CourtneyRArmour https://t.co/lrXI2PXrZK https://t.co/b2mIbFcKSU" / Twitter
12:05 AM · Nov 9, 2019
![](https://pbs.twimg.com/media/EI2_yXcX0AM31w3?format=jpg&name=small)



https://twitter.com/WvSchaik/status/1148595145790689281
Willem van Schaik on Twitter: "Really interesting approach to link ALL microbiome studies and allow for comparative analyses: https://t.co/PVM3HCi7hT by João Rodriguez #FEMS2019"
10:09 AM - 9 Jul 2019

Posted May 21, 2019.
https://www.biorxiv.org/content/10.1101/644740v1
Cartography of opportunistic pathogens and antibiotic resistance genes in a tertiary hospital environment
https://twitter.com/NiranjanTW/status/1131022012556533760
Our hospital microbiome work as part of @metasub! All Illumina and Nanopore data should be available from ENA: Cartography of opportunistic pathogens and antibiotic resistance genes in a tertiary hospital environment https://www.biorxiv.org/content/10.1101/644740v1 …
@kalisvar @oontek1 @mason_lab
1000s of @nanopore assembled genomes and circular plasmid sequences too!


https://www.ncbi.nlm.nih.gov/pubmed/30418481
Bioinformatics. 2019 Jun 1;35(12):2150-2152. doi: 10.1093/bioinformatics/bty905.
MAGpy: a reproducible pipeline for the downstream analysis of metagenome-assembled genomes (MAGs).
Stewart RD1, Auffret MD2, Snelling TJ3, Roehe R2, Watson M1.


https://twitter.com/ASMicrobiology/status/1126925145069817856
We need an ecological understanding of the microbiome as a community of interacting individuals  and an evolutionary understanding of the microbiome as a trait of the host: an @mSystemsJ perspective from @sarahmhird http://ow.ly/UAkL50u2gEp 
3:01 PM - 10 May 2019
https://twitter.com/sarahmhird
Sarah Hird


https://twitter.com/Tyu_Shi/status/1110601849386618880
Tyu_Shi on Twitter: "マウスgut microbiomeの解析でベンダーが違うマウスは別物として扱うのはほぼ常識なので驚きは無いが、こういうのを論文にしてくれるのは引用で済ませられるのでありがたい。 Mouse vendor influence on the bacterial and viral gut composition exceeds the effect of diet https://t.co/mwS8HwmvMf"
1:58 PM - 26 Mar 2019

https://twitter.com/Tyu_Shi/status/1110583615526596609
reference basedとde novo basedのhybrid型ということで一時期持て囃されて流行りそうになったopen or closed reference OTU clustering法が、わりとしっかりと批判されている。
12:45 PM - 26 Mar 2019

https://twitter.com/PatSchloss/status/1110509388664619009
Pat Schloss on Twitter: "Please stop using the open (and closed) reference clustering methods based on USEARCH/VSEARCH. Instead, use de novo clustering algorithms to form OTUs 1/"
7:50 AM - 26 Mar 2019

https://www.ncbi.nlm.nih.gov/pubmed/30902113
Microbiome. 2019 Mar 22;7(1):46. doi: 10.1186/s40168-019-0658-x.
Sunbeam: an extensible pipeline for analyzing metagenomic sequencing experiments.
Clarke EL1, Taylor LJ1, Zhao C2, Connell A1, Lee JJ2, Fett B2, Bushman FD1, Bittinger K3.


### 2018

https://www.ncbi.nlm.nih.gov/pubmed/29950328
J Clin Microbiol. 2018 Aug 27;56(9). pii: e00813-18. doi: 10.1128/JCM.00813-18. Print 2018 Sep.
Lowering the Barriers to Routine Whole-Genome Sequencing of Bacteria in the Clinical Microbiology Laboratory.
Rhoads DD1,2.


https://www.ncbi.nlm.nih.gov/pubmed/29460198
J Plant Res. 2018 Jul;131(4):709-717. doi: 10.1007/s10265-018-1017-x. Epub 2018 Feb 19.
Collaborative environmental DNA sampling from petal surfaces of flowering cherry Cerasus × yedoensis 'Somei-yoshino' across the Japanese archipelago.
Ohta T1, Kawashima T2, Shinozaki NO3, Dobashi A4, Hiraoka S5, Hoshino T6, Kanno K7, Kataoka T8, Kawashima S9, Matsui M10, Nemoto W11, Nishijima S12,13,14, Suganuma N15, Suzuki H16, Taguchi YH17, Takenaka Y18, Tanigawa Y19, Tsuneyoshi M20, Yoshitake K21, Sato Y22, Yamashita R22, Arakawa K23, Iwasaki W10.

Fig.2: "Deblur" -> "Deblur or DADA2" に修正し
https://twitter.com/merenbey/status/999416078446071809
A. Murat Eren (Meren) on Twitter: "This is unfair to DADA2
6:25 PM - 23 May 2018


### 2017

https://www.ncbi.nlm.nih.gov/pubmed/28321234
Front Genet. 2017 Mar 6;8:23. doi: 10.3389/fgene.2017.00023. eCollection 2017.
A Review of Bioinformatics Tools for Bio-Prospecting from Metagenomic Sequence Data.
Roumpeka DD1, Wallace RJ2, Escalettes F3, Fotheringham I3, Watson M1.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5337752/
Data Sharing and Online Portals
MG-RAST (Glass et al., 2010) 
EBI MetaGenomics (Hunter et al., 2014) 
IMG/M (Markowitz et al., 2014) 

https://www.ncbi.nlm.nih.gov/pubmed/25983555
Bioinform Biol Insights. 2015 May 5;9:75-88. doi: 10.4137/BBI.S12462. eCollection 2015.
Metagenomics: tools and insights for analyzing next-generation sequencing data derived from biodiversity studies.
Oulas A1, Pavloudi C2, Polymenakou P1, Pavlopoulos GA3, Papanikolaou N3, Kotoulas G1, Arvanitidis C1, Iliopoulos I3.


### 2017

https://www.microbe.net/2017/11/15/nice-title-nice-paper-microbiome-datasets-are-compositional-and-this-is-not-optional/
Nice title, nice paper: Microbiome Datasets Are Compositional: And This Is Not Optional  – microBEnet: the microbiology of the Built Environment network

1:39 PM - 18 Dec 2017
https://twitter.com/Tyu_Shi/status/942826707022520320
Tyu_Shi on Twitter: "まだ記事は少ないが、ヒト腸内メタ関連のDalhousie Universityでのjournal clubのblog。Points of InterestとPoints of Confusionが箇条書きにされているので、元論文自分で読んだ後にblog読んで人との解釈の差異を知る… https://t.co/HdO5AftF7a"

https://www.ncbi.nlm.nih.gov/pubmed/30197908
Genes Dis. 2017 Sep;4(3):138-148. doi: 10.1016/j.gendis.2017.06.001. Epub 2017 Jun 23.
Hypothesis Testing and Statistical Analysis of Microbiome.
Xia Y1,2, Sun J2.

2017-03-13
http://pediatricsurgery.hatenadiary.jp/entry/2017/03/13/152234
16S rRNA遺伝子解析の限界と予測メタゲノム解析 - Piphillinの導入 - Note of Pediatric Surgery 


2017年11月23日
http://www.natureasia.com/ja-jp/nature/551/7681/nature24460/
バイオインフォマティクス：定量的マイクロバイオームプロファイリングで明らかになった腸内細菌群集の変動と微生物量の関連

3:09 PM - 7 Nov 2017
beneficial microbes 有益な微生物 https://twitter.com/phylogenomics/status/927991509017866240






### 2011

https://wg.biosciencedbc.jp/doku.php/ゲノム・メタゲノム情報を基盤とした微生物dbの統合
ゲノム・メタゲノム情報を基盤とした微生物dbの統合.txt · 最終更新: 2011/12/27 09:54 +0900 (外部編集)


----------

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

----------

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

## MAG
Metagenome Assembled Genome (MAG)

https://www.ddbj.nig.ac.jp/ddbj/qualifiers.html
DDBJ Qualifier key
metagenome_source
定義	Metagenome Assembled Genome (MAG) として得られた配列、すなわち、metagenome から単一 taxon として assemble された場合に、その由来となった metagenome を記載します。

2019年4月25日
https://www.natureasia.com/ja-jp/nature/highlights/98543
Nature ハイライト：ヒト腸内微生物相の構成をこれまでにない分解能で明らかにする
、1万1850のヒト腸のマイクロバイオームから、9万2143のメタゲノムアセンブリーによる再構築ゲノム（MAG）を得て、1952種の未培養の候補細菌を特定した。
、系統発生学的多様性を281％増大させた。
、数百の新しい生合成遺伝子クラスターをコードしていることが分かった。
https://www.nature.com/articles/s41586-019-0965-1
A new genomic blueprint of the human gut microbiota | Nature
Phylogenetic diversity was quantified by the sum of branch lengths using the phytools R package59.


https://twitter.com/jgi/status/1106429999974772736
Joint Genome Inst. on Twitter: "Read "Novel insights from uncultivated genomes of the global human gut #microbiome" in @nature from @BerkeleyLab @LBNLBioSci @jgi and @GladstoneInst @UCSF @czbiohub researchers: https://t.co/5dUrX7zHzd #BioEGSB #DataScience… https://t.co/ExoEkSqpRp"
1:40 AM - 15 Mar 2019
![](https://pbs.twimg.com/media/D1rUODCUgAA8bDz.jpg)

https://twitter.com/TrendsMicrobiol/status/1106251713122578433
Trends Microbiol on Twitter: "Sam Minot spotlights how de novo assembly vastly expands the known microbial universe of the gut microbiome https://t.co/kyUgu6tu1Q"
1:52 PM - 14 Mar 2019
https://www.sciencedirect.com/science/article/pii/S0966842X19300587

https://www.ncbi.nlm.nih.gov/pubmed/30867587
Nature. 2019 Mar 13. doi: 10.1038/s41586-019-1058-x. [Epub ahead of print]
Novel insights from uncultivated genomes of the global human gut microbiome.
Nayfach S1,2, Shi ZJ3,4, Seshadri R5,6, Pollard KS3,4,7, Kyrpides N8,9.

2019Feb28
https://bibgraph.hpcr.jp/abst/pubmed/30816235
メタゲノム集合ゲノムはロシアのカムチャツカにおける2つの温泉プールの微生物多様性への新しい洞察を提供する - Bibgraph（ビブグラフ）| PubMedを日本語で論文検索

再現性のあるパイプライン
https://github.com/WatsonLab/MAGpy
https://www.ncbi.nlm.nih.gov/pubmed/30418481
Bioinformatics. 2018 Nov 10. doi: 10.1093/bioinformatics/bty905. [Epub ahead of print]
MAGpy: a reproducible pipeline for the downstream analysis of metagenome-assembled genomes (MAGs).
Stewart RD1, Auffret M2, Snelling TJ3, Roehe R2, Watson M1.

未培養原核生物のゲノム
https://www.ncbi.nlm.nih.gov/pubmed/30266101
Microbiome. 2018 Sep 28;6(1):173. doi: 10.1186/s40168-018-0550-0.
Genomes from uncultivated prokaryotes: a comparison of metagenome-assembled and single-amplified genomes.
Alneberg J1, Karlsson CMG2, Divne AM3, Bergin C3, Homa F3, Lindh MV2,4, Hugerth LW1,5, Ettema TJG3, Bertilsson S6, Andersson AF7, Pinhassi J8.

http://kazumaxneo.hatenablog.com/entry/2018/10/09/003000
NGSデータまたはアセンブリからバクテリアやアーキアのtaxanomic assignmentを行い、ゲノムのnoveltyなどを評価する MIGA - macでインフォマティクス
　微生物ゲノムアトラス（MiGA）プロジェクトは、ANIに基づいてクエリーゲノムまたはアセンブリされたコンティグ配列の頑強な分類学的分類を提供する。
　さらに、クエリーゲノム配列は、単離されたが分類されていないゲノムや、metagenome-assembled genomes（MAG）およびsingle-cell amplified genome（SAG）コレクションに対して検索し、

http://kazumaxneo.hatenablog.com/entry/2018/05/08/212758
クラスタを自動で決めてビニングする BinSanity - macでインフォマティクス
。Metagenome-assembled genomes （MAG）にcontigを分類することは、メタゲノムデータを分析する際に直面するハードルの1つである。

https://www.ncbi.nlm.nih.gov/pubmed/29234139
Nat Microbiol. 2018 Feb;3(2):253. doi: 10.1038/s41564-017-0083-5.
Author Correction: Recovery of nearly 8,000 metagenome-assembled genomes substantially expands the tree of life.
Parks DH1, Rinke C1, Chuvochina M1, Chaumeil PA1, Woodcroft BJ1, Evans PN1, Hugenholtz P2, Tyson GW3.

https://www.ncbi.nlm.nih.gov/pubmed/28894102
Nat Microbiol. 2017 Nov;2(11):1533-1542. doi: 10.1038/s41564-017-0012-7. Epub 2017 Sep 11.
Recovery of nearly 8,000 metagenome-assembled genomes substantially expands the tree of life.
Parks DH1, Rinke C1, Chuvochina M1, Chaumeil PA1, Woodcroft BJ1, Evans PN1, Hugenholtz P2, Tyson GW3.

2017年09月12日
http://crisp-bio.blog.jp/archives/3772216.html
メタゲノムからアッセンブルしたゲノムにより微生物系統樹30％以上拡張

2017-03
https://repository.kulib.kyoto-u.ac.jp/dspace/bitstream/2433/227988/1/scr_2017_56.pdf
Title 琵琶湖沖に生息する細菌・ウイルスのメタゲノム解析
Author(s) 岡崎, 友輔
細菌メタゲノムにおいては、SPAdes でアセンブリされた塩基配列断片に対し、4-mer および
サンプル間のカバレッジの差異を用いてクラスタリングする手法(binning) を用いた。これによ
り、各細菌系統の MAG(Metagenome Assembled Genome)を構築し、琵琶湖の表水層および
深水層に生息する優占的な細菌系統のゲノムを 90％以上の Completeness で得ることができ
た。

----------
## book

### 2018-11-19
よくわかるバイオインフォマティクス入門/藤博幸/講談社
https://www.kspub.co.jp/book/detail/5138212.html
http://bookclub.kodansha.co.jp/product?item=0000275926
９章　メタゲノム解析

### 2016-12-01
https://www.yodosha.co.jp/yodobook/book/9784758101974/
実験医学別冊：NGSアプリケーション 今すぐ始める！　メタゲノム解析　実験プロトコール〜ヒト常在細菌叢から環境メタゲノムまでサンプル調製と解析のコツ - 羊土社
第1章　メタゲノム解析の基本知識
2．メタゲノムデータの情報解析のオーバービュー【東　光一，森　宙史，黒川　顕】 
### 2016-09-12
http://www.kyoto-up.or.jp/book.php?id=2128
微生物生態学　ゲノム解析からエコシステムまで
Chapter 10　微生物とウィルスのゲノムおよびメタゲノム

----------



----------
## NA
not available
このツールは使用できなくなりました。

### cognizer
https://omictools.com/cognizer-tool
This tool is not available anymore.
https://www.ncbi.nlm.nih.gov/pubmed/26561344
PLoS One. 2015 Nov 11;10(11):e0142102. doi: 10.1371/journal.pone.0142102. eCollection 2015.
COGNIZER: A Framework for Functional Annotation of Metagenomic Datasets.
Bose T1, Haque MM1, Reddy C1, Mande SS1.
The COGNIZER framework includes a cross-mapping database that enables end-users to simultaneously derive/infer KEGG, Pfam, GO, and SEED subsystem information from the COG annotations.



----------
## batch effect

https://www.ncbi.nlm.nih.gov/pubmed/31776547
Brief Bioinform. 2019 Nov 28. pii: bbz105. doi: 10.1093/bib/bbz105. [Epub ahead of print]
Managing batch effects in microbiome data.
Wang Y1, LêCao KA1.

https://www.ncbi.nlm.nih.gov/pubmed/30388197
Bioinformatics. 2019 Jul 1;35(13):2348. doi: 10.1093/bioinformatics/bty874.
Batch effects correction for microbiome data with Dirichlet-multinomial regression.
Dai Z, Wong SH, Yu J, Wei Y.


8x臨床研究の約2,000x糞便メタゲノムのメタアナリシスにより、複数の疾患／特定の病気に関連するヒト腸内マイクロバイオームの機能(KEGG annotated gene families)を同定。バッチ効果(batch effects)に言及
https://www.ncbi.nlm.nih.gov/pubmed/31120034
mSystems. 2019 May 14;4(4). pii: e00332-18. doi: 10.1128/mSystems.00332-18.
A Metagenomic Meta-analysis Reveals Functional Signatures of Health and Disease in the Human Gut Microbiome.
Armour CR1,2, Nayfach S3,4, Pollard KS4,5,6, Sharpton TJ7,8.
https://msystems.asm.org/content/4/4/e00332-18
"certain study effects (i.e., batch effects) are unlikely to be the source of variance between samples."




----------
## meta-analysis
https://ja.wikipedia.org/wiki/メタアナリシス

https://github.com/haruosuz/statistics#meta-analysis

https://twitter.com/search?f=tweets&q=microbiome%20meta-analysis

### 2019

https://twitter.com/EricTopol/status/1112741724302893056
Eric Topol on Twitter: "It's not enough to characterize the gut #microbiome by bacterial content. How #metagenomics tracks with colon #cancer, specific signatures https://t.co/yIH1TeYeVg https://t.co/jqRIcffhGZ @NatureMedicine… https://t.co/VfDiUXjqvO"
11:41 AM - 1 Apr 2019

https://www.nature.com/articles/s41591-019-0406-6
Meta-analysis of fecal metagenomes reveals global microbial signatures that are specific for colorectal cancer | Nature Medicine
Here, a meta-analysis of eight geographically and technically diverse fecal shotgun metagenomic studies of colorectal cancer (CRC, n = 768), which was controlled for several confounders, identified a core set of 29 species significantly enriched in CRC metagenomes (false discovery rate (FDR) < 1 × 10−5). 

https://www.nature.com/articles/s41591-019-0405-7
Metagenomic analysis of colorectal cancer datasets identifies cross-cohort microbial diagnostic signatures and a link with choline degradation | Nature Medicine
We performed a meta-analysis of five publicly available datasets and two new cohorts and validated the findings on two additional cohorts, considering in total 969 fecal metagenomes. 

### Qiita

https://twitter.com/strnr/status/1047841444214558720
Stephen Turner on Twitter: "Qiita (pronounced chee-tah): rapid, web-enabled microbiome meta-analysis Paper: https://t.co/aXTv0cTCND Web: https://t.co/XfwpO4bP0I Docs: https://t.co/CKEEffUSCW Source: https://t.co/HWOT2qYHeZ… https://t.co/RVMns0X6Eo"
9:30 AM - 4 Oct 2018

Qiita (pronounced chee-tah): rapid, web-enabled microbiome meta-analysis 

Paper: https://www.nature.com/articles/s41592-018-0141-9 …
Web: https://qiita.ucsd.edu/ 
Docs: https://qiita.ucsd.edu/static/doc/html/index.html …
Source: https://github.com/biocore/qiita 

https://twitter.com/gibbological/status/1046878477981343744
Sean Gibbons on Twitter: "Qiita: rapid, web-enabled microbiome meta-analysis https://t.co/4Osl11rR8X from @KnightLabNews @gregcaporaso and @Pdorrestein1 labs. Useful tool for all us 'data parasites' :)"
5:44 PM - 1 Oct 2018

batch effect
バッチ効果

https://twitter.com/jongsanders/status/1046836821286686721
Jon Sanders on Twitter: "The Qiita paper is out! So happy to have been able to contribute to this amazing resource. Congrats, @KnightLabNews! https://t.co/QkQ2x363Xi"
2:58 PM - 1 Oct 2018
![](https://pbs.twimg.com/card_img/1046836828454703105/ZFWvyfj5?format=jpg&name=144x144_2)

01 October 2018  & Rob Knight 
https://www.nature.com/articles/s41592-018-0141-9
Qiita: rapid, web-enabled microbiome meta-analysis

### almlab
https://be.mit.edu/directory/eric-alm
Eric Alm
http://almlab.mit.edu/

https://twitter.com/gibbological/status/988476547614105601
Sean Gibbons on Twitter: "Befuddled by batch effects? Check out our simple, non-parametric solution for 16S case-control studies in @PLOSCompBiol https://t.co/grMDm7SIQl -- method available as a @qiime2 plugin thanks to @cduvallet"

https://www.ncbi.nlm.nih.gov/pubmed/29684016
PLoS Comput Biol. 2018 Apr 23;14(4):e1006102. doi: 10.1371/journal.pcbi.1006102. eCollection 2018 Apr.
Correcting for batch effects in case-control microbiome studies.
Gibbons SM1,2,3, Duvallet C1,2, Alm EJ1,2,3.
微生物群集の症例対照研究におけるバッチ効果の補正

April 17, 2018
https://cduvallet.github.io/posts/2018/04/microbiome-data
An empirical analysis of microbiome data availability - Claire Duvallet

https://www.ncbi.nlm.nih.gov/pubmed/29209090
Nat Commun. 2017 Dec 5;8(1):1784. doi: 10.1038/s41467-017-01973-8.
Meta-analysis of gut microbiome studies identifies disease-specific and shared responses.
Duvallet C1,2, Gibbons SM1,2,3, Gurry T1,2,3, Irizarry RA4,5, Alm EJ6,7,8.
We perform a cross-disease meta-analysis of these studies using standardized methods. 
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5716994/
Code availability
The code to reproduce all of the analyses in this paper is available at https://github.com/cduvallet/microbiomeHD. 

https://twitter.com/Kazu_Kasahara/status/938469390739234816
Kazu_Kasahara on Twitter: "流行しているマイクロバイオーム研究に警鐘を鳴らす論文。28報の研究、10疾患のメタ解析から、病気で認める"dysbiosis"の多くは疾患特異的ではなく、バイオマーカーになり難い。 https://t.co/AVJHhcCCcI"
1:05 PM - 6 Dec 2017

### 2018-06
https://twitter.com/ayaKT/status/1005378142146457600
ayaKT on Twitter: "~19000人規模のmicrobiome-GWAS に着手しました論文。どんな解析結果が出てくるのか楽しみ。 いろんな16Sシーケンス手法を比較可能にする考えかたも、勉強になる。fmfm https://t.co/hNMXyZHzWj"
5:16 AM - 9 Jun 2018

https://microbiomejournal.biomedcentral.com/articles/10.1186/s40168-018-0479-3
Meta-analysis of human genome-microbiome association studies: the MiBioGen consortium initiative | Microbiome
We are now in the process of benchmarking the association tests and performing meta-analyses of genome-wide associations. All pipeline and summary statistics results will be shared using public data repositories.

### 2017-12-22
https://www.ncbi.nlm.nih.gov/pubmed/29273717
Nat Commun. 2017 Dec 22;8(1):2260. doi: 10.1038/s41467-017-02209-5.
Strain profiling and epidemiology of bacterial species from metagenomic sequencing.
Albanese D1, Donati C2.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5741664/
- Here we present StrainEst, a novel, reference-based method that uses the single-nucleotide variants (SNV) profiles of the available genomes of selected species to determine the number and identity of coexisting strains and their relative abundances in mixed metagenomic samples.
- meta-analyses

### 2017-11-20
https://twitter.com/NatureMicrobiol/status/932704694912389120
Nature Microbiology on Twitter: ".@drkellysierra & co: Integration and meta-analysis of global #soil datasets uncover patterns of #microbial structure,… https://t.co/QB51kFBtK5"
3:18 PM - 20 Nov 2017

https://www.nature.com/articles/s41564-017-0062-x
Detecting macroecological patterns in bacterial communities across independent studies of global soils | Nature Microbiology
- Whereas previous meta-analysis efforts have focused on bacterial diversity measures or abundances of major taxa, we show that disparate amplicon sequence data can be combined at the taxonomy-based level to assess bacterial community structure.

### 2016
https://www.ncbi.nlm.nih.gov/pubmed/27400279
PLoS Comput Biol. 2016 Jul 11;12(7):e1004977. doi: 10.1371/journal.pcbi.1004977. eCollection 2016 Jul.
Machine Learning Meta-analysis of Large Metagenomic Datasets: Tools and Biological Insights.
Pasolli E1, Truong DT1, Malik F2, Waldron L2, Segata N1.
http://segatalab.cibio.unitn.it/tools/metaml
MetAML - Metagenomic prediction Analysis based on Machine Learning
機械学習

### 2015
https://www.ncbi.nlm.nih.gov/pubmed/26459172
Microbiome. 2015 Oct 13;3:49. doi: 10.1186/s40168-015-0108-3.
Microbiota of the indoor environment: a meta-analysis.
Adams RI1, Bateman AC2, Bik HM3,4, Meadow JF5.
室内環境の微生物群集：メタアナリシス



----------






----------
## mothur-qiime
https://mothur.org

https://www.pediatricsurgery.site/entry/2017/11/19/200241
mothur開発者によるmothurとQIIMEの比較 - Note of Pediatric Surgery

https://biosciencedbc.jp/gadget/human/170831_mori_170830.pdf
メタ16S解析利点
・マシンパワーは少なくて済み、解析ツールも普及(QIIME・mothur等)

https://www.jstage.jst.go.jp/article/jim/29/3/29_135/_article/-char/ja/
総　　説 ＜特集：腸内細菌叢Microbiotaの分子生物学的解析法の成果と未来＞
進化する次世代シーケンサーによる腸内細菌叢の解析
東 佳那子, 中山 二郎
2015 年 29 巻 3 号 p. 135-144
https://www.jstage.jst.go.jp/article/jim/29/3/29_135/_pdf
データセットは,16S rRNA 配列から菌叢データを 得るためのオープンソースソフトウェアを開発してい る Mothur プロジェクト(4)が,Silva の 16S rRNA の全長配列データベースから 14,956 本を網羅的に抽出 し作成したデータセット silva.bacteria.fasta を用いた(http://www.mothur.org/wiki/Silva_reference_files).

ここで は,Mothur 同様,菌叢解析のオープンソースソフトウェ アである QIIME(Quantitative Insights into Microbial Ecology, http://qiime.org/)(5) の assign_taxonomy.py のプログラムの uclust のアルゴリズムを用いた.

https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3775626/
PeerJ. 2013; 1: e157.
Abundance-weighted phylogenetic diversity measures distinguish microbial community states and are robust to sampling depth

In microbial ecology studies, the most commonly used ways of investigating alpha (within-sample) diversity are either to apply non-phylogenetic measures such as Simpson’s index to Operational Taxonomic Unit (OTU) groupings, or to use classical phylogenetic diversity (PD), which is not abundance-weighted. 

As of the publication of this paper, no abundance-weighted phylogenetic alpha diversity measures are implemented in either mothur (Schloss et al., 2009) or QIIME (Caporaso et al., 2010), two of the most popular tools for analysis of microbial ecology data. 


----------
## Greengenes

http://greengenes.secondgenome.com
The Greengenes Database

http://greengenes.secondgenome.com/downloads
Download Area

----------
## RDP

https://www.ncbi.nlm.nih.gov/pubmed/24288368
Nucleic Acids Res. 2014 Jan;42(Database issue):D633-42. doi: 10.1093/nar/gkt1244. Epub 2013 Nov 27.
Ribosomal Database Project: data and tools for high throughput rRNA analysis.
Cole JR1, Wang Q, Fish JA, Chai B, McGarrell DM, Sun Y, Brown CT, Porras-Alfaro A, Kuske CR, Tiedje JM.

http://rdp.cme.msu.edu
RDP Release 11 -- Sequence Analysis Tools

http://rdp.cme.msu.edu/misc/resources.jsp
RDP Resource Download Area

----------
## 16S

https://www.biorxiv.org/content/early/2018/10/13/441576
Nomenclature Errors in Public 16S rRNA Gene Reference Databases


https://www.ncbi.nlm.nih.gov/pubmed/29688343
FEMS Microbiol Lett. 2018 May 1;365(10). doi: 10.1093/femsle/fny104.
A town on fire! Integrating 16S rRNA gene amplicon analyses into an undergraduate microbiology lecture class.
Tobin TC1, Shade A2.
In this module, microbiology students used Quantitative Insights into Microbial Ecology (QIIME) to perform taxonomic, phylogenetic and statistical analyses on bacterial communities from three hot mine fire-impacted surface soils using 16S rRNA gene amplicon sequences. 

https://twitter.com/BioMickWatson

https://www.ncbi.nlm.nih.gov/pubmed/29427429
Appl Environ Microbiol. 2018 Mar 19;84(7). pii: e02627-17. doi: 10.1128/AEM.02627-17. Print 2018 Apr 1.
The Madness of Microbiome: Attempting To Find Consensus "Best Practice" for 16S Microbiome Studies.
Pollock J#1,2, Glendinning L#2, Wisedchanwet T2, Watson M2.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5861821/
Of the three most commonly used alignments which are guided by secondary structure (i.e., Greengenes [73], RDP [74], and SILVA [75]), the Greengenes alignment was observed to be of poor quality, leading to significantly greater richness and diversity estimates.

https://www.microbe.net/2018/03/03/the-attempt-to-find-best-practice-for-16s-studies/
The attempt to find “best practice” for 16S studies – microBEnet: the microbiology of the Built Environment network

https://www.ncbi.nlm.nih.gov/pubmed/29305502
Appl Environ Microbiol. 2018 Mar 1;84(6). pii: e00014-18. doi: 10.1128/AEM.00014-18. Print 2018 Mar 15.
How Much Do rRNA Gene Surveys Underestimate Extant Bacterial Diversity?
Rodriguez-R LM1,2,3, Castro JC1,2, Kyrpides NC4, Cole JR5,6, Tiedje JM5,7,6, Konstantinidis KT8,2,3.

https://twitter.com/BioMickWatson/status/968147242401058817
Mick Watson on Twitter: "If you're working in 16S microbiome research, please read our paper which tries to suggest best practices! https://t.co/XWVRxUKFRW"
The madness of microbiome: Attempting to find consensus “best practice” for 16S microbiome studies
10:34 AM - 26 Feb 2018

https://twitter.com/search?q=ゲノム%2016S

https://www.ncbi.nlm.nih.gov/pubmed/29482646
Microbiome. 2018 Feb 26;6(1):41. doi: 10.1186/s40168-018-0420-9.
Correcting for 16S rRNA gene copy numbers in microbiome surveys remains an unsolved problem.
Louca S1,2, Doebeli M3,4,5, Parfrey LW3,4,6.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5828423/
For over 85% of the examined microbial communities, GCN predictions differed strongly between any two tools compared (R2<0.5). 

https://twitter.com/Tyu_Shi/status/969218896371707904
16S rRNA遺伝子配列で85%以下のIdentityの場合には、近縁系統のゲノム内16S rRNA遺伝子コピー数を補正に使うと補正精度が悪くなるという結果を出し、それを根拠にCopyRighter等の既存の補正ツールを批判しているが、そんな遠い系統を基準に補正をしては精度が下がるのは当然だ。
9:32 AM - 1 Mar 2018

https://twitter.com/yokadzaki/status/968841333400944640
Yusuke Okazaki on Twitter: "16Sアンプリコンseqで各系統のrrnオペロンのコピー数の違いの補正に近縁系統の情報を使う方法はアテにならないので、補正しないで済むデータの使い方をしたほうがマシである、という論文"
8:32 AM - 28 Feb 2018





https://www.ncbi.nlm.nih.gov/pubmed/29506021
Bioinformatics. 2018 Jul 15;34(14):2371-2375. doi: 10.1093/bioinformatics/bty113.
Updating the 97% identity threshold for 16S ribosomal RNA OTUs.
Edgar RC1.

https://twitter.com/yokadzaki/status/968837626013794304
Yusuke Okazaki on Twitter: "この論文はBioRxivのコメント欄でやりあっていて面白いので併せて読んだほうがよい https://t.co/dq9i5so7XG"
8:17 AM - 28 Feb 2018

https://twitter.com/yokadzaki/status/949628412804481025
DB上の細菌ゲノムを使って、全ゲノム>95％で定義されるOTUと16S rRNA>97%で定義されるOTUがどれくらい乖離しているのかを調べた研究。その乖離度が系統によって大きく異なるという結果も（予想通りだけど）面白い。ゲノムサイズが関係ありそうな結果だけど、本文には言及が無かった
8:07 AM - 6 Jan 2018

https://twitter.com/yokadzaki/status/940465660852703232
ゲノムサイズが小さいもの同士でも「近縁系統とのゲノムの違いがどれくらい連続的か」というのに系統間で明らかな差があるというのは面白い。そしてこの結果は「16Sで見えていたものはバイアスだらけ」ということも意味している
1:17 AM - 12 Dec 2017

https://twitter.com/yokadzaki/status/936042447452323840
それを「種」と呼んでいいのかは分からないけど、全ゲノムの相同性で明確に他の系統と区別できる（中間的なものが存在しない）形でクラスターができるという報告が増えてきて、16Sで>97%とかいう謎の基準に依存した研究はもうじき過去のものになりそう
8:21 PM - 29 Nov 2017

https://www.pediatricsurgery.site/entry/2017/11/19/200241
mothur開発者によるmothurとQIIMEの比較 - Note of Pediatric Surgery

mothurではRDP、SILVA、greengenesを使用することができる

https://www.ncbi.nlm.nih.gov/pubmed/28705636
J Biotechnol. 2017 Nov 10;261:2-9. doi: 10.1016/j.jbiotec.2017.07.010. Epub 2017 Jul 10.
A review of bioinformatics platforms for comparative genomics. Recent developments of the EDGAR 2.0 platform and its utility for taxonomic and phylogenetic studies.
Yu J1, Blom J2, Glaeser SP3, Jaenicke S4, Juhre T4, Rupp O4, Schwengers O4, Spänig S4, Goesmann A4.
https://www.sciencedirect.com/science/article/pii/S0168165617315225
But, because it is well known that the phylogenetic resolution of the primary phylogenetic marker, the 16S rRNA gene, is limited at the lower taxonomic levels, the integration of a genome sequence based phylogeny into the polyphasic approach of the prokaryotic taxonomy and systematics is the clear consequence in the genome area (Chun and Rainey, 2014, Ramasamy et al., 2014, Oren and Garrity, 2014, Vandamme and Peeters, 2014, Sangal et al., 2016).

https://www.ncbi.nlm.nih.gov/pubmed/28662636
BMC Genomics. 2017 Jun 29;18(1):499. doi: 10.1186/s12864-017-3888-y.
Relating genomic characteristics to environmental preferences and ubiquity in different microbial taxa.
Cobo-Simón M1, Tamames J2.

https://www.researchgate.net/post/Is_Greengenes_or_SILVA_better_for_bacterial_microbiome_studies
Is Greengenes or SILVA better for bacterial microbiome studies?

https://www.ncbi.nlm.nih.gov/pubmed/28361695
BMC Genomics. 2017 Mar 14;18(Suppl 2):114. doi: 10.1186/s12864-017-3501-4.
SILVA, RDP, Greengenes, NCBI and OTT - how do these taxonomies compare?
Balvočiūtė M1, Huson DH2.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5374703/
For the comparisons we used a taxonomy associated with the Greengenes database as released on May 2013. Although Greengenes is still included in some metagenomic analyses packages, for example QIIME [22], it has not been updated for the last three years.

Mar 2017
https://forum.qiime2.org/t/classification-using-greengenes-v-silva/409
Classification using GreenGenes v. SILVA - User support - QIIME 2 Forum

https://www.ncbi.nlm.nih.gov/pubmed/27166378
Nucleic Acids Res. 2016 Jun 20;44(11):5022-33. doi: 10.1093/nar/gkw396. Epub 2016 May 10.
Phylogeny-aware identification and correction of taxonomically mislabeled sequences.
Kozlov AM1, Zhang J2, Yilmaz P3, Glöckner FO4, Stamatakis A5.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4914121/
First, we evaluate taxonomic annotations of type strains only, using the same sequence set and alignment (LTP v123) for all four databases (data sets GG13_T, LTP123_T, RDP11_T and SLV123_T in Table ​Table1).1). 

http://blog.mothur.org/2015/08/04/No-greengenes-hasnt-improved/
No, greengenes' reference alignment hasn't improved

- SILVA (good for alignment and classification)
- greengenes (good for alignment and classification)
- RDP (good for classification)

https://www.ncbi.nlm.nih.gov/pubmed/27603265
Genome. 2016 Oct;59(10):783-791. Epub 2016 May 11.
bcgTree: automatized phylogenetic tree building from bacterial core genomes.
Ankenbrand MJ1,1, Keller A1,1.
The need for multi-gene analyses in scientific fields such as phylogenetics and DNA barcoding has increased in recent years. In particular, these approaches are increasingly important for differentiating bacterial species, where reliance on the standard 16S rDNA marker can result in poor resolution. 

https://www.ncbi.nlm.nih.gov/pubmed/23460914
PLoS One. 2013;8(2):e57923. doi: 10.1371/journal.pone.0057923. Epub 2013 Feb 27.
The variability of the 16S rRNA gene in bacterial genomes and its consequences for bacterial community analyses.
Větrovský T1, Baldrian P.


2017/08/30
https://www.aist.go.jp/aist_j/press_release/pr2017/pr20170830/pr20170830.html
産総研：進化系統分類の指標となる16S rRNA遺伝子の進化的な中立性を実験的に証明

https://www.nite.go.jp/nbrc/safety/risk_assessment.html
微生物利用におけるリスク評価に関する技術情報の提供 | バイオテクノロジー | 製品評価技術基盤機構
DDHにおける菌種判定の閾値である類似度70%は、ANIにおいて95-96%に相当すると報告されています。このことから、近年では、DDHの代替としてANIに基づく新種の提案が行われてきています(Baek et al. 2015, IJSEM 65: 504; Shahraki et al. 2015, IJSEM 65: 504)。
OTUとは、ある一定以上の類似性（一般的には96-97%）を持つ配列同士を一つの菌種のように扱うための操作上の分類単位です。

バイオレメディエーションにおける生態系影響評価手法	Illumina社MiSeqシーケンサーを用いた、環境中の微生物生態系解析の実験手法およびパイプラインツール「QIIME」を用いたデータ解析手法の手順書です。 2016年3月25日 https://www.nite.go.jp/data/000081956.pdf

https://seikagaku.jbsoc.or.jp/10.14952/SEIKAGAKU.2015.870475/data/index.html
Journal of Japanese Biochemical Society 87(4): 475-477 (2015)
16SリボソームRNAの水平伝播実験からみえてくるリボソームの可塑性
佃 美雪1,2，宮崎 健太郎1,3

https://www.jstage.jst.go.jp/article/kagakutoseibutsu/52/2/52_70/_pdf
化学と生物 Vol. 52, No. 2, 2014
16S rRNA遺伝子の「水平伝播」
異種16S rRNAによる遺伝的相補

2014
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3903645/
MetaMetaDB: A Database and Analytic System for Investigating Microbial Habitability

Therefore, MetaMetaDB chooses the hits exhibiting above 97%, 95%, 90%, 85%, and 80% identity from the search result list, which correspond approximately to the taxonomic levels of species, genus, family, order, and class [1], respectively, 

02/02/13
http://www.jarmam.gr.jp/situmon/16sr_rna.html
16s rRNA の相同性と同定精度の関係は???
一般的には, 97%以上の相同性があれば類縁関係があり、99%以上であれば同種である可能性が高いとしています。
極端な例では, 100%の相同性が認められても, 属レベルで異なる例さえ示されているのです。

2012 年
https://www.jstage.jst.go.jp/article/jslab/23/1/23_24/_pdf
総説
16S rRNA 遺伝子の大量シークェンシングによる 菌叢解析の現状と問題点
是則 有希, Jiahui Jiang, 中山 二郎
属レベルまでの菌叢プロファイルであ れば、Ribosomal Database Project I(I 以下、RDP II)のウェ ブサイトにある RDP classifier を用いることで容易に菌叢 プロファイルに変換することができる。
一方、種レベルでの菌叢データを得ることは非常に困難 である。実際に、理論上 16S rRNA 遺伝子の部分配列か ら種を特定することは不可能であり、

http://www.aist.go.jp/aist_j/press_release/pr2012/pr20121030/pr20121030.html
産総研：生物種を越えた16S rRNA遺伝子の機能相補性を確認

2011
https://www.sbj.or.jp/wp-content/uploads/file/sbj/8912/8912_yomoyama_2.pdf
生物工学基礎講座 バイオよもやま話 何から始めよう 微生物の同定 細菌・アーキア編
浜田 盛之,鈴木 健一朗
特に 16S rRNA 遺伝子配列の相同値が 97% に満たない場合 などは新属になる可能性もあるため,系統樹を作成して 既知の属のクラスターに含まれるのかどうかを慎重に確 認したほうがよい.

https://www.mitsui-norin.co.jp/mmid/knowledge/yokota/index3.html
MMID｜微生物を知ろう｜微生物分類同定講座
16S ｒRNA遺伝子塩基配列の相同性が98％以上の場合、必ずしも同種であるとは限らず、属によっては99％以上であっても別種の場合があります。

https://ja.wikipedia.org/wiki/16S_rRNA系統解析

http://www.jarmam.gr.jp/situmon3/16sr-rna.html
16S rRNAでの微生物同定

----------
## amplicon-shotgun

targeted amplicon sequencing (16S, 18S, ITS) vs. shotgun sequencing (metagenomics)

https://www.ncbi.nlm.nih.gov/pubmed/28337071
J Biomol Tech. 2017 Apr;28(1):8-18. doi: 10.7171/jbt.17-2801-006. Epub 2017 Mar 17.
International Standards for Genomes, Transcriptomes, and Metagenomes.
Mason CE1, Afshinnekoo E2, Tighe S3, Wu S4, Levy S5.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5359768/table/T3/
TABLE 3
Comparison of metagenomic assay capabilities and limitations

https://www.ncbi.nlm.nih.gov/pubmed/28761145
Sci Rep. 2017 Jul 31;7(1):6589. doi: 10.1038/s41598-017-06665-3.
Large-scale differences in microbial biodiversity discovery between 16S amplicon and shotgun sequencing.
Tessler M1,2, Neumann JS3, Afshinnekoo E4,5,6, Pineda M4,5, Hersch R7, Velho LFM8,9, Segovia BT8, Lansac-Toha FA8, Lemke M10, DeSalle R7, Mason CE11,12,13, Brugler MR14,15.

https://www.ncbi.nlm.nih.gov/pubmed/21121044
Pac Symp Biocomput. 2011:165-76.
Comparing bacterial communities inferred from 16S rRNA gene sequencing and shotgun metagenomics.
Shah N1, Tang H, Doak TG, Ye Y.

ボストン交通システムのマイクロバイオーム
https://github.com/haruosuz/metasub/tree/master/references#boston-subway-microbiome
https://microbe.net/2016/06/30/microbes-on-the-boston-t/
The 16S and shotgun results were mostly complementary. Both showed high abundances of Staphylococcus, Corynebacterium, and Streptococcus. The main difference was that the V4 primers could not detect Propionibacterium acnes: these primers are not ideal for skin microbial communities – which is what the subway most resembled (based on Microbial SourceTracker and correlations in abundance with skin taxa). 

https://twitter.com/Tyu_Shi/status/982940944495403009
Tyu_Shi on Twitter: "したがって、16S rRNA遺伝子のみの解析をメタゲノム解析と呼ぶのは、マイクロバイオーム業界で常識ではありません。概念としては誤用だと個人的には考えておりますし、古くからメタゲノム解析に関わってきたUC DavisのJ. Eisen等の研究者も、たびたびその誤用を批判しております。… https://t.co/SpajjZUOIW"
7:19 AM - 8 Apr 2018

https://twitter.com/Tyu_Shi/status/248334905816276993
Tyu_Shi on Twitter: "Many INSDC entry of 16S rRNA amplicon study use terms "metagenome". troublesome! #GSC14"
4:17 AM - 19 Sep 2012

https://twitter.com/phylogenomics/status/966887584608567297
Jonathan Eisen on Twitter: "Not sure where you are going with this but I don't think there can be any debate here - the term "metagenome" and its variants like "metagenomics" clearly refer to genome-scale studies and thus there is simply no way a 16S study should be called "metagenomics"… https://t.co/ScdBSzIzlG"
11:08 PM - 22 Feb 2018

https://phylogenomics.blogspot.com/2012/08/referring-to-16s-surveys-as.html
The Tree of Life: Referring to 16S surveys as "metagenomics" is misleading and annoying #badomics #OmicMimicry


----------
## people


### duvallet
Claire Duvallet

MITのEric Almラボ。微生物群集データのメタアナリシス。バッチ効果。

https://twitter.com/cduvallet

7:42 PM - 23 Apr 2018
https://twitter.com/cduvallet/status/988563768765505536
Claire Duvallet on Twitter: "Meaning to make a meta-analysis but blocked or bothered by batch effects? Use your controls as nulls: normalize features in cases relative to their distribution in control samples. Learn more at @PLOSCompBiol https://t.co/PHyVZoZlej Congrats @gibbological!! @ejalm"

1:55 PM - 23 Apr 2018
https://twitter.com/gibbological/status/988476547614105601
Sean Gibbons on Twitter: "Befuddled by batch effects? Check out our simple, non-parametric solution for 16S case-control studies in @PLOSCompBiol https://t.co/grMDm7SIQl -- method available as a @qiime2 plugin thanks to @cduvallet"

April 17, 2018
https://cduvallet.github.io/posts/2018/04/microbiome-data
An empirical analysis of microbiome data availability - Claire Duvallet

19 January 2018
https://onlinelibrary.wiley.com/doi/full/10.1111/1751-7915.13047
Meta‐analysis generates and prioritizes hypotheses for translational microbiome research - Duvallet - 2018 - Microbial Biotechnology - Wiley Online Library
Claire Duvallet

05 December 2017
https://www.nature.com/articles/s41467-017-01973-8
Meta-analysis of gut microbiome studies identifies disease-specific and shared responses | Nature Communications
Claire Duvallet, Sean M. Gibbons, Thomas Gurry, Rafael A. Irizarry & Eric J. Alm


----------
### Mori

https://researchmap.jp/himori/

http://doi.org/10.7875/ajacs.2017.016
開催日時：2017-08-31
講習会名： 2017NGSハンズオン
講師： 森 宙史　（ 国立遺伝学研究所）
会場： 東京大学 農学部2号館 2階第1講義室

https://doi.org/10.7875/togotv.2017.119
2017-12-06 【NGSハンズオン2017】NGS解析(初〜中級) メタゲノム解析
本日の統合TVは、2017年8月28日(月) ～ 9月2日(金)に開催された、バイオインフォマティクス人材育成カリキュラム 平成29年度 NGSハンズオン講習会 から、国立遺伝学研究所 森 宙史 氏 による「NGS解析(初〜中級) メタゲノム解析」をお送りします。約5時間22分です。

https://biosciencedbc.jp/gadget/human/170831_mori_170830.pdf
2017年 NGSハンズオン講習会 8月31日
メタゲノム解析
森 宙史(HiroshiMori),Ph.D.

代表的なメタゲノムデータベース
MG-RAST
EBI-Metagenomics


https://www.slideshare.net/DDBJslide/ddbjing30-43012395
[DDBJing30] メタゲノム解析と微生物統合データベース
講師：森 宙史
2014年12月18日


https://www.jstage.jst.go.jp/article/johokanri/55/3/55_167/_html/-char/ja
メタゲノム解析の現状と将来　知識データベースの開発
森 宙史, 山田 拓司, 黒川 顕
55 巻 (2012) 3 号 p. 167-175
さらに大規模なプロジェクトとして進行中なのが，2010年に日本を除く米欧中を中心とした12か国70人の研究者が立ち上げたEMP（Earth Microbiome Project）10)である。



### Rocha

https://www.ncbi.nlm.nih.gov/pubmed/20090831
PLoS Genet. 2010 Jan 15;6(1):e1000808. doi: 10.1371/journal.pgen.1000808.
The systemic imprint of growth and its uses in ecological (meta)genomics.
Vieira-Silva S1, Rocha EP.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2797632/




----------
## Knight R

https://knightlab.ucsd.edu/wordpress/?page_id=25

https://www.ncbi.nlm.nih.gov/pubmed/29795328
Nat Rev Microbiol. 2018 Jul;16(7):410-422. doi: 10.1038/s41579-018-0029-9.
Best practices for analysing microbiomes.
Knight R1,2,3, Vrbanac A4, Taylor BC4, Aksenov A5, Callewaert C6,7, Debelius J6, Gonzalez A6, Kosciolek T6, McCall LI5, McDonald D6, Melnik AV5, Morton JT6,8, Navas J8, Quinn RA5, Sanders JG6, Swafford AD9, Thompson LR10,11, Tripathi A12, Xu ZZ6, Zaneveld JR13, Zhu Q6, Caporaso JG14, Dorrestein PC9,5,6.

https://www.ncbi.nlm.nih.gov/pubmed/29795540
Nat Microbiol. 2018 Jun;3(6):652-661. doi: 10.1038/s41564-018-0156-0. Epub 2018 May 24.
Methods for phylogenetic analysis of microbiome data.
Washburne AD1, Morton JT2,3, Sanders J3, McDonald D3, Zhu Q3, Oliverio AM4,5, Knight R2,3.

----------
## Mason CE

https://www.ncbi.nlm.nih.gov/pubmed/29930288
Nat Rev Microbiol. 2018 Jun 21. doi: 10.1038/s41579-018-0047-7. [Epub ahead of print]
Surveying what's flushed away.
Iraola G1,2,3, Kumar N3.
https://www.nature.com/articles/s41579-018-0047-7

https://www.ncbi.nlm.nih.gov/pubmed/29890228
Drug Discov Today. 2018 Jun 8. pii: S1359-6446(17)30357-4. doi: 10.1016/j.drudis.2018.06.005. [Epub ahead of print]
Interrogating the microbiome: experimental and computational considerations in support of study reproducibility.
Poussin C1, Sierro N1, Boué S1, Battey J1, Scotti E1, Belcastro V1, Peitsch MC1, Ivanov NV1, Hoeng J2.
Review
Informatics

https://link.springer.com/protocol/10.1007/978-1-4939-7463-4_8
Comparative Metagenomics | SpringerLink
Andrew Maltez ThomasFelipe Prata LimaLivia Maria Silva MouraAline Maria da SilvaEmmanuel Dias-NetoJoão C. SetubalEmail author
Protocol
First Online: 26 December 2017

https://www.ncbi.nlm.nih.gov/pubmed/28978331
Microbiome. 2017 Oct 4;5(1):132. doi: 10.1186/s40168-017-0349-4.
Communicating the promise, risks, and ethics of large-scale, open space microbiome and metagenome research.
Shamarina D1, Stoyantcheva I1, Mason CE2,3,4, Bibby K5, Elhaik E6.

https://www.ncbi.nlm.nih.gov/pubmed/28934964
Genome Biol. 2017 Sep 21;18(1):182. doi: 10.1186/s13059-017-1299-7.
Comprehensive benchmarking and ensemble approaches for metagenomic classifiers.
McIntyre ABR1,2,3, Ounit R4, Afshinnekoo E2,3,5, Prill RJ6, Hénaff E2,3, Alexander N2,3, Minot SS7, Danko D1,2,3, Foox J2,3, Ahsanuddin S2,3, Tighe S8, Hasan NA9,10, Subramanian P9, Moffat K9, Levy S11, Lonardi S4, Greenfield N7, Colwell RR9,12, Rosen GL13, Mason CE14,15,16.

https://www.ncbi.nlm.nih.gov/pubmed/28349976
Nat Microbiol. 2017 Mar 28;2:16275. doi: 10.1038/nmicrobiol.2016.275.
Geomicrobiology of the built environment.
Gadd GM1.
http://www.nature.com/articles/nmicrobiol2016275

https://www.ncbi.nlm.nih.gov/pubmed/27941038
Br Med Bull. 2016 Dec;120(1):27-33. Epub 2016 Nov 23.
Globalizing and crowdsourcing biomedical research.
Afshinnekoo E1,2,3, Ahsanuddin S1,2,4, Mason CE5,2,6.




----------


https://jp.illumina.com/content/dam/illumina-marketing/apac/japan/documents/pdf/publicaton_metagenome_for-human-health-j.pdf
ヒトの健康における細菌およびメタゲノムイルミナテクノロジーを使用した最新論文の概要
https://jp.illumina.com/science/publication-reviews.html
論文集 | 最近発表された研究の要点

山田拓司 著

https://www.jstage.jst.go.jp/article/jim/29/1/29_19/_article/-char/ja/
https://www.jstage.jst.go.jp/article/jim/29/1/29_19/_pdf
腸内細菌群集構造のメタゲノム解析 - J-Stage
腸内細菌学雑誌 29 : 19-22,2015

https://jp.illumina.com/content/dam/illumina-marketing/apac/japan/documents/pdf/2014_webinar_mktg30_microbiology.pdf
[PDF]ヒト腸内細菌叢メタゲノム解析

https://www.jstage.jst.go.jp/article/kagakutoseibutsu/51/12/51_802/_pdf
ヒト腸内メタゲノム解析が 広げる医療展開 - J-Stage
化学と生物 Vol. 51, No. 12, 2013




----------




