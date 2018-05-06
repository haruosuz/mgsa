Haruo Suzuki (haruo[at]g-language[dot]org)  
Last Update: 2018-05-05

----------

# References

## Table of Contents
- [Updates](#updates)
- [Tools](#tools)
  - [harvest](#harvest)
  - [BUSCO](#busco)
  - [Tax4Fun](#tax4fun)
  - [USEARCH](#usearch)
- [GSEA](#gsea)
- [Holt Lab](#holt-Lab)
- [kadota](#kadota) 門田　幸二のホームページ
- [kazumaxneo](#kazumaxneo) macでインフォマティクス
- [k-mer](#k-mer)
- [Metagenomics](#metagenomics)


----------

## Updates

----------

### 2018

### 2017

### 2016

Published: 14 October 2016
https://academic.oup.com/bib/article/19/1/23/2339783
present and future of de novo whole-genome assembly | Briefings in Bioinformatics | Oxford Academic

February 12, 2017
http://genomeintelligence.org/?p=1157
BINF 6203: Genome Comparison with Mauve – Genome Intelligence

![http://genomeintelligence.org/?p=1157](http://genomeintelligence.org/wp-content/uploads/2015/03/Mauve3-1024x647.jpg)


----------

### qc
- [クオリティコントロール | FASTQ | RNA-seq](http://bi.biopapyrus.net/rnaseq/qc/)
 - [FastQC | FASTQのクオリティチェック](http://bi.biopapyrus.net/rnaseq/qc/fastqc.html)
 - [Trimmomatic | アダプター配列除去](http://bi.biopapyrus.net/rnaseq/qc/trimmomatic.html)

### assembly

March 23 2018
http://www.bioinformaticszen.com/post/automating-selection-of-genome-assembly-software/
Bioinformatics Zen
Automating the selection of genome assembly software

http://kazumaxneo.hatenablog.com/archive/category/アセンブリ

- de Bruijn Graph
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

----------
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

## Holt Lab

https://holtlab.net
Holt Lab | microbial genomics

https://holtlab.net/2017/07/01/update-to-comparative-bacterial-genomics-tutorial/
Update to Comparative Bacterial Genomics tutorial | Holt Lab

https://holtlab.net/2016/01/19/genomics-of-atypical-enteropathogenic-e-coli/
Genomics of atypical enteropathogenic E. coli | Holt Lab

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

## Tools
- [phyloSkeleton: taxon selection, data retrieval and marker identification for phylogenomics. Bioinformatics. 2017 Jan 5.](https://www.ncbi.nlm.nih.gov/pubmed/28057682)

### 細菌ゲノム比較ツール
- [Pan-genome analysis software tools | Comparative genomics - OMICtools](https://omictools.com/pangenomics-category)
- [BPGA - a Bacterial Pan Genome Analysis Pipeline](http://www.iicb.res.in/bpga/index.html)
  - 論文 [BPGA- an ultra-fast pan-genome analysis pipeline. Sci Rep. 2016 Apr 13;6:24373.](http://www.ncbi.nlm.nih.gov/pubmed/27071527)
    - [Table 2. Comparison of 7 pan-genome analysis tools (BPGA, Roary, PanGP, PGAP, PGAT, Panseq, ITEP)](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4829868/table/t2/)

- [ITEP: Integrated Toolkit for Exploration of Pan-genomes | The Price Lab](https://price.systemsbiology.org/research/itep/)
- CodaChrome: a tool for the visualization of proteome conservation across all fully sequenced bacterial genomes | BMC Genomics | http://bmcgenomics.biomedcentral.com/articles/10.1186/1471-2164-15-65

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

https://www.ncbi.nlm.nih.gov/pubmed/29220515
Mol Biol Evol. 2017 Dec 6. doi: 10.1093/molbev/msx319. [Epub ahead of print]
BUSCO applications from quality assessments to gene prediction and phylogenomics.

2017-07-19
http://kazumaxneo.hatenablog.com/entry/2017/07/19/145640
アセンブル結果をCore gene setの検出数で評価する　BUSCO - macでインフォマティクス

----------
### harvest

http://harvest.readthedocs.org
http://harvest.readthedocs.io/en/latest/content/parsnp/tutorial.html
https://harvest.readthedocs.io/en/v1.0/

https://www.ncbi.nlm.nih.gov/pubmed/25410596
Genome Biol. 2014;15(11):524.
The Harvest suite for rapid core-genome alignment and visualization of thousands of intraspecific microbial genomes.

http://kazumaxneo.hatenablog.com/entry/2017/11/26/205234
数百から数千のバクテリアゲノムの同時比較を行うHarvest - macでインフォマティクス

https://www.cbcb.umd.edu/software/harvest
Harvest | CBCB

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
### [USEARCH](http://www.drive5.com/usearch/)
- http://crusade1096.web.fc2.com/usearch.html
- 2016-10-04 [USEARCHを用いたメタ16S解析パイプライン](https://rpubs.com/nishikosh/203465)
- 2015-07-25 [USEARCHを使った16S rRNAアンプリコンシーケンス分析 - yokaのblog](http://yokazaki.hatenablog.com/entry/2015/07/25/202628)
- 2015-07-28 [USEARCHを使った16S rRNAアンプリコンシーケンス析② - yokaのblog](http://yokazaki.hatenablog.com/entry/2015/07/28/212629)
- https://twitter.com/tyu_shi/status/28695306021 Tyu_Shi on Twitter: "これがUSEARCH。こいつをクラスタの代表配列群相手に実行しているのがUCLUST。やたらと速いのは最初にwordの出現頻度計算してメモリにのせておいて、各配列ごとに上位8配列ぐらいとしかアライメント形成していないから。wordの共有数と相同性に相関があることが根拠らしい。"

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
## [kadota](http://www.iu.a.u-tokyo.ac.jp/~kadota/)
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
## kazumaxneo
http://kazumaxneo.hatenablog.com
macでインフォマティクス

http://kazumaxneo.hatenablog.com/entry/2017/07/19/145640
アセンブル結果をCore gene setの検出数で評価する　BUSCO - macでインフォマティクス

http://kazumaxneo.hatenablog.com/entry/2018/02/03/154624
GC-skewと複数アセンブルデータを使ってバクテリアのゲノムアセンブリを改善するGUIツール GFinisher - macでインフォマティクス

http://kazumaxneo.hatenablog.com/entry/2017/10/26/132951
ハイブリッドアセンブルを行うUnicycler - macでインフォマティクス

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
http://qiita.com/antiplastics/items/c1532474e943ac2d1b0a
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
### Metagenomics
メタゲノム

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

### Research papers on comparative bacterial genomics
細菌ゲノム比較に関する論文

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

- 2013 Feb [Comparative bacterial genomics: defining the minimal core genome.](https://www.ncbi.nlm.nih.gov/pubmed/23011009)

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

### [Rarefaction](https://en.wikipedia.org/wiki/Rarefaction_(ecology))

2016-02-21
http://pediatricsurgery.hatenadiary.jp/entry/%3Fp%3D213
腸内細菌の論文が読める様になりたい臨床医へ ( 2 ) レアファクション解析 - Note of Pediatric Surgery

 - 2015.09.03 [希薄化曲線 | グラフの描き方](http://stat.biopapyrus.net/statistic/rarefaction-curve.html)
 - [plot - accumulation curve in R - Stack Overflow](http://stackoverflow.com/questions/21615628/accumulation-curve-in-r)
 - [Vegan: ecological diversity](https://cran.r-project.org/web/packages/vegan/vignettes/diversity-vegan.pdf)
 - [Gene accumulation curves in R | smoke&umami](http://smokeandumami.com/2010/01/21/gene-accumulation-curves-in-r/)
 - [自前でrarefactionカーブ in R](http://tullbergia.at.webry.info/201009/article_3.html)
 - [自前でrarefactionカーブ in R vol.2: マルチコア対応](http://tullbergia.at.webry.info/201111/article_1.html) [.](http://s.webry.info/sp/tullbergia.at.webry.info/201111/article_1.html)
 - [データ解析｜種多様性の測定｜希薄化曲線(rarefaction curves)｜上の計算を R で行うためのコード](http://www.lab2.toho-u.ac.jp/sci/bio/theoeco/wiki/index.php?plugin=attach&pcmd=open&file=jissyusyo_DA.pdf&refer=2013%CC%EE%B3%B0%C0%B8%C2%D6%B3%D8%BC%C2%BD%ACI)

![https://en.wikipedia.org/wiki/Rarefaction_(ecology)](https://upload.wikimedia.org/wikipedia/commons/thumb/f/f8/Sogin-Huber-CombinedRarefac.jpg/220px-Sogin-Huber-CombinedRarefac.jpg)


----------


### Unclassified


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



- 2016-09-26 田辺晶史 [生態学のためのメタバーコーディングと DNA バーコーディング](https://www.fifthdimension.jp/documents/metabarcodingtextbook/metabarcodingtextbook.ja.pdf)

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
"Roary"

https://www.ncbi.nlm.nih.gov/pubmed/29635296
Gigascience. 2018 Apr 1;7(4):1-11. doi: 10.1093/gigascience/giy015.
Piggy: a rapid, large-scale pan-genome analysis tool for intergenic regions in bacteria.
Thorpe HA1, Bayliss SC1, Sheppard SK1, Feil EJ1.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5890482/
The large-scale blast score ratio (LS-BSR) introduced a preclustering step that substantially reduced the number of BLAST comparisons, enabling it to be feasibly run on thousands of samples [10]. More recently, the Roary pipeline has rapidly gained popularity for scalable, user-friendly, pan-genome characterization [4].

https://www.ncbi.nlm.nih.gov/pubmed/28705636
J Biotechnol. 2017 Nov 10;261:2-9. doi: 10.1016/j.jbiotec.2017.07.010. Epub 2017 Jul 10.
A review of bioinformatics platforms for comparative genomics. Recent developments of the EDGAR 2.0 platform and its utility for taxonomic and phylogenetic studies.
Yu J1, Blom J2, Glaeser SP3, Jaenicke S4, Juhre T4, Rupp O4, Schwengers O4, Spänig S4, Goesmann A4.
https://www.sciencedirect.com/science/article/pii/S0168165617315225?via%3Dihub
Review
2.4. Roary


----------









