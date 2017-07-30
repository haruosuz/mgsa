----------

Haruo Suzuki (haruo[at]g-language[dot]org)  
Last Update: 2017-05-23

----------

# Microbial Genome Sequence Analysis
微生物ゲノム配列解析

## Project directory structures

    mgsa/
     README.md: project documentation 
     data/: contains data files
     scripts/: contains Perl/Python/R/Shell scripts
     analysis/: contains results of data analyses
     images/: contains image files

## Step
手順

本ページの[Clone or download -> Download ZIP](https://github.com/haruosuz/mgsa/archive/master.zip)をクリックして取得されたディレクトリ（例 `~/Downloads/mgsa-master`）に移動する。

[ターミナル](http://techacademy.jp/magazine/5155)でスクリプトを実行する:  

    bash my_script.sh >& log.txt &

`tail -f`でファイル出力を監視する（Control-Cで動作中のプロセスを停止）:  

    # Use `tail -f` to constantly monitor files (use Control-C to stop)
    tail -f log.txt

----------

## Updates

----------

### Traitar
[Traitar – the microbial trait analyzer](https://github.com/hzi-bifo/traitar)
- 2017-02-06 Aaron Weimann [From genomes to phenotypes: Traitar, the microbial trait analyzer – microBEnet: the microbiology of the Built Environment network.](http://www.microbe.net/2017/02/06/from-genomes-to-phenotypes-traitar-the-microbial-trait-analyzer/)
- [Weimann A et al. mSystems. 2016 Dec 27;1(6). "From Genomes to Phenotypes: Traitar, the Microbial Trait Analyzer."](https://www.ncbi.nlm.nih.gov/pubmed/28066816)
微生物のゲノム配列から表現型を予測。基質（炭素エネルギー源）利用能、酸素要求量、形態、抗生物質感受性、タンパク質分解、酵素活性に関連する67の形質を予測。表現型に関連するタンパク質ファミリーを示唆。

### [Roary: rapid large-scale prokaryote pan genome analysis.](https://github.com/haruosuz/mgsa/tree/master/roary)
### 2016-07-12
### 2016-07-05
### 2016-06-21
### 2016-06-14
### 2016-06-07
### 2016-05-31

----------

#### [GenomeMatcher](http://www.ige.tohoku.ac.jp/joho/gmProject/gmhomeJP.html)

![](http://www.ige.tohoku.ac.jp/joho/gmProject/images/Icon.jpg)

#### Data

G-language Systemウェブサービス (チュートリアル[日本語](http://www.g-language.org/wiki/restgenomeanalysisjapanese)・[English](http://www.g-language.org/wiki/restgenomeanalysisenglish)) を用いて、プラスミド配列 IncP-1 plasmids R751 (NC_005088) and pUO1 (NC_001735) の情報を取得
 - http://rest.g-language.org/NC_001735
 - http://rest.g-language.org/NC_001735/*/product
 - http://rest.g-language.org/NC_001735/output

#### Exercises
演習

- [GenomeMatcher 2.18 のダウンロード](http://www.ige.tohoku.ac.jp/joho/gmProject/gmdownloadJP.html)

プロジェクト・ディレクトリを作成し移動する:  

	# Creating directories
	TODAY=$(date +%F)
	mkdir -p ~/projects/$TODAY
	cd ~/projects/$TODAY/

データをダウンロードする:

	# Downloading data
	ACCESSIONs=(NC_001735 NC_005088) # IncP-1 plasmids R751 and pUO1
	echo ${#ACCESSIONs[@]}
	echo ${ACCESSIONs[@]}
	for ACCESSION in ${ACCESSIONs[@]}; do
	 curl -L "https://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch.fcgi?db=nuccore&id=$ACCESSION&rettype=gbwithparts&retmode=text" > $ACCESSION.gbk
	done

	# Inspecting Data
	ls -lh *.gbk
	grep DEFINITION *.gbk
	grep -c "     CDS             " *.gbk
	grep "/product=" *.gbk

#### 参考文献

- Entrez Programming Utilities - Books - NCBI http://www.ncbi.nlm.nih.gov/books/NBK25501/?term=Entrez%20Programming%20Utilities
- The E-utilities In-Depth: Parameters, Syntax and More - Entrez Programming Utilities Help - NCBI Bookshelf https://www.ncbi.nlm.nih.gov/books/NBK25499/ 

[Table 1 – Valid values of &retmode and &rettype for EFetch (null = empty string)](https://www.ncbi.nlm.nih.gov/books/NBK25499/table/chapter4.T._valid_values_of__retmode_and/?report=objectonly)

| Record Type | &rettype | &retmode |
|:------:|:----:|:----:|:--------------:|
| GenBank flat file with full sequence (contigs) | gbwithparts | text |

----------

### 2016-11-09

#### [MEGAN](http://ab.inf.uni-tuebingen.de/software/megan6/welcome/)
- 論文
 - ["MEGAN Community Edition - Interactive Exploration and Analysis of Large-Scale Microbiome Sequencing Data." PLoS Comput Biol. 2016 Jun](https://www.ncbi.nlm.nih.gov/pubmed/27327495)
 - ["Microbial community analysis using MEGAN." Methods Enzymol. 2013](https://www.ncbi.nlm.nih.gov/pubmed/24060133)
 - ["Introduction to the analysis of environmental sequences: metagenomics with MEGAN." Methods Mol Biol. 2012](https://www.ncbi.nlm.nih.gov/pubmed/22399469)
 - ["Analysis of 16S rRNA environmental sequences using MEGAN." BMC Genomics. 2011 Nov](https://www.ncbi.nlm.nih.gov/pubmed/22369513)
 - ["Integrative analysis of environmental sequences using MEGAN4." Genome Res. 2011  Sep](https://www.ncbi.nlm.nih.gov/pubmed/21690186)
 - ["MEGAN analysis of metagenomic data." Genome Res. 2007](https://www.ncbi.nlm.nih.gov/pubmed/17255551)
- 動画
 - 2015-06-03 [CeMeT MEGAN Demo June 2015](https://www.youtube.com/watch?v=QCZQqOdsXYg) Short introduction to using MEGAN6 on microbiome data
 - 2012 [Daniel Huson: Visualization, Metagenomics & Phylogeography on Vimeo](https://vimeo.com/43372750)
 - 2008-07-24  [Introduction to MEGAN2 - Metagenome Analyzer](https://www.youtube.com/watch?v=i7-OCW-DctY)
- 2013/10/17 イルミナウェビナー [NGSデータ解析プラットフォームMaser](http://jp.illumina.com/content/dam/illumina-marketing/apac/japan/documents/pdf/2013_illumina_ngs_data_platform_maser.pdf)
 - Meganの出力として、パイチャート などのグラフィカルな図や、生物種のリストが得られる
- 2012/8/9 五斗 進 [KEGG PATHWAY と GENES の利用法](http://goto.kuicr.kyoto-u.ac.jp/lecture/KEGG.pdf)
 - パスウェイ再構築システムの例。MEGAN。もともとはメタゲノムの生物種マッピング用のツール。MEGAN4からKEGGやSEEDを用いた機能予測と パスウェイ再構築の機能が拡張された
 - MEGANによるTaxonomy mapping。rRNAデータをクエリとしてBLASTでnr-ntデータベースを検索。ヒットした配列の元の生物種をリストアップ。NCBI Taxonomyに基づいて分類木上にヒット数をマッピング。
 - MEGANによるPathway mapping。
- [blastn for NT database (SE)](http://cell-innovation.nig.ac.jp/wiki2/tiki-index.php?page=P000001299)
 - このパイプラインは、ターゲット領域を限定しないメタゲノム解析を行うパイプラインです。FASTQをFASTAに変換した後、blastnによってNTデータベースに相同性検索を行います。その後、出力ファイルをMEGANに入力することで、Taxonomy解析を行うことが可能です。

#### Exercises
演習

- [MEGANとGIのファイルのダウンロード](http://ab.inf.uni-tuebingen.de/data/software/megan6/download/welcome.html)
 - [MEGAN_Community_macos_6_5_10.dmg](http://ab.inf.uni-tuebingen.de/data/software/megan6/download/MEGAN_Community_macos_6_5_10.dmg)
 - [prot_gi2tax-Aug2016X.bin.zip](http://ab.inf.uni-tuebingen.de/data/software/megan6/download/prot_gi2tax-Aug2016X.bin.zip) GI を NCBI-taxonomy に対応付けるファイル。
 - [gi2eggnog-June2016X.bin.zip](http://ab.inf.uni-tuebingen.de/data/software/megan6/download/gi2eggnog-June2016X.bin.zip) GI を eggNOG に対応付けるファイル。
 - [gi2interpro-June2016X.bin.zip](http://ab.inf.uni-tuebingen.de/data/software/megan6/download/gi2interpro-June2016X.bin.zip) GI を InterPro に対応付けるファイル。
 - [gi2seed-May2015X.bin.zip](http://ab.inf.uni-tuebingen.de/data/software/megan6/download/gi2seed-May2015X.bin.zip) GI を SEED に対応付けるファイル。

[ファイルを解凍する](http://scribble.washo3.com/linux/unzipで複数ファイルを一括解凍.html)

	unzip '*.zip'

----------

### 2016-11-02
HMMER + Pfam -> GO -> Gene Set Enrichment Analysis (GSEA)

- HMMER + Pfam
 - [Pfam | タンパク質ドメインファミリーのデータベース](http://bi.biopapyrus.net/biodb/pfam.html)
 - [Pfamを使ってタンパク質のドメインを調べる - 統合TV (togotv)(2010-05-07)](http://togotv.dbcls.jp/20100507.html)
 - [HMMERを使ったPfamデータベースへのドメイン検索 - バイオインフォマティクス初心者の日常](http://sy41211.hatenablog.com/entry/2015/11/28/083056)
 - [hmmscan vs. hmmsearch speed: the numerology](https://cryptogenomicon.org/2011/05/27/hmmscan-vs-hmmsearch-speed-the-numerology/)

- Gene Ontology (GO)
 - [遺伝子オントロジー - Wikipedia](https://ja.wikipedia.org/wiki/遺伝子オントロジー)
 - [遺伝子オントロジー | Gene Ontology](http://bi.biopapyrus.net/pathway/go/gene-ontology.html)
 - [GO 解析 | 遺伝子オントロジー解析,RNA-seq](http://bi.biopapyrus.net/pathway/go/)
 - [Gene Ontology - 井上 潤](http://www.geocities.jp/ancientfishtree/GeneOntology_JI.html)

- [PAGE: Parametric Analysis of Gene Set Enrichment](https://www.ncbi.nlm.nih.gov/pubmed/15941488)
 - [PAGE解析(Parametric Analysis of Gene set Enrichment)とは](http://www.t-kagaku.co.jp/seimeiken/top/xmlSupport.php?id=21004)
 - [解析 | 機能解析 | PAGE法(Kim_2005;統計量の変換なし)を用いてGene Ontology解析](http://www.iu.a.u-tokyo.ac.jp/~kadota/r.html#page_go)
 - [GSEA_(Gene_Set_Enrichment_Analysis)について -](http://home.hiroshima-u.ac.jp/naka/wiki/wiki.cgi%3FGSEA_(Gene_Set_Enrichment_Analysis)%25A4%25CB%25A4%25C4%25A4%25A4%25A4%25C6)
 - [Z-score （発現変動遺伝子を判定するもう1つの方法） – マイクロアレイ解析（ゲノム解析）](http://array.cell-innovator.com/?p=1914)
 - [Table 4. Comparison of two microarray data sets at gene set level](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC1183189/table/T4/)
 - ミドリゾウリムシのトランスクリプトーム解析 [Table 1. Enrichment of gene ontology terms in differentially expressed sequences in P. bursaria detected by PAGE](http://bmcgenomics.biomedcentral.com/articles/10.1186/1471-2164-15-183#Tab1)

#### HMMER

HMMER 3.1b2 (05 March 2015) downloaded on 2016-11-01 from <http://hmmer.org/download.html> using:

	wget http://eddylab.org/software/hmmer3/3.1b2/hmmer-3.1b2-linux-intel-x86_64.tar.gz
	tar xvzf hmmer-3.1b2-linux-intel-x86_64.tar.gz
	cd hmmer-3.1b2-linux-intel-x86_64/
	./configure
	make

#### Pfam

Pfam 30.0 (June 2016, 16306 entries) downloaded on 2016-11-01 from FTP at <http://pfam.xfam.org> using:

	wget ftp://ftp.ebi.ac.uk/pub/databases/Pfam/releases/Pfam30.0/Pfam-A.hmm.dat.gz \
	     ftp://ftp.ebi.ac.uk/pub/databases/Pfam/releases/Pfam30.0/Pfam-A.hmm.gz

	gunzip -c Pfam-A.hmm.gz > Pfam-A.hmm

	hmmer-3.1b2-linux-intel-x86_64/src/hmmpress Pfam-A.hmm

#### Data

G-language Systemウェブサービス (チュートリアル[日本語](http://www.g-language.org/wiki/restgenomeanalysisjapanese)・[English](http://www.g-language.org/wiki/restgenomeanalysisenglish)) を用いて、プラスミド配列 IncQ plasmid DN1 (ACCESSION: NC_002636) の情報を取得
 - http://rest.g-language.org/NC_002636
 - http://rest.g-language.org/NC_002636/*/product
 - http://rest.g-language.org/NC_002636/output

#### Exercises
演習

サーバに接続:  

	# login to cacao and then to smith5
	ssh cacao
	ssh smith5

スクリプト[`scripts/2016-11-02.tgz`](https://github.com/haruosuz/mgsa/raw/master/scripts/2016-11-02.tgz)を取得し実行する:  

	# Downloading the scripts
	wget https://github.com/haruosuz/mgsa/raw/master/scripts/2016-11-02.tgz
	tar xvzf 2016-11-02.tgz
	cd 2016-11-02/

	# Running the script
	(time bash 2016-11-02.sh &) >& log.2016-11-02.txt

- スクリプト
 - `2016-11-02.sh`: 全ステップ実行スクリプト
 - `run_hmmsearch.sh`: HMMER実行スクリプト
 - `2016-11-02.R`: Rスクリプト

- データ
 - `NC_002636.faa`: プラスミドの全タンパク質配列 (http://rest.g-language.org/NC_002636/*/product)
 - `parsed.hmmsearch-NC_000908-Pfam-A.txt`: Mycoplasma genitalium G37 (http://rest.g-language.org/NC_000908) のドメイン検索結果をパースしたテキストファイル
 - `pfam2go`: Pfam を GO (Gene Ontology) に対応付けるテーブル

- 解析結果
 - `hmmsearch-NC_002636-Pfam-A.txt`: HMMERとPfamデータベースを用いたプラスミド(NC_002636)のドメイン検索結果
 - `parsed.hmmsearch-NC_002636-Pfam-A.txt`: プラスミド(NC_002636)のドメイン検索結果をパースしたテキストファイル
 - `gsea.csv`, `gsea.txt`: Gene Set Enrichment Analysis (GSEA) の結果

----------

### 2016-10-26
病原因子・抗生物質耐性データベース

- 病原因子データベース  
[VFDB: Virulence Factors Database](http://www.mgc.ac.cn/VFs/)の[VFDB: Virulence Factors of Bacterial Pathogens](http://www.mgc.ac.cn/VFs/main.htm)の[Download](http://www.mgc.ac.cn/VFs/download.htm)を開く。
[DNA sequences of core dataset](http://www.mgc.ac.cn/VFs/Down/VFDB_setA_nt.fas.gz)と
[Protein sequences of core dataset](http://www.mgc.ac.cn/VFs/Down/VFDB_setA_pro.fas.gz)

- 抗生物質耐性データベース  
[CARD: Comprehensive Antibiotic Resistance Database](http://arpcard.mcmaster.ca/)の[Download](https://card.mcmaster.ca/download)を開く。
Download CARD Data

- ボストン地下鉄の微生物叢で検出された抗生物質耐性遺伝子と病原因子
[Urban Transit System Microbial Communities Differ by Surface Type and Interaction with Humans and the Environment | mSystems](http://msystems.asm.org/content/1/3/e00018-16)
![](https://dvjhhd5e4gesk.cloudfront.net/content/msys/1/3/e00018-16/F7.large.jpg)

#### Exercises
演習

スクリプト[`scripts/2016-10-26.tgz`](https://github.com/haruosuz/mgsa/raw/master/scripts/2016-10-26.tgz)を取得し実行する:  

    # Downloading the scripts
    wget https://github.com/haruosuz/mgsa/raw/master/scripts/2016-10-26.tgz
    tar xvzf 2016-10-26.tgz
    cd 2016-10-26/

    # Running the script
    (time bash run.sh &) >& log.txt

    # Use `tail -f` to constantly monitor files (use Control-C to stop)
    tail -f log.txt


- スクリプト
 - `run.sh`: 全ステップ実行スクリプト
 - `run_blastp.sh`: BLAST実行スクリプト
 - `my_blast_vfdb.R`: Rスクリプト

- データ
 - `VFDB_setA_pro.fas`: Protein sequences of core dataset 実験的に確認された病原因子

- 解析結果
 - `blastout.txt`: BLAST出力ファイルのシンボリックリンク
 - `blasthit.fasta`: BLASTヒット配列のFASTA形式ファイルのシンボリックリンク
 - `blastout_annotation.csv`, `blastout_annotation.txt`: BLAST出力ファイルにアノテーションを追加したもの
 - `Rplots.pdf`: BLASTヒット配列の由来する生物の頻度を示す円グラフ

----------

### 2016-10-12

# [Bacterial Comparative Genomics Tutorial](https://github.com/haruosuz/mgsa/tree/master/comparison_tut)
細菌ゲノム比較チュートリアル
- [Edwards DJ, Holt KE. Microb Inform Exp. 2013 Apr 10;3(1):2. "Beginner's guide to comparative bacterial genome analysis using next-generation sequence data."](http://www.ncbi.nlm.nih.gov/pubmed/23575213)
 - [Additional file 1: Tutorial](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3630013/#S1)

----------

### 2016-05-24

DNA/タンパク質配列の情報（由来する生物の分類群など）を取得

#### 系統と分類
![http://www.niaes.affrc.go.jp/magazine/153/mgzn15305.html](http://www.niaes.affrc.go.jp/magazine/153/mgzn15305_5.jpg)
![](https://upload.wikimedia.org/wikipedia/commons/thumb/b/b7/PhylogeneticTree.png/220px-PhylogeneticTree.png)
![https://edwards.sdsu.edu/research/entries-in-the-ncbi-taxonomy-database/](https://edwards.sdsu.edu/research/wp-content/uploads/2012/04/ncbi_taxon_entries-624x348.png)

#### FASTA形式ファイル
[NCBIは、配列のGIを廃止し、Accession.Versionを使用する。](http://www.ncbi.nlm.nih.gov/news/03-02-2016-phase-out-of-GI-numbers/)  
Example 3: [FASTA](https://ja.wikipedia.org/wiki/FASTA)形式の変更：[FASTA](http://www.ige.tohoku.ac.jp/joho/gmProject/manualJP/kiso.html#fasta)ヘッダからGIを削除

変更前

![](http://www.ncbi.nlm.nih.gov/core/assets/news/images/NoGIs_Fig3_Before.jpg)

変更後

![](http://www.ncbi.nlm.nih.gov/core/assets/news/images/NoGIs_Fig3_After.jpg)

#### Exercises
演習

本ページの[Clone or download -> Download ZIP](https://github.com/haruosuz/mgsa/archive/master.zip)をクリックして取得されたディレクトリ（例 `~/Downloads/mgsa-master`）に移動する。

##### BLASTヒット配列の情報を取得

ターミナルで以下のコマンドを実行する:  

    bash scripts/2016-05-24.sh >& log.txt &

シェルスクリプト[`scripts/2016-05-24.sh`](https://github.com/haruosuz/mgsa/tree/master/scripts/2016-05-24.sh)は、全工程（データ取得、BLASTプログラム、Rスクリプト）を実行する。

取得データは、プラスミドRNA配列を含む圧縮FASTA形式ファイル <ftp://ftp.ncbi.nlm.nih.gov/refseq/release/plasmid/plasmid.1.rna.fna.gz> と、分類学的情報として NCBI Taxonomy (Kingdom;Group;SubGroup) を含むNCBIゲノムリスト <ftp://ftp.ncbi.nlm.nih.gov/genomes/GENOME_REPORTS/overview.txt> 。

作成したBLASTデータベースからキーワード（例えば、'Bacillus.megaterium'）にマッチする配列を抽出し、問い合わせ配列(query)としてデータベースに対するBLASTN検索を実行する。

Rスクリプト[`scripts/2016-05-24.R`](https://github.com/haruosuz/mgsa/tree/master/scripts/2016-05-24.R)は、タブ区切り形式のBLAST出力ファイルを読み込み、ヒット配列(sbjct)の[FASTA](http://www.ige.tohoku.ac.jp/joho/gmProject/manualJP/kiso.html#fasta)ヘッダと由来生物の分類群を追加したファイル[`analysis/2016-05-24/output.txt`](https://github.com/haruosuz/mgsa/tree/master/analysis/2016-05-24)を出力する。

##### Swiss-Protデータベースの情報を取得
シェルスクリプト[`scripts/my_sprot_getter.sh`](https://github.com/haruosuz/mgsa/tree/master/scripts/my_sprot_getter.sh)は、Swiss-Protデータベースの圧縮ファイル（*uniprot_sprot.dat.gz*）を取得する。

Pythonスクリプト[`scripts/my_sprot_parser.py`](https://github.com/haruosuz/mgsa/tree/master/scripts/my_sprot_parser.py)は、Biopythonを利用して`uniprot_sprot.dat`から以下の情報を抽出する。

    entry_name        Name of this entry, e.g. RL1_ECOLI.
    description       Free-format description.
    organism          The source of the sequence.
    organism_classification  The taxonomy classification.  List of strings.
                             (http://www.ncbi.nlm.nih.gov/Taxonomy/)

----------

### 2016-05-16

#### phylogenetic profiles
系統プロファイルとは、遺伝子の複数ゲノムにおける存在/非存在を1/0で表現した行列データ（[Pellegrini et al. 1999](http://www.ncbi.nlm.nih.gov/pubmed/10200254)）。ドラフトゲノム配列では、遺伝子の非存在は結論づけられないので、コンプリートゲノム配列を使用する必要がある。

![http://www.ncbi.nlm.nih.gov/pmc/articles/PMC16324/figure/F1/](https://github.com/haruosuz/mgsa/blob/master/images/pq0690185001.jpg)

[A method of analyzing protein phylogenetic profiles](http://www.ncbi.nlm.nih.gov/pmc/articles/PMC16324/figure/F1/)

#### taxon-specific genes
分類群（種/株）に特有の遺伝子（species- or strain-specific genes）の同定

![http://www.ncbi.nlm.nih.gov/pmc/articles/PMC2612414/figure/f4/](https://github.com/haruosuz/mgsa/blob/master/images/zjb0010983460004.jpg)

大腸菌8株におけるE2348/69株の遺伝子のホモログ数 [Conservation of E2348/69 genes in the eight sequenced E. coli strains. The numbers of E2348/69 genes conserved in each of the eight sequenced E. coli strains are indicated.](http://www.ncbi.nlm.nih.gov/pmc/articles/PMC2612414/figure/f4/)

##### tBLASTn
- [Using comparative genome analysis to identify problems in annotated microbial genomes. Microbiology. 2010 Jul](http://www.ncbi.nlm.nih.gov/pubmed/20430813)
 - [Table 1. Programs and methods used for ORF calling for 30 E. coli strains available at NCBI in January 2010](http://mic.microbiologyresearch.org/content/micro/10.1099/mic.0.033811-0.T1)
 - ["One of the 29 orthologues was used as a query for a tblastn ( Altschul et al., 1990 ) search of the full genome in which the gene was reported as missing."](http://mic.microbiologyresearch.org/content/micro/10.1099/mic.0.033811-0.T1)
- [Complete genome sequence and comparative genome analysis of enteropathogenic Escherichia coli O127:H6 strain E2348/69. J Bacteriol. 2009 Jan](http://www.ncbi.nlm.nih.gov/pubmed/18952797)
 - ["In order to avoid biases introduced by differences in gene prediction, we compared the E2348/69 gene set with the genomes of the other E. coli strains using one-way comparisons with TBLASTN."](http://www.ncbi.nlm.nih.gov/pmc/articles/PMC2612414/)
- [ITEP](https://price.systemsbiology.org/research/itep/)
 - ["To help identify missing genes, we have implemented an interface that links genomic data in ITEP to tBLASTn [44], which is useful for finding genes that are fragmented, miscalled (e.g. with frameshifts or nonsense mutations resulting from sequencing errors), or that are not yet annotated."](http://bmcgenomics.biomedcentral.com/articles/10.1186/1471-2164-15-8)
 - [Searching for missing genes and identifying causes for absence with tblastn](https://github.com/mattb112885/clusterDbAnalysis/wiki/Searching-for-missing-genes-and-identifying-causes-for-absence-with-tblastn)

- [KAAS - KEGG Automatic Annotation Server](http://www.genome.jp/tools/kaas/) | 双方向ヒット BBH (bi-directional best hit) | 一方向ヒット SBH (single-directional best hit)

#### Exercises
演習

[ターミナル](http://techacademy.jp/magazine/5155)で以下のコマンドを実行する:  

    wget https://github.com/haruosuz/mgsa/archive/master.zip
    unzip master.zip
    cd mgsa-master/2016-05-16/
    bash scripts/run.sh

[出力ファイル](https://github.com/haruosuz/mgsa/tree/master/2016-05-16/analysis/)は以下の通り:  

    analysis/
     Rplots.pdf
     Rtable.csv
     Rtable_.csv

#### 参考文献
- phylogenetic profiles
  - [Hierarchical tree based on phylogenetic profile matrix (presence/absence per species)?](https://www.biostars.org/p/100442/)
  - [Basu MK et al. BMC Bioinformatics. 2011 Nov 9;12:434. ProPhylo: partial phylogenetic profiling to guide protein family construction and assignment of biological process.](https://www.ncbi.nlm.nih.gov/pubmed/22070167)
  - [Brilli M et al. BMC Bioinformatics. 2008 Dec 21;9:551. Analysis of plasmid genes by phylogenetic profiling and visualization of homology relationships using Blast2Network.](https://www.ncbi.nlm.nih.gov/pubmed/19099604)
  - [統計数理(2006) カーネル法による複数のゲノムデータからのタンパク質間機能ネットワークの推定](http://www.ism.ac.jp/editsec/toukei/pdf/54-2-357.pdf)
  - [2005 系統プロファイルを利用した代謝反応ネットワーク中の保存領域抽出手法](http://ci.nii.ac.jp/naid/110003482755)
  - [Date SV, Marcotte EM. Nat Biotechnol. 2003 Sep;21(9):1055-62. Discovery of uncharacterized cellular systems by genome-wide analysis of functional linkages.](http://www.ncbi.nlm.nih.gov/pubmed/12923548)
  - [Pellegrini M et al. Proc Natl Acad Sci U S A. 1999 Apr 13;96(8):4285-8. Assigning protein functions by comparative genome analysis: protein phylogenetic profiles.](http://www.ncbi.nlm.nih.gov/pubmed/10200254)

----------

### 2016-05-10

RによるDNA配列解析

[DNA Sequence Statistics (1) — Bioinformatics 0.1 documentation](http://a-little-book-of-r-for-bioinformatics.readthedocs.io/en/latest/src/chapter1.html)

#### テスト・データ

    #install.packages("seqinr")
    library(seqinr)

    dna <- s2c("acgt")

    # Length of a DNA sequence
    length(dna)

    # Base composition of a DNA sequence
    table(dna)

    # GC Content of DNA
    GC(dna)

    # DNA words
    count(dna, 2)
    count(dna, 3)
    count(dna, 4)

#### 実際のデータ

Rコンソールで、以下のコマンドを実行する:  

    # Downloading data intocurrent working directory 
    getwd()
    system('curl -O ftp://ftp.ncbi.nlm.nih.gov/refseq/release/plasmid/plasmid.1.rna.fna.gz')

    library(seqinr)

    # Reading sequence data into R
    lna <- read.fasta(file = 'plasmid.1.rna.fna.gz', seqtype = c('DNA'))

    # How many sequences
    length(lna)

    # Length of sequences
    len <- sapply(lna, length); summary(len)

    # GC Content
    gcc <- sapply(lna, GC); summary(gcc)

    # Get sequence annotations (FASTA headers)
    annotation <- unlist(getAnnot(lna))

    # Exporting Data
    d.f <- data.frame(len, gcc, annotation)
    write.csv(d.f, file="table.csv")

    # Exploring Data Visually
    plot(len, gcc, xlab = "Length (bp)", ylab = "GC Content")

#### 参考文献
- [micropan: an R-package for microbial pan-genomics. BMC Bioinformatics. 2015 Mar 12](http://www.ncbi.nlm.nih.gov/pubmed/25888166)
- [Recommend Your Favorite Introductory "R In Bioinformatics" Books And Resources](https://www.biostars.org/p/539/)
- [Exploratory Analysis of Biological Data using R (2014) | Bioinformatics.ca](http://bioinformatics.ca/workshops/2014/exploratory-analysis-biological-data-using-r-2014)

- [SeqinR](http://pbil.univ-lyon1.fr/software/seqinr/home?lang=eng)
  - [Welcome to a Little Book of R for Bioinformatics! — Bioinformatics 0.1 documentation](http://a-little-book-of-r-for-bioinformatics.readthedocs.org/en/latest/index.html)
  - [Applied Statistics for Bioinformatics using R](https://cran.r-project.org/doc/contrib/Krijnen-IntroBioInfStatistics.pdf)
  - [Using the R SeqinR package - Musings from an unlikely candidateMusings from an unlikely candidate](http://davetang.org/muse/2013/05/09/using-the-r-seqinr-package/)
  - [SeqinR - biological data handling](http://www.slideshare.net/pau_corral/seqinr-biological-data-handling)
  - [(Rで)塩基配列解析](http://www.iu.a.u-tokyo.ac.jp/~kadota/r_seq.html#intro_general_translate_seqinr)
  - [(Rで)マイクロアレイデータ解析](http://www.iu.a.u-tokyo.ac.jp/~kadota/r.html)
  - [seqinr - 日々草(TEKの備忘録)](https://sites.google.com/site/adversariaoftekijima/r/seqinr)
  - [Rと系統樹(2)](https://www1.doshisha.ac.jp/~mjin/R/43/43.html)
  - [Rの初心者向けコード(生物系) - 驚異のアニヲタ社会復帰への道](http://d.hatena.ne.jp/MikuHatsune/20131214/1387003786)
  - [塩基配列上での変異とアミノ酸置換 - 驚異のアニヲタ社会復帰への道](http://d.hatena.ne.jp/MikuHatsune/20130404/1365068708)
  - [Rでfastaファイルを読み込む際におすすめのパッケージはありますか？ - #LSQA](http://qa.lifesciencedb.jp/questions/512/rでfastaファイルを読み込む際におすすめのパッケージはありますか)
  - [fastaファイルを一つにまとめる in R A springtail\'s sigh/ウェブリブログ](http://tullbergia.at.webry.info/201007/article_4.html)
  - [ギガシーケンサごっこ(1): shotgun配列を自作する A springtail\'s sigh/ウェブリブログ](http://tullbergia.at.webry.info/201006/article_2.html)
  - [phred互換の配列のクオリティファイルをR上で扱う： read.qual A springtail\'s sigh/ウェブリブログ](http://tullbergia.at.webry.info/201108/article_1.html)

----------

### 2016-04-26

#### Pan-genome
[pan-genome](https://en.wikipedia.org/wiki/Pan-genome)は、分類群の構成者（例えば、種を構成する株）に存在する遺伝子の総和を意味し、全ての株に共通する遺伝子（"core genome"）、2株以上に共通する遺伝子（"accessory or dispensable genome"）、単一の株に特有の(unique)遺伝子（"species-specific or strain-specific genes"）に分類される。

![http://www.ncbi.nlm.nih.gov/pmc/articles/PMC4765519/figure/F1/](https://github.com/haruosuz/mgsa/blob/master/images/CG-16-245_F1.jpg)

[Venn diagram plot that represents the three parts of the pan-genome. In gray: core genome; yellow: accessory or dispensable genome, and blue: species-specific or strain-specific genes. Adapted: Muzzi et al., 2007.](http://www.ncbi.nlm.nih.gov/pmc/articles/PMC4765519/figure/F1/)

#### Exercises
演習

各株における各遺伝子の有/無(1/0)を示すgene contentのデータ行列を作成し、遺伝子の共有に基づくベン図の作成とクラスター分析を行なう。解析の手順は次の通り。
本ページの[Clone or download -> Download ZIP](https://github.com/haruosuz/mgsa/archive/master.zip)をクリックして取得されたディレクトリ（例 `~/Downloads/mgsa-master`）に移動する。
以下の通りRスクリプト`scripts/test_gene_content.R`を実行する:  

    Rscript --vanilla scripts/test_gene_content.R

[出力ファイル](https://github.com/haruosuz/mgsa/tree/master/analysis/2016-04-26)は以下の通り:  

    analysis/2016-04-26/
     Rplots.pdf
     table.csv

Rパッケージ("limma","vegan")が無い場合には、Rコンソールで以下の通りインストールする:  

    # install "limma"
    source("http://bioconductor.org/biocLite.R")
    biocLite("limma")

    # install "vegan"
    install.packages("vegan")

#### 参考文献
  - [The bacterial pangenome as a new tool for analysing pathogenic bacteria. New Microbes New Infect. 2015 Jun](http://www.ncbi.nlm.nih.gov/pubmed/26442149)
  - Ten years of pan-genome analyses. Curr Opin Microbiol. 2015 Feb http://www.ncbi.nlm.nih.gov/pubmed/25483351
  - [ゲノムデザインに向けて | 森  浩禎](https://www.sbj.or.jp/wp-content/uploads/file/sbj/9006/9006_tokushu-1_4.pdf) | 図1. 3種類の大腸菌を比較したベン図 | 図2. 61種類の大腸菌比較. 共通に存在する遺伝子（コアゲノム）

----------

### 2016-04-19

微生物ゲノム解析の概要

- 参考文献
 - [Tools for bacterial comparative genomics | Holt Lab](http://holtlab.net/2015/02/25/tools-for-bacterial-comparative-genomics/)
 - [Inside the Pan-genome - Methods and Software Overview. Curr Genomics. 2015 Aug](http://www.ncbi.nlm.nih.gov/pubmed/27006628)
 - [A brief review of software tools for pangenomics. Genomics Proteomics Bioinformatics. 2015 Feb](http://www.ncbi.nlm.nih.gov/pubmed/25721608)
 - [ITEP: an integrated toolkit for exploration of microbial pan-genomes. BMC Genomics. 2014 Jan](http://www.ncbi.nlm.nih.gov/pubmed/24387194)
 - [Computing for Comparative Microbial Genomics, Springer, 2009, 270p.](http://link.springer.com/book/10.1007%2F978-1-84800-255-5)

----------

## References

### [K-mer](https://en.wikipedia.org/wiki/K-mer)

2017-06-27
http://kazumaxneo.hatenablog.com/entry/2017/06/27/180033
k-mer カウントして、配列も出力するツール　jellyfish、BFCounter - macでインフォマティクス

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

### Tools
- [phyloSkeleton: taxon selection, data retrieval and marker identification for phylogenomics. Bioinformatics. 2017 Jan 5.](https://www.ncbi.nlm.nih.gov/pubmed/28057682)
#### [USEARCH](http://www.drive5.com/usearch/)
- http://crusade1096.web.fc2.com/usearch.html
- 2016-10-04 [USEARCHを用いたメタ16S解析パイプライン](https://rpubs.com/nishikosh/203465)
- 2015-07-25 [USEARCHを使った16S rRNAアンプリコンシーケンス分析 - yokaのblog](http://yokazaki.hatenablog.com/entry/2015/07/25/202628)
- 2015-07-28 [USEARCHを使った16S rRNAアンプリコンシーケンス析② - yokaのblog](http://yokazaki.hatenablog.com/entry/2015/07/28/212629)
- https://twitter.com/tyu_shi/status/28695306021 Tyu_Shi on Twitter: "これがUSEARCH。こいつをクラスタの代表配列群相手に実行しているのがUCLUST。やたらと速いのは最初にwordの出現頻度計算してメモリにのせておいて、各配列ごとに上位8配列ぐらいとしかアライメント形成していないから。wordの共有数と相同性に相関があることが根拠らしい。"

#### 細菌ゲノム比較ツール
- [Pan-genome analysis software tools | Comparative genomics - OMICtools](https://omictools.com/pangenomics-category)
- [BPGA - a Bacterial Pan Genome Analysis Pipeline](http://www.iicb.res.in/bpga/index.html)
  - 論文 [BPGA- an ultra-fast pan-genome analysis pipeline. Sci Rep. 2016 Apr 13;6:24373.](http://www.ncbi.nlm.nih.gov/pubmed/27071527)
    - [Table 2. Comparison of 7 pan-genome analysis tools (BPGA, Roary, PanGP, PGAP, PGAT, Panseq, ITEP)](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4829868/table/t2/)
- [LS-BSR (Large Scale Blast Score Ratio)](https://github.com/jasonsahl/LS-BSR)
  - 論文 [The large-scale blast score ratio (LS-BSR) pipeline: a method to rapidly compare genetic content between bacterial genomes. PeerJ. 2014 Apr 1;2:e332.](https://www.ncbi.nlm.nih.gov/pubmed/24749011)
    - [Table 1. Comparison of 4 pan-genome methods (LS-BSR, GET_HOMOLOGUES, PGAP, ITEP)](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3976120/table/table-1/)
- [ITEP: Integrated Toolkit for Exploration of Pan-genomes | The Price Lab](https://price.systemsbiology.org/research/itep/)
- Tools for bacterial comparative genomics | Holt Lab http://holtlab.net/2015/02/25/tools-for-bacterial-comparative-genomics/
 - Bacterial genomics tutorial | Holt Lab https://holtlab.net/2014/12/27/bacterial-genomics-tutorial-2/
 - Bacterial genomics tutorial | BacPathGenomics https://bacpathgenomics.wordpress.com/2013/04/13/bacterial-genomics-tutorial/
 - Beginner's guide to comparative bacterial genome analysis using next-generation sequence data. Microb Inform Exp. 2013. http://www.ncbi.nlm.nih.gov/pubmed/23575213
- CodaChrome: a tool for the visualization of proteome conservation across all fully sequenced bacterial genomes | BMC Genomics | http://bmcgenomics.biomedcentral.com/articles/10.1186/1471-2164-15-65

- 結核菌 [Whole-genome sequencing and social-network analysis of a tuberculosis outbreak. N Engl J Med. 2011 Feb 24](http://www.ncbi.nlm.nih.gov/pubmed/21345102)
 - [結核の集団感染の全ゲノム配列決定とソーシャルネットワーク解析による検討 ｜ 日本語アブストラクト ｜ The New England Journal of Medicine（日本国内版）](http://www.nejm.jp/abstract/vol364.p730)
 - [次世代 分子疫学技術/情報　と　その周辺 - 感染症診療の原則](http://blog.goo.ne.jp/idconsult/e/6bc7fda02403371fb2b77a26bc03d003)
  - 例えばカナダBCの結核のアウトブレイク。記述疫学によるSocial Networkの絵は大変複雑になりましたが、菌の全ゲノム情報を元に分類すると、きれいに2つのクラスターがみえました。
 - [不法コカイン使用と結核流行 : 内科開業医のお勉強日記](http://intmed.exblog.jp/12182822/)

### Research papers on comparative bacterial genomics
細菌ゲノム比較に関する論文
- 大腸菌 [Comparative genomics of recent Shiga toxin-producing Escherichia coli O104:H4: short-term evolution of an emerging pathogen. MBio. 2013 Jan 22](http://www.ncbi.nlm.nih.gov/pubmed/23341549)
- 大腸菌 [Genomic epidemiology of the Escherichia coli O104:H4 outbreaks in Europe, 2011. Proc Natl Acad Sci U S A. 2012 Feb](http://www.ncbi.nlm.nih.gov/pubmed/22315421)
- 大腸菌 [Ogura Y et al. PNAS. 2009 Oct. "Comparative genomics reveal the mechanism of the parallel evolution of O157 and non-O157 enterohemorrhagic Escherichia coli."](http://www.ncbi.nlm.nih.gov/pubmed/19815525)
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

### 微生物なんでも
- [LPSN - List of Prokaryotic names with Standing in Nomenclature](http://www.bacterio.net/index.html)
 - [Holospora](http://www.bacterio.net/holospora.html)
- SFC授業
 - [SFC 2015年度 秋学期 基礎バイオインフォマティクス](https://github.com/haruosuz/introBI)
 - [SFC 2016年度 春学期 生命動態のデータサイエンス](https://github.com/haruosuz/DS4GD)
- 日本語チュートリアル
 - [ゲノム比較解析 - microbioinformatics](https://sites.google.com/site/microbioinformatics/genomu-bi-jiao-jie-xi) Hiromi Nishida
 [バイオインフォマティクス](http://crusade1096.web.fc2.com/katei.html) > [BLAST](http://crusade1096.web.fc2.com/blast.html)
 [NGS Surfer's Wiki | コンバータ・パーサ](https://cell-innovation.nig.ac.jp/wiki/tiki-index.php?page=コンバータ・パーサ)

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

### [Kadota](http://www.iu.a.u-tokyo.ac.jp/~kadota/)
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

### qc
- [クオリティコントロール | FASTQ | RNA-seq](http://bi.biopapyrus.net/rnaseq/qc/)
 - [FastQC | FASTQのクオリティチェック](http://bi.biopapyrus.net/rnaseq/qc/fastqc.html)
 - [Trimmomatic | アダプター配列除去](http://bi.biopapyrus.net/rnaseq/qc/trimmomatic.html)

### Genome assembly
- [GAGE-B: an evaluation of genome assemblers for bacterial organisms. Bioinformatics. 2013 Jul 15](http://www.ncbi.nlm.nih.gov/pubmed/23665771)
  - 細菌で複数のアセンブラー（Abyss、Cabog、Mira、MaSuRCA、SGA、SoapDenovo2、SPAdes、Velvet）の性能を比較。MaSuRCAとSPAdesの結果が良い（N50値が高い）。リード長100bpの250x coverageで（N50値はプラトーに達するので）十分なデータ量。
  - [Supplementary data](http://bioinformatics.oxfordjournals.org/content/suppl/2013/05/10/btt273.DC1/GAGE-B_SupplementaryMaterial_Apr4.docx)の「Recipes for genome assemblies」にアセンブラーの実行コマンドを記載。
  - 2013-05-20 [Homolog.us - Frontier in Bioinformatics](http://www.homolog.us/blogs/blog/2013/05/20/spades-and-masurca-assemblers-performed-best-in-gage-b-evaluation/) SPAdes and MaSuRCA Assemblers Performed Best in GAGE-B Evaluation
- SpadesとVelvetの比較 
  - 2013-08-30 [The Genome Factory: How Spades differs from Velvet](http://thegenomefactory.blogspot.com/2013/08/how-spades-differs-from-velvet.html)
  - 2013-05-25 [SPAdes vs Velvet assemby comparison | BacPathGenomics](https://bacpathgenomics.wordpress.com/2013/05/25/spades-vs-velvet-assemby-comparison/)
- 2009-09-30 [Tips for de novo bacterial genome assembly · Loman Labs](http://nickloman.github.io/uncategorized/2009/09/30/tips-for-de-novo-bacterial-genome-assembly/)
- [アセンブルの指標であるN50とNG50の違い - Wolfeyes Bioinformatics beta](http://yagays.github.io/blog/2013/05/15/n50-ng50/)
- de Bruijn Graph
  - [de Bruijn Graph を使った de novo アセンブリの発想がすごい件 - ほくそ笑む](http://d.hatena.ne.jp/hoxo_m/20100930/p1)
  - [CLCバイオジャパン - De Novo アセンブリ](http://www.clcbio.co.jp/fileadmin/user_upload/Mari/DeNovo_6.5.pdf)
  - ["de Bruijn"はどう発音する？ - Wolfeyes Bioinformatics beta](http://yagays.github.io/blog/2013/08/01/de-bruijn-pronounce/)
  - [de Bruijn graphを使ったアセンブラーのヘテロなサイトの取り扱いについて - #LSQA](http://qa.lifesciencedb.jp/questions/623/de-bruijn-graphを使ったアセンブラーのヘテロなサイトの取り扱いについて) 質問日 Aug 31 '12

### [Prokka](http://www.vicbioinformatics.com/software.prokka.shtml)
 - [Invoking Prokka](https://github.com/tseemann/prokka#invoking-prokka)
- FEB 6, 2017 [BINF 6203: Bacterial genome annotation with prokka | Genome Intelligence](http://genomeintelligence.org/?p=1212)
 - [Genome annotation and Pangenome analysis](https://github.com/microgenomics/tutorials/blob/master/pangenome.md)
  - [Annotating genomes](https://github.com/microgenomics/tutorials/blob/master/pangenome.md#annotating-genomes)
 - [Annotating the assembly using the PROKKA pipeline — Metagenomics Workshop SciLifeLab 1.0 documentation](http://metagenomics-workshop.readthedocs.io/en/latest/functional-annotation/prokka.html)
 - [Annotating a bacterial genome with Prokka — 2013-caltechworkshop 0.1 documentation](http://2013-caltech-workshop.readthedocs.org/en/latest/prokka-annotation.html)

### BioPerl
- 18/05/2015 [BioPerl をインストールして Perl モジュールを使ってみよう！ | Tools FoR](http://kiagorod.wp.xdomain.jp/2015.05.18.212/)
- 2015.04.26 [BioPerl | バイオ系なら知っておきたいBioPerlの利用方法,インストール法](http://bi.biopapyrus.net/perl/bioperl/)
- 2015.04.29 [SeqIO | BioPerlの使い方,フラットファイルの処理](http://bi.biopapyrus.net/perl/bioperl/seqio.html)
- 2012-11-30 [井上 潤：BioPerl](http://www.geocities.jp/ancientfishtree/BioPerl_JI.html)
- 2013-01-28 [BioPerlのインストール(Mac OS X) - Masamichi_C2の日記](http://d.hatena.ne.jp/Masamichi_C2/20130128/1359362290)

### BLAST
- [Local BLAST の使い方〜導入・準備編（MacOSX版）〜 2011 - 統合TV (togotv)(2011-04-20)](http://togotv.dbcls.jp/20110420.html)
- [Local BLAST の使い方〜検索実行・オプション編（MacOSX版）〜 2011 - 統合TV (togotv)(2011-06-08)](http://togotv.dbcls.jp/20110608.html)
- [Local BLAST (togotv)(2011-02-25)](http://togotv.dbcls.jp/20110225.html)
- [BLASTパッケージのインストール](http://bio-info.biz/tips/other_install_blast.html)
- [BLASTデータベースの作り方について](http://bio-info.biz/tips/other_blast_db.html)
- [井上 潤：Blast+](http://www.geocities.jp/ancientfishtree/BLASTplus_JI.html)
- BLAST® Command Line Applications User Manual - NCBI Bookshelf
 - [Options for the command-line applications.](http://www.ncbi.nlm.nih.gov/books/NBK279675/)
- [Building a BLAST database with local sequences](http://www.ncbi.nlm.nih.gov/books/NBK279688/)
 - [BLASTデータベースの作り方について](http://bio-info.biz/tips/other_blast_db.html)
 - [makeblastdb | blast検索用のデータベースを作成する方法](http://bi.biopapyrus.net/seq/blast/makeblastdb.html)
- [Extracting data from BLAST databases with blastdbcmd](http://www.ncbi.nlm.nih.gov/books/NBK279689/)
 - [自家製BLAST用DBから必要な配列エントリ取得 | ぼうのブログ](http://bonohu.jp/blog/2014/08/08/yetanother-blastdbcmd/)
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

https://www.ncbi.nlm.nih.gov/pubmed/28321234
Front Genet. 2017 Mar 6;8:23. doi: 10.3389/fgene.2017.00023. eCollection 2017.
A Review of Bioinformatics Tools for Bio-Prospecting from Metagenomic Sequence Data.
Roumpeka DD1, Wallace RJ2, Escalettes F3, Fotheringham I3, Watson M1.

https://www.ncbi.nlm.nih.gov/pubmed/27471065
Microb Biotechnol. 2016 Sep;9(5):681-6. doi: 10.1111/1751-7915.12389. Epub 2016 Jul 29.
Microbial bioinformatics 2020.
Pallen MJ1.


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


----------
