# mgsa.resistance
耐性

## Table of Contents
- [updates](#updates)
- [unclassified](#unclassified)
- [metagenome](#metagenome)
- [](#)
- [ARGminer](#argminer)
- [CARD](#card)
- [MEGARes](#megares)
- [ResFinder](#)
- [](#)

----------

a cool map of AMRs in current cities and some public usage data:
https://resistancemap.cddep.org/

Also here is another great map from John Brownstein’s lab:
https://resistanceopen.org/


----------


http://kazumaxneo.hatenablog.com/archive/category/AMR
AMR カテゴリーの記事一覧 - macでインフォマティクス

http://kazumaxneo.hatenablog.com/entry/2018/07/19/142001
メタゲノムから抗生物質耐性情報を検出する NastyBugs - macでインフォマティクス

http://kazumaxneo.hatenablog.com/entry/2018/07/03/113439
抗生物質耐性遺伝子や病原性遺伝子を素早く検索できる ABRicate - macでインフォマティクス

----------
## 

総説 review
https://www.ncbi.nlm.nih.gov/pubmed/31552211
Front Public Health. 2019 Sep 4;7:242. doi: 10.3389/fpubh.2019.00242. eCollection 2019.
Using Genomics to Track Global Antimicrobial Resistance.
Hendriksen RS1, Bortolaia V1, Tate H2, Tyson GH2, Aarestrup FM1, McDermott PF2.
https://www.frontiersin.org/articles/10.3389/fpubh.2019.00242/full
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6737581/
- We conducted a scientific literature review and here we present a description of examples of available tools and databases for antimicrobial resistance (AMR) detection and provide future perspectives and recommendations.
- Table 2
Open-access resources for in silico antimicrobial resistance detection in bacteria.
ABRICATE

総説 review
12:28 PM - 18 Mar 2019
https://twitter.com/volatilebug/status/1107680239818366977
Gautam Dantas on Twitter: "Excited to have our review published on Sequencing-Based Methods and Resources to Study Antimicrobial Resistance in @NatureRevGenet co-authored by WashU PhD students @ManishBoolcha and @alaric_dsouza https://t.co/ObSBXuSn52 #AMR #NGS @WUSTLnews @WUSTLdbbs @WUSTLmed"
https://pubmed.ncbi.nlm.nih.gov/30886350/
Review Nat Rev Genet
. 2019 Jun;20(6):356-370. doi: 10.1038/s41576-019-0108-4.
Sequencing-based methods and resources to study antimicrobial resistance
Manish Boolchandani 1, Alaric W D'Souza 1, Gautam Dantas 2 3 4 5
https://www.nature.com/articles/s41576-019-0108-4
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6525649/
This Review provides a detailed overview of antimicrobial resistance identification and characterization methods, from traditional antimicrobial susceptibility testing to recent deep-learning methods. We focus on sequencing-based resistance discovery and discuss tools and databases used in antimicrobial resistance studies.
https://www.nature.com/articles/s41576-019-0108-4/tables/1
Table 1 Sequencing-based tools for antimicrobial resistance detection
https://www.nature.com/articles/s41576-019-0108-4/tables/2
Table 2 Summary of antimicrobial resistance reference databases

https://www.ncbi.nlm.nih.gov/pubmed/30381421
J Clin Microbiol. 2019 Feb 27;57(3). pii: e01405-18. doi: 10.1128/JCM.01405-18. Print 2019 Mar.
Genome-Based Prediction of Bacterial Antibiotic Resistance.
Su M1,2,3, Satola SW1,3,4, Read TD5,3,4.
https://jcm.asm.org/content/57/3/e01405-18.long
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6425178/
- This review discusses the technologies that made this possible and presents results from recent studies to predict resistance based on genome sequences. 
- TABLE 2
Types of antibiotic resistance loci
Plasmid/mobile element	Presence of a known drug resistance plasmid or mobile genetic cassette (e.g., SCCmec [114]) is used to infer that S. aureus is resistant to a beta-lactams.


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
### MEGARes

https://www.meglab.org/

https://www.meglab.org/megares/

https://www.meglab.org/amrplusplus/

### 2023-01-06
https://pubmed.ncbi.nlm.nih.gov/36382407/
Nucleic Acids Res
. 2023 Jan 6;51(D1):D744-D752. doi: 10.1093/nar/gkac1047.
MEGARes and AMR++, v3.0: an updated comprehensive database of antimicrobial resistance determinants and an improved software pipeline for classification using high-throughput sequencing
Nathalie Bonin 1, Enrique Doster 2, Hannah Worley 3, Lee J Pinnell 2, Jonathan E Bravo 1, Peter Ferm 3, Simone Marini 4, Mattia Prosperi 4, Noelle Noyes 3, Paul S Morley 2, Christina Boucher 1
https://academic.oup.com/nar/article/51/D1/D744/6830666
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC9825433/

### 2020-01-08
https://pubmed.ncbi.nlm.nih.gov/31722416/
Nucleic Acids Res
. 2020 Jan 8;48(D1):D561-D569. doi: 10.1093/nar/gkz1010.
MEGARes 2.0: a database for classification of antimicrobial drug, biocide and metal resistance determinants in metagenomic sequence data
Enrique Doster 1 2 3, Steven M Lakin 3, Christopher J Dean 2, Cory Wolfe 4, Jared G Young 1, Christina Boucher 5, Keith E Belk 6, Noelle R Noyes 2, Paul S Morley 1
https://academic.oup.com/nar/article/48/D1/D561/5624973
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC7145535/

INTRODUCTION

Additionally, we present AMR++ 2.0, a bioinformatics pipeline that addresses many of the expanding use scenarios of metagenomic data,

Method for incorporating new sequences into MEGARes

the AMR++ 2.0 bioinformatic pipeline. This new component integrates the Resistance Gene Identifier (RGI) to confirm the presence of amino acid residues required to confer resistance (37). By pairing the MEGARes 2.0 header format with RGI and wrapping this into the AMR++ 2.0 pipeline,

AMR++ 2.0: bioinformatic pipeline update

Resistome analysis

The AMR++ 2.0 pipeline will extract relevant alignments from the SAM file into a single fasta file for analysis with RGI. Using Prodigal (48), RGI translates sequences in all six reading frames to predict open reading frames, and then detects homologs to proteins in CARD’s database using DIAMOND (49). Results are then filtered with significance thresholds based on bitscore cut-offs with three different algorithms: Perfect, Strict, and Loose. AMR++ 2.0 utilizes RGI’s ‘Perfect’ detection algorithm, which requires that the relevant reads match the reference sequence with 100% homology, and therefore contain the resistance-conferring SNP(s).


----------
### ResFinder

https://www.genomicepidemiology.org/services/
Center for Genomic Epidemiology
Overview of Services

https://cge.food.dtu.dk/services/ResFinder/
ResFinder
Identifcation of acquired antibiotic resistance genes.

https://cge.food.dtu.dk/services/ResFinderFG/
ResFinderFG
Identifcation of functional metagenomic antibiotic resistance determinants.

### 2020-12-01
https://pubmed.ncbi.nlm.nih.gov/32780112/
J Antimicrob Chemother
. 2020 Dec 1;75(12):3491-3500. doi: 10.1093/jac/dkaa345.
ResFinder 4.0 for predictions of phenotypes from genotypes
https://academic.oup.com/jac/article/75/12/3491/5890997
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC7662176/
ResFinder 4.0 was embedded using the same web interface as previous ResFinder versions and available at the link https://cge.cbs.dtu.dk/services/ResFinder-4.0/.

### PointFinder

https://kazumaxneo.hatenablog.com/entry/2018/07/03/094105
点変異も考慮して抗生物質耐性遺伝子を検出する PointFinder - macでインフォマティクス

https://pubmed.ncbi.nlm.nih.gov/29091202/
J Antimicrob Chemother
. 2017 Oct 1;72(10):2764-2768. doi: 10.1093/jac/dkx217.
PointFinder: a novel web tool for WGS-based detection of antimicrobial resistance associated with chromosomal point mutations in bacterial pathogens
Ea Zankari 1 2, Rosa Allesøe 2, Katrine G Joensen 3, Lina M Cavaco 1, Ole Lund 2, Frank M Aarestrup 1
https://academic.oup.com/jac/article/72/10/2764/3979530
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5890747/
```


----------
## updates

### 2023

### 2023-04-21
https://pubmed.ncbi.nlm.nih.gov/37085924/
Microbiome
. 2023 Apr 21;11(1):84. doi: 10.1186/s40168-023-01533-x.
Gauge your phage: benchmarking of bacteriophage identification tools in metagenomic sequencing data
Siu Fung Stanley Ho 1, Nicole E Wheeler 1, Andrew D Millard 2, Willem van Schaik 3
https://microbiomejournal.biomedcentral.com/articles/10.1186/s40168-023-01533-x

Results
Benchmarking with RefSeq phage and nonviral artificial contigs
Ten commonly used tools for viral sequence identification in metagenomes were selected for evaluation: DeepVirFinder, Kraken2, MetaPhinder, PPR-Meta, Seeker, VIBRANT, viralVerify, VirFinder, VirSorter, and VirSorter2. All of these tools can be run locally without relying on a web server, accept metagenomic contigs as input, and have been published in the past decade.


### 2022


### 2021


### 2020

https://kazumaxneo.hatenablog.com/entry/2020/10/25/125213
（NCBI）AMR遺伝子を探索する AMRFinderPlus - macでインフォマティクス


### 2019

https://kazumaxneo.hatenablog.com/entry/2019/02/21/112350
耐性カセットや病原性遺伝子のタイピングを行う SRST2 - macでインフォマティクス




### 2017

https://www.jstage.jst.go.jp/article/faruawpsj/53/1/53_66/_article/-char/ja/
メタゲノムから読み解くヒト・ほ乳類と自然界の薬剤耐性遺伝子の多様性
本多 了
https://www.jstage.jst.go.jp/article/faruawpsj/53/1/53_66/_pdf
最近，Fitzpatrick と Walsh は，
ショットガンメタゲノム配列デー
タの解析ツールである MG-RAST
に登録されているメタゲノム解析
データから，薬剤耐性データベー
ス（ARDB）に登録されている薬剤
耐性遺伝子の配列データを照合・
抽出し，自然界の多種の試料にお
ける薬剤耐性遺伝子の多様性を明
らかにしたので紹介する．１）
ヒト，動物，植物，環境試料な
どを含む約１万件のメタゲノム
データを２４９種の抗生物質に対す
る３８０種の耐性遺伝子２３，１３７配列
と照合し，各メタゲノムデータに
含まれる耐性遺伝子の種類とリー
ド数を得た．また，耐性遺伝子を
含む数を全リード数で割ることで
耐性遺伝子の検出割合を算出した．


Martinez ら は，ヒ ト・動 物・
水・下水・土壌の間の耐性遺伝
子の伝搬に対する３つのボトル
ネックを提示している．２） す

１） Fitzpatrick D., Walsh F., FEMS Microbiol.
Ecol .,９２, fiv１６８（２０１６）.
２） Martinez J. L. et al ., Nat. Rev. Microbiol .,
１３,１１６―１２３（２０１５）.


----------
## metagenome


### PathoFact

https://git-r3lab.uni.lu/laura.denies/PathoFact/

https://pubmed.ncbi.nlm.nih.gov/33597026/
Microbiome
. 2021 Feb 17;9(1):49. doi: 10.1186/s40168-020-00993-9.
PathoFact: a pipeline for the prediction of virulence factors and antimicrobial resistance genes in metagenomic data
Laura de Nies 1, Sara Lopes 1, Susheel Bhanu Busi 1, Valentina Galata 1, Anna Heintz-Buschart 1 2 3, Cedric Christian Laczny 1, Patrick May 4, Paul Wilmes 5
https://microbiomejournal.biomedcentral.com/articles/10.1186/s40168-020-00993-9
https://www.ncbi.nlm.nih.gov/labs/pmc/articles/PMC7890817/

Implementation
https://www.ncbi.nlm.nih.gov/labs/pmc/articles/PMC7890817/#Sec2title

Fig. 1
The PathoFact pipeline. a Framework of the PathoFact pipeline.

The input to the PathoFact pipeline consists of an assembly FASTA file containing nucleotide sequences of the contigs. PathoFact subsequently predicts the ORFs using Prodigal (version 2.6.3) for the prediction of virulence factors, toxins, and antimicrobial resistance genes. 

Workflow for the prediction of antimicrobial resistance genes

For the prediction of ARGs, the workflow is separated into two parts: (i) the prediction of ARGs and (ii) the prediction of MGEs. For the prediction of ARGs, the tools DeepARG (v1.0.1) [20] and RGI (v5.1.0) [21] are used. 




MGEs: plasmids and phages

For the prediction of plasmids, PlasFlow (v1.1) [52] is used, while for the prediction of phages VirSorter (v1.0.6) [53] and DeepVirFinder (v1.0) [54] were incorporated. 

Data analysis and data availability of publicly available datasets

The resulting FASTA files containing the assembled contigs and genes were used as input for PathoFact. For analyses of the predictions, FeatureCounts (v1.6.4) [61] was used to extract the number of reads per functional category. Thereafter, the relative abundance of the toxin genes was calculated using the Rnum_Gi method described by Hu et al [62]. Additionally, the DESeq2 (v1.24) [63] package was used to analyze the differential abundance of virulenc


https://kazumaxneo.hatenablog.com/entry/2021/05/08/131922
メタゲノムデータから病原性遺伝子や薬剤耐性遺伝子を予測するパイプライン PathoFact - macでインフォマティクス


### NastyBugs

Dec 18, 2017
https://github.com/NCBI-Hackathons/MetagenomicAntibioticResistance

https://f1000research.com/articles/6-1971
NastyBugs: A simple method for extracting antimicrobial resistance information from metagenomes [version 1; peer review: 2 approved with reservations]
Hsinyi Tsang1, Matthew Moss2, Greg Fedewa https://orcid.org/0000-0002-3448-38193, Sharif Farag4, Daniel Quang5, Alexey V. Rakov https://orcid.org/0000-0003-1917-91896, Ben Busby https://orcid.org/0000-0001-5267-49887

Further analysis consists of three steps: 1) Host (human) reads removal; 2) Antimicrobial resistance signature identification; 3) Bacterial identification and characterization. Steps 2 and 3 were performed in parallel. Input data is SRA accession numbers (ERR or SRR) of the metagenome of interest. Another option is using FASTQ files from local storage.


Dependencies
The documented workflow contains the script with containerized tools in Docker.

We used the following dependencies: 1) Magic-BLAST v. 1.3, a novel tool allowing mapping of large next-generation RNA or DNA sequencing runs against a whole genome; 2) SAMtools v. 1.3.1, a popular suite of programs for interacting with HTS data; 3) FASTX-Toolkit v. 0.0.13, a collection of command line tools for Short-Reads FASTA/FASTQ files preprocessing; 4) STAR v. 2.5.3a, RNA-seq aligner; and 5) Krona v. 2.7, a tool for metagenomic pie chart visualization.


https://kazumaxneo.hatenablog.com/entry/2018/07/19/142001
メタゲノムから抗生物質耐性情報を検出する NastyBugs - macでインフォマティクス

----------
## unclassified

protein homolog | BLASTP or DIAMOND

on Jan 11
https://github.com/arpcard/rgi
arpcard/rgi: Resistance Gene Identifier (RGI). Software to predict resistomes from protein or nucleotide data, including metagenomics data, based on homology and SNP models.

The Resistance Gene Identifier (RGI)
This application is used to predict resistome(s) from protein or nucleotide data based on homology and SNP models. The application uses reference data from the Comprehensive Antibiotic Resistance Database (CARD).

The RGI currently supports CARD's protein homolog models (use of BLASTP or DIAMOND bitscore cut-offs to detect functional homologs of AMR genes), 


https://card.mcmaster.ca/analyze/rgi
The Comprehensive Antibiotic Resistance Database

RGI Resistance Gene Identifier
RGI can be used to predict resistomes from protein or nucleotide data based on homology and SNP models. Analyses can be performed via this web portal (20 Mb limit), via the command line, or via use of a Galaxy wrapper. The command line version can be obtained from the Download section of the CARD website. You can additionally install RGI from Conda or run RGI from Docker.

----------
### CARD

https://twitter.com/arpcard
CARD Developers (@arpcard) | Twitter

https://card.mcmaster.ca/
The Comprehensive Antibiotic Resistance Database

https://pubmed.ncbi.nlm.nih.gov/31665441/
Nucleic Acids Res
. 2020 Jan 8;48(D1):D517-D525. doi: 10.1093/nar/gkz935.
CARD 2020: antibiotic resistome surveillance with the comprehensive antibiotic resistance database
Brian P Alcock 1 2 3, Amogelang R Raphenya 1 2 3, Tammy T Y Lau 2 3, Kara K Tsang 1 2 3, Mégane Bouchard 2 4, Arman Edalatmand 2 3, William Huynh 2 3, Anna-Lisa V Nguyen 2 4, Annie A Cheng 2 3, Sihan Liu 2 3, Sally Y Min 2 3, Anatoly Miroshnichenko 2 3, Hiu-Ki Tran 2 3, Rafik E Werfalli 2 3, Jalees A Nasir 2 3, Martins Oloni 2 3, David J Speicher 2 3, Alexandra Florescu 2 4, Bhavya Singh 5, Mateusz Faltyn 2 6, Anastasia Hernandez-Koutoucheva 7, Arjun N Sharma 2 3, Emily Bordeleau 1 2 3, Andrew C Pawlowski 8, Haley L Zubyk 1 2 3, Damion Dooley 9, Emma Griffiths 10, Finlay Maguire 11, Geoff L Winsor 10, Robert G Beiko 11, Fiona S L Brinkman 10, William W L Hsiao 9 10 12, Gary V Domselaar 13 14, Andrew G McArthur 1 2 3
https://academic.oup.com/nar/article/48/D1/D517/5608993
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC7145624/

CARD’s Resistance Gene Identifier (RGI)

Resistance gene identifier version 5
Spring 2019 saw release of CARD’s RGI software version 5, which uses the integrated information in CARD to predict resistome for genomic and metagenomic data, either using CARD’s website or as a command-line tool. Briefly, RGI algorithmically predicts AMR genes and mutations from submitted genomes using a combination of open reading frame prediction with Prodigal (38), sequence alignment with BLAST (35) or DIAMOND (39), and curated resistance mutations included with the AMR detection model.

----------
### ARGminer

https://pubmed.ncbi.nlm.nih.gov/32058567/
Bioinformatics
. 2020 May 1;36(9):2966-2973. doi: 10.1093/bioinformatics/btaa095.
ARGminer: a web platform for the crowdsourcing-based curation of antibiotic resistance genes
G A Arango-Argoty 1, G K P Guron 2 3, E Garner 2, M V Riquelme 2, L S Heath 1, A Pruden 2, P J Vikesland 2, L Zhang 1
https://academic.oup.com/bioinformatics/article-abstract/36/9/2966/5736132


http://kazumaxneo.hatenablog.com/entry/2019/05/04/073000
複数データベースを統合した包括的な薬剤耐性遺伝子データベース ARGminer - macでインフォマティクス
ARGminerを使用すると、CARD、DeepARG-DB、ARDB、MEGARes、UniProt、NDARO、SARG、ResFinder、およびARGANNOTなど、いくつかのARGリソースから入手可能なすべての情報を整理および取得できる。


----------






