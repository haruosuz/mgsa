# mgsa.annotation
アノテーション

## Table of Contents
- [updates](#updates)
- [annotathon](#annotathon)
- [kegg](#kegg)
- [eggnog](#eggnog)
- [dfast](#dfast)
- [prokka](#prokka)
- [phyre](#phyre) Protein Homology/AnalogY Recognition Engine
- [resistance](#resistance) 耐性
- [people](#people)
  - [koji.yahara](#koji.yahara)
- [excerpt](#excerpt) 抜粋［引用］

----------

https://bioinformaticsonline.com/pages/view/34685/tools-for-bacterial-whole-genome-annotation
BOL: Tools for bacterial whole genome annotation

----------
## updates

### 2019

https://www.ncbi.nlm.nih.gov/pubmed/31097009
Genome Biol. 2019 May 16;20(1):92. doi: 10.1186/s13059-019-1715-2.
Next-generation genome annotation: we still struggle to get it right.
Salzberg SL1.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6521345/
High-throughput annotation of eukaryotic genomes
Finding genes in bacteria is relatively easy, in large part because bacterial genomes are approximately 90% protein-coding, with relatively short intergenic stretches in between every pair of genes. The gene-finding problem is mostly about deciding which of the six possible reading frames (three in each direction) contains the protein, and computational gene finders take advantage of this to produce highly accurate results. Thus, although we still don’t know the functions of many bacterial genes, at least we can be confident that we have their amino acid sequences correct.

In eukaryotes, by contrast, the gene-finding problem is far more difficult, because (i) genes are few and far between, and (ii) genes are interrupted by introns. Thus, while 90% of a typical bacterial genome is covered by protein-coding sequences, only about 1.3% of the human genome (40.2 Mb in the CHESS 2.2 database [2]) comprises protein-coding exons. 


### 2017

http://www.iu.a.u-tokyo.ac.jp/~kadota/book/JSLAB9_suppl_win_20170201.pdf
次世代シーケンサーデータの解析手法 第9回ゲノムアノテーションとその可視化、 DDBJへの登録
ウェブ資料

日本乳酸菌学会誌
Vol. 28 No. 1 3 ～ 11（2017）
http://www.iu.a.u-tokyo.ac.jp/~kadota/JSLAB_9_kadota.pdf
次世代シーケンサーデータの解析手法 第 9 回 ゲノムアノテーションとその可視化、DDBJ への登録
谷澤 靖洋、真島 淳、藤澤 貴智、李 慶範、 中村 保一、清水 謙多郎、門田 幸二

DFAST を用いたゲノムアノテーション

 Prokka は、CDS、rRNA、tRNA の 予 測 と い っ た 基 本的なアノテーションに加えて、CRISPR(Clustered regularly interspaced short palindromic repeats)32) や シグナルペプチドの検出機能を備えている。Prokka の高 速なアノテーションは、予測された CDS を複数の参照ア ミノ酸配列 DB に対して段階的に検索していくことで実 現されている。はじめに近縁種から得られた配列を中心 に構成されたより信頼できる参照 DB に対して BLAST 検索を行い、そこでヒットしなかった遺伝子はより包括 的な参照 DB を用いて検索される。そこでもヒットしな かった遺伝子については、最終的に隠れマルコフモデル を用いたモチーフ・ドメイン検索ソフト HMMER3 33)を 使って Pfam 34) や TIGRFAMs 35) などの DB に対して検 索を行う。

http://www.iu.a.u-tokyo.ac.jp/~kadota/JSLAB_5_kadota.pdf
 ウェブベースで手軽に利用できるバクテリア用の解析パ 14 イプラインも存在する。連載第 1 回でも触れた Galaxy ベー 15 スのものとしては、Orione 14)というウェブツールが提供 16 されている。Orione の枠組みで、リードの QC、de novo 17 assembly、CISA 15)による scaffolding やアセンブリ後の 18 解析、Prokka 16)によるアノテーションまで一通りの解析 19 が可能である。

### 2016

https://www.ncbi.nlm.nih.gov/pubmed/27856568
FEMS Microbiol Lett. 2016 Dec;363(23). pii: fnw263. doi: 10.1093/femsle/fnw263. Epub 2016 Nov 16.
Genix: a new online automated pipeline for bacterial genome annotation.
Kremer FS1, Eslabão MR2, Dellagostin OA2, Pinto LD1.
https://academic.oup.com/femsle/article/363/23/fnw263/2726782
http://labbioinfo.ufpel.edu.br/genix/

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

### 2010

BH10.10 2010.10.20-23
https://wiki.lifesciencedb.jp/mw/オルソログクラスターへの自動命名手法の開発
Biocuration 2010の総括 -yy
マニュアルキュレーションされた良い名前ならGO termをつかうべき。ないGO termがあれば作ればいい
オルソログクラスターは何を使うのか？→eggNOG, KEGG OC...任意の遺伝子セット
どうやってつかうのか？→尤もらしい名前をひとつだけ推薦する、アノテーターに複数の候補を推薦

----------
## annotathon
Annotathon(=Annotation+Marathon)

http://bit.ly/annotathon2019

https://twitter.com/hashtag/annotathon?f=live

https://twitter.com/chalkless/status/931390702595878912
Nakazato T. on Twitter: "アノテーションの際に用いるツールなどのリストアップをしてみています。興味のある方はご自由に書き込みください。質問も歓迎 https://t.co/MagBjfy0y4 #annotathon"
2:17 PM · Nov 17, 2017
https://docs.google.com/spreadsheets/d/1eFFSILjN1OqMitzJVMwJYomwZGZ4N1QRK8mesXWuaQI/edit#gid=0
MiGAP
DFAST
Prokka

----------

### kegg

http://kazumaxneo.hatenablog.com/entry/2020/02/06/155212
KEGGの遺伝子アノテーション結果を要約する GAEV - macでインフォマティクス

https://qiita.com/danryo_official/items/f682ddcae5ccf97aa49b
BlastKOARAでパスウェイ解析 - Qiita

### KofamScan

https://twitter.com/ReiterTaylor/status/1127287338327896064
Taylor Reiter on Twitter: "I wrote a tutorial on how to use kofamscan on the command line: https://t.co/o9WRfXDKU2 I'm so pleased to be able to use this tool independent of the web interface. No more 300mb cutoffs + email submissions!… https://t.co/ULebatHI98"
3:00 PM - 11 May 2019

https://taylorreiter.github.io/2019-05-11-kofamscan/
How to run kofamscan

Posted April 08, 2019.
https://www.biorxiv.org/content/10.1101/602110v1
KofamKOALA: KEGG ortholog assignment based on profile HMM and adaptive score threshold | bioRxiv
Takuya Aramaki, Romain Blanc-Mathieu, Hisashi Endo, Koichi Ohkubo, Minoru Kanehisa, Susumu Goto, Hiroyuki Ogata
Availability KofamKOALA, KofamScan, and KOfam are freely available from https://www.genome.jp/tools/kofamkoala/

----------

## eggnog

http://eggnogdb.embl.de/#/app/emapper
EggNOG Database | Orthology predictions and functional annnotaion

https://integbio.jp/dbcatalog/record/nbdc02042
Evolutionary Genealogy of Genes: Non-supervised Orthologous Groups:  eggNOG
オーソロガスな遺伝子群のデータベースです。（遺伝子オーソログのデータベースです。）これらのオーソロガス群には、機能を説明するアノテーション（様々なアノテーションにもとづき、遺伝子に共通する特徴 [denominator] を特定することにより抽出したもの）、機能カテゴリーのアノテーション（オリジナルの COG/KOG カテゴリーから抽出したもの)が付されています。タンパク質名と生物種を指定し、オーソロガスな遺伝子を探す対象をヒト、哺乳類、バクテリア、マウス、真核生物から選択すると、生物種とオーソロガスな遺伝子群の一覧が表示されます。検索結果リストやオーソログ遺伝子のアミノ酸配列のダウンロードが可能です。また、生物種ごとの遺伝子、アノテーション、配列情報もダウンロードできます。

https://twitter.com/yokadzaki/status/958651006702661632
Yusuke Okazaki on Twitter: "eggNOG-mapper便利。"https://t.co/pWUltPTHld -i <input.fa> -o <outname> -m diamond --cpu <ncpu>"でアミノ酸FASTA投げたら全自動でアノテーションしてCOGカテゴリとKO番号まで出してくれる。こいつとpVOGを併せて使えば環境ウイルスメタゲノムでも40%弱のORFに一応アノテーションがついた"
5:39 AM - 31 Jan 2018


19 Sep. 2019. Jun Inoue
http://www.fish-evol.org/phyMarker.html
系統推定 - Jun Inoue
巨大な配列データセットの機能アノテーションを行う eggNOG-Mapper の報告．スタンドアローンとオンライン・サービスがある．eggNOG データベースで，すでに推定されているオーソログクラスターと系統樹を用いることで，高速化．

https://www.ncbi.nlm.nih.gov/pubmed/28460117
Mol Biol Evol. 2017 Aug 1;34(8):2115-2122. doi: 10.1093/molbev/msx148.
Fast Genome-Wide Functional Annotation through Orthology Assignment by eggNOG-Mapper.
Huerta-Cepas J1, Forslund K1, Coelho LP1, Szklarczyk D2,3, Jensen LJ4, von Mering C2,3, Bork P1,5,6,7.

----------

## [DFAST](https://github.com/nigyta/dfast_core)
DFAST - DDBJ Fast Annotation and Submission Tool

http://togotv.dbcls.jp/20180318.html
微生物ゲノムのキラーアノテーションパイプライン DFASTの紹介 @ Annotathon2017

https://www.ncbi.nlm.nih.gov/pubmed/29106469
Bioinformatics. 2018 Mar 15;34(6):1037-1039. doi: 10.1093/bioinformatics/btx713.
DFAST: a flexible prokaryotic genome annotation pipeline for faster genome publication.
Tanizawa Y1, Fujisawa T1, Nakamura Y1.

http://wiki.lifesciencedb.jp/mw/BH16.12/DFAST

----------
## [Prokka](http://www.vicbioinformatics.com/software.prokka.shtml)
 - [Invoking Prokka](https://github.com/tseemann/prokka#invoking-prokka)
- FEB 6, 2017 [BINF 6203: Bacterial genome annotation with prokka | Genome Intelligence](http://genomeintelligence.org/?p=1212)
 - [Genome annotation and Pangenome analysis](https://github.com/microgenomics/tutorials/blob/master/pangenome.md)
  - [Annotating genomes](https://github.com/microgenomics/tutorials/blob/master/pangenome.md#annotating-genomes)
 - [Annotating the assembly using the PROKKA pipeline — Metagenomics Workshop SciLifeLab 1.0 documentation](http://metagenomics-workshop.readthedocs.io/en/latest/functional-annotation/prokka.html)
 - [Annotating a bacterial genome with Prokka — 2013-caltechworkshop 0.1 documentation](http://2013-caltech-workshop.readthedocs.org/en/latest/prokka-annotation.html)

https://angus.readthedocs.io/en/2016/_static/bacterial_genome_annotation.pdf
Small genome annotation - T.Seemann - GCC 2016 - Bloomington IN, USA - Mon 27 Jun 2016

http://crusade1096.web.fc2.com/katei.html
メタアセンブル後に遺伝子予測を行います。バクテリアの遺伝子予測で紹介したprokkaやGeneMarkは，メタゲノム用にも使用できます。実行時間に大きく差があり，数によってはprokkaの場合だと数日かかる実行時間が，MetaGeneMarkを使用すれば，数分で完了することが可能です。

http://kazumaxneo.hatenablog.com/entry/2017/06/18/165258
バクテリア、ウィルス、アーキアのアノテーションツール; Prokka - macでインフォマティクス


----------
## phyre2

http://www.sbg.bio.ic.ac.uk/phyre2

https://en.wikipedia.org/wiki/Phyre
Phyre and Phyre2 (Protein Homology/AnalogY Recognition Engine; pronounced as 'fire') are web-based services for protein structure prediction

https://www.ncbi.nlm.nih.gov/pubmed/25950237
Nat Protoc. 2015 Jun;10(6):845-58. doi: 10.1038/nprot.2015.053. Epub 2015 May 7.
The Phyre2 web portal for protein modeling, prediction and analysis.
Kelley LA1, Mezulis S1, Yates CM1, Wass MN1, Sternberg MJ1.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5298202/
 In collaboration with other groups we have applied Phyre2 to the annotation of a wide range of genomes4–6.

http://park.itc.u-tokyo.ac.jp/hakko/links.html
タンパク質構造解析関連
Phyre2
アミノ酸配列をもとに構造を予測し、類似した構造を持つタンパク質を返すサイト

https://sci-tech.ksc.kwansei.ac.jp/~tohhiro/bioinfo18/bioinfo2018-8.pdf
Fold Recognition䛾ため䛾サーバ
(1) Phyre (昔䛾3D-PSSM）

http://shushoku-signal.umin.jp/images/wakate2013ishitani.pdf
構造予測サーバーPhyre2

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
J Clin Microbiol. 2019 Feb 27;57(3). pii: e01405-18. doi: 10.1128/JCM.01405-18. Print 2019 Mar.
Genome-Based Prediction of Bacterial Antibiotic Resistance.
Su M1,2,3, Satola SW1,3,4, Read TD5,3,4.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6425178/

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
## people

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
## excerpt
抜粋［引用］

https://www.ncbi.nlm.nih.gov/pubmed/30910818
G3 (Bethesda). 2019 May 7;9(5):1321-1329. doi: 10.1534/g3.118.200978.
Genomic Analysis of Pseudomonas sp. Strain SCT, an Iodate-Reducing Bacterium Isolated from Marine Sediment, Reveals a Possible Use for Bioremediation.
Harada M, Ito K, Nakajima N, Yamamura S, Tomita M, Suzuki H, Amachi S.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6505155/
We then performed similarity searches of all the predicted protein sequences against the UniRef90 sequence database (UniRef90 Release 2016_08 consisting of 44,448,796 entries) using the BLASTP program with an E-value cutoff of 1e-5, and assigned functional annotations from the most similar (best hit) protein sequences. BlastKOALA (Kanehisa et al. 2016) was used to assign KEGG Orthology identifiers to the protein sequences obtained by BLAST searches, for which taxonomy group information on “Bacteria” and the KEGG Genes database of “family_eukaryotes + genus_prokaryotes” were selected at https://www.kegg.jp/blastkoala/.

https://www.ncbi.nlm.nih.gov/pubmed/30510597
J Genomics. 2018 Nov 15;6:122-126. doi: 10.7150/jgen.27741. eCollection 2018.
Genomic Analysis of Rhodococcus sp. Br-6, a Bromate Reducing Bacterium Isolated From Soil in Chiba, Japan.
Ito K, Harada M, Nakajima N, Yamamura S, Tomita M, Suzuki H, Amachi S.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6275400/
Genome annotation
The genome was annotated using Prokka v1.11 7. A total of 5,186 protein coding DNA sequences (CDSs) were predicted using Prokka for the Br-6 strain. We performed similarity searches of the 5,186 Br-6 proteins against the UniProt Reference Clusters UniRef90 (Release: 07-Sep-2016; Number of clusters: 44,448,796) 8 using BLASTP 9 with the E value cutoff of 1e-05 and assigned the most similar (best hit) protein sequence information. The genome was also annotated using KAAS (KEGG Automatic Annotation Server) 10 for which gene data sets from three Rhodococcus spp. (R. jostii, R. erythropolis PR4, and R. opacus B4) and the default set of organisms (abbreviated as “hsa, dme, cel, ath, sce, cho, eco, nme, hpy, rpr, bsu, lla, cac, mge, mtu, ctr, bbu, syn, bth, dra, aae, mja, ape, rha, rer, and rop” at http://www.genome.jp/tools/kaas/) were selected.

https://www.ncbi.nlm.nih.gov/pubmed/29213333
Gut Pathog. 2017 Nov 29;9:70. doi: 10.1186/s13099-017-0219-4. eCollection 2017.
Comparative genomic analysis of Clostridium difficile ribotype 027 strains including the newly sequenced strain NCKUH-21 isolated from a patient in Taiwan.
Suzuki H, Tomita M, Tsai PJ, Ko WC, Hung YP, Huang IH, Chen JW.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5708112/#MOESM1
Additional file 1. Materials and methods.(43K, docx)
We also performed BLASTP similarity searches (with the E value cutoff of 1e-05) of the NCKUH-21 proteins against the UniProt Reference Clusters UniRef90 to assign the most similar (best hit) sequence annotation [5]. Of the 3,810 proteins, 3,807 (99.9%) had matched with 3,784 unique records in the UniRef90 database. 

http://www.ncbi.nlm.nih.gov/pubmed/26341535
FEBS Lett. 2015 Oct 7;589(20 Pt B):3113-8. doi: 10.1016/j.febslet.2015.08.033. Epub 2015 Sep 1.
Analysis of amino acid and codon usage in Paramecium bursaria.
Dohra H, Fujishima M, Suzuki H.
https://febs.onlinelibrary.wiley.com/doi/full/10.1016/j.febslet.2015.08.033
We annotated the proteins based on BLASTP searches (E‐value < 1e−5)[32] against the COG database including the eukaryotic orthologous groups (KOGs)[33], HMMER searches (http://hmmer.janelia.org/) against the Pfam database of protein families[34], and InterProScan[35] against the InterPro protein families database[36]. We also used G‐Links[37] to collect information from different databases about the genes of interest. 

https://www.ncbi.nlm.nih.gov/pubmed/26059449
BMC Genomics. 2015 Jun 10;16(1):448. doi: 10.1186/s12864-015-1663-5.
Comparative genomic and phenomic analysis of Clostridium difficile and Clostridium sordellii, two related pathogens with differing host tissue preference.
Scaria J, Suzuki H, Ptak CP, Chen JW, Zhu Y, Guo XK, Chang YF.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4462011/
Gene functional annotation
We assigned functional annotations to each protein family by merging all the functional annotations of proteins belonging to the same family. To gain different aspects and maximize coverage, protein families were annotated by multiple databases. We performed BLASTP searches of protein sequences against NCBI nr (non-redundant) database, COG [62], KEGG [39], UniProtKB/Uniref90 [96], Virulence Factors Database (VFDB) [60], and assigned the functional annotations of the most similar protein sequences in each database. We converted protein_ID to subsystems (Category, Subcategory, Subsystem, and Role) in SEED database [97]. We also searched protein sequences against the Pfam library of hidden Markov models (HMMs) [98] using HMMER, and mapped Gene Ontology (GO) terms to Pfam entries using the ‘pfam2go’ mapping provided by the GO consortium [99].

http://www.ncbi.nlm.nih.gov/pubmed/24612690
BMC Genomics. 2014 Mar 10;15(1):183.
Comparison of gene expression of Paramecium bursaria with and without Chlorella variabilis symbionts.
Kodama Y, Suzuki H, Dohra H, Sugii M, Kitazume T, Yamaguchi K, Shigenobu S, Fujishima M.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4029085/
We performed similarity searches of the 10,557 P. bursaria unigenes against the Swiss-Prot and UniRef90 protein sequence databases [21] using BLASTX [22] with the E-value cutoff of 1e-5 and assigned the functional annotations of the most similar protein sequences. Of the 10,557 unigenes, 7,051 (67%) had matches with 4,102 unique records in the Swiss-Prot database; 9,536 (90%) had matches with 8,189 unique records in the UniRef90 database. The species distribution of the BLASTX best hits in the UniRef90 database showed that 8,710 (91.7%) of the 9,502 hits had top matches with sequences from P. tetraurelia, followed by Tetrahymena thermophila with 153 (1.6%) best BLASTX hits.

http://www.ncbi.nlm.nih.gov/pubmed/24488312
J Bacteriol. 2014 Apr;196(7):1458-70.
Comparative Functional Genomics of Lactobacillus spp. Reveals Possible Mechanisms for Specialization of Vaginal Lactobacilli to Their Environment.
Mendes-Soares H, Suzuki H, Hickey RJ, Forney LJ.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3993339/
We assigned functional annotations to each protein family by merging all the functional annotations of proteins belonging to the same protein family (deleting uninformative annotations such as “hypothetical protein”). We used multiple databases as follows: Clusters of Orthologous Groups (COG [http://www.ncbi.nlm.nih.gov/COG/; 40]), JCVI/CMR [http://cmr.jcvi.org/; 41]), SEED (http://www.theseed.org/ [42]), UniProtKB/Uniref90 (http://www.uniprot.org), Virulence Factors Database (VFDB) (http://www.mgc.ac.cn/VFs/ [43]), Pfam (http://pfam.sanger.ac.uk), and Gene Ontology (GO) (http://www.geneontology.org). We performed a similarity search of the 136,962 Lactobacillus proteins against the Uniref90 and VFDB protein sequence databases using BLASTP (E-value < 1e−5 and >50% coverage) and assigned the functional annotations of the most similar protein sequences. We searched protein sequences against the Pfam library of hidden Markov models (HMMs) using HMMER (http://hmmer.janelia.org/) and converted Pfam accession numbers to GO terms using “pfam2go” mapping (http://www.geneontology.org/external2go/pfam2go).

https://haruosuz.hatenadiary.org/entry/20090605
遺伝子の機能注釈には、複数のデータベース（NCBI/COG, JCVI/CMR, KEGG, SEED, VFDB, MvirDB, Pfam, Gene Ontology）を用いた。

https://www.ncbi.nlm.nih.gov/pubmed/22155358
Infect Genet Evol. 2012 Mar;12(2):274-7. doi: 10.1016/j.meegid.2011.11.004. Epub 2011 Dec 3.
Functional bias of positively selected genes in Streptococcus genomes.
Suzuki H, Stanhope MJ.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3294173/
Functional categories from multiple databases were used to assess categories in which positively selected genes were over- or under-represented: the Clusters of Orthologous Groups (COG) (Tatusov et al., 2000; Tatusov et al., 2001), the JCVI role categories (Davidsen et al., 2010), KEGG (Kanehisa and Goto, 2000), SEED (Overbeek et al., 2005), Virulence Factors Database (VFDB) (Chen et al., 2005), and the Gene Ontology (GO) (Ashburner et al., 2000) database. We searched protein sequences against the Pfam (Finn et al., 2010) library of hidden Markov models (HMMs) using HMMER (http://hmmer.janelia.org/), and converted Pfam accession numbers to GO terms using the ‘pfam2go’ mapping (http://www.geneontology.org/external2go/pfam2go). We identified putative virulence factors based on a combination of SEED, VFDB, and MvirDB (Zhou et al., 2007). MvirDB integrates sequence information from multiple microbial databases of protein toxins, virulence factors, and antibiotic resistance genes.

https://www.ncbi.nlm.nih.gov/pubmed/22272658
BMC Genomics. 2012 Jan 24;13:38. doi: 10.1186/1471-2164-13-38.
Comparative genomic analysis of the genus Staphylococcus including Staphylococcus aureus and its newly described sister species Staphylococcus simiae.
Suzuki H, Lefébure T, Bitar PP, Stanhope MJ.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3317825/
We assigned functions to each protein family by using multiple databases: the Clusters of Orthologous Groups (COG) [39,40], JCVI [41], KEGG [42], SEED [43], Virulence Factors Database (VFDB) [44], MvirDB [45], Pfam [46], and Gene Ontology (GO) [47] database. We searched protein sequences against the Pfam library of hidden Markov models (HMMs) using HMMER http://hmmer.janelia.org/, and converted Pfam accession numbers to GO terms using the 'pfam2go' mapping http://www.geneontology.org/external2go/pfam2go. 

https://www.ncbi.nlm.nih.gov/pubmed/21282711
Genome Biol Evol. 2011;3:168-85. doi: 10.1093/gbe/evr006. Epub 2011 Jan 31.
Comparative genomic analysis of the Streptococcus dysgalactiae species group: gene content, molecular adaptation, and promoter evolution.
Suzuki H1, Lefébure T, Hubisz MJ, Pavinski Bitar P, Lang P, Siepel A, Stanhope MJ.

https://www.ncbi.nlm.nih.gov/pubmed/20688752
Genome Biol Evol. 2010;2:646-55. doi: 10.1093/gbe/evq048. Epub 2010 Aug 4.
Evolutionary dynamics of complete Campylobacter pan-genomes and the bacterial species concept.
Lefébure T1, Bitar PD, Suzuki H, Stanhope MJ.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2940326/
Annotation and Enrichment Tests
Gene ontology (Ashburner et al. 2000) (GO) annotations were obtained for each orthologous cluster using HMMER searches (Eddy 2008) on the Pfam A and B databases (Finn et al. 2010) and using Blast against the Uniref90 database (Suzek et al. 2007). Best hits were then mapped to GO terms using the pfam2go mapping (Hunter et al. 2009) and the GOA database (Barrell et al. 2009), respectively. GO enrichment tests were conducted using GO::TermFinder (Boyle et al. 2004) with false discovery rate (FDR) correction and a 5% significance level.

----------


