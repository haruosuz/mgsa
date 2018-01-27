Haruo Suzuki (haruo[at]g-language[dot]org)  
Last Update: 2018-01-27

----------

# 2016

## Project directory structures

    mgsa/
     README.md: project documentation 
     data/: contains data files
     scripts/: contains Perl/Python/R/Shell scripts
     analysis/: contains results of data analyses

## Usage

シェルスクリプト[`scripts/run_roary.sh`](https://github.com/haruosuz/mgsa/blob/master/roary/scripts/run_roary.sh)を取得し実行する:  

    # Downloading the shell script
    curl -O https://raw.githubusercontent.com/haruosuz/mgsa/master/roary/scripts/run_roary.sh

    # Running the shell script
    (time bash run_roary.sh &) >& log.roary.txt

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

http://www.ige.tohoku.ac.jp/joho/gmProject/manualJP/CompareSequences.html
Accessories -> CompareSequences
左上「add empty panel」ボタンを押して出現したパネルの左上「file」ボタンを押し.gbkファイルを選んで「OK」ボタンを押す、を.gbkファイル毎に繰り返す。
「compare & draw all」ボタンを押す。

パネルの幅と描画サイズ
gene名を表示させるために、右上の drawing rate (point / kb) ボックスの数値を変更してください。

panel width (kd): 
drawing rate (point / kb): 

https://mt-rg.slack.com/archives/D0KCDMSB1/p1488368953763217
GenomeMatcher -> Set Parametersで、左上・右側のプルダウンメニューの[color]を最下部の[directional]に変更

https://mt-rg.slack.com/archives/D0KCDMSB1/p1488463346087837
-1 と入力すれば配列を反転します

保存
「PDF (this window)」ボタン
「save panels」ボタン

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

### 2016-07-12
Roaryの出力ファイル[`gene_presence_absence.csv`](https://github.com/haruosuz/mgsa/blob/master/roary/analysis/i50/gene_presence_absence.csv)の列`Annotation`には、単一ゲノム由来のproduct名 (例: `TrfA`) しか記載されていないので、複数ゲノム由来のproduct名を連結 (例: `S-TrfA~TrfA~transcriptional regulator`) することにより、ゲノム間の機能アノテーションの表記ゆれを確認する。

修正前 `gene_presence_absence.csv`

    Annotation
    KorA
    TrfA
    TrbO
    KleA
    hypothetical protein
    conjugal transfer ATPase TrbB

修正後 `my.gene_presence_absence.csv`

    Annotation
    KorA~KorA protein
    S-TrfA~TrfA~transcriptional regulator
    TrbO~hypothetical protein
    KleA~hypothetical protein
    hypothetical protein~single-stranded DNA-binding protein~Ssb
    conjugal transfer ATPase TrbB~conjugal transfer protein TrbB~TrbB

#### Exercises
演習

シェルスクリプト`scripts/2016-07-12.sh`を取得し実行する:  

    # Downloading the shell script
    curl -O https://raw.githubusercontent.com/haruosuz/mgsa/master/roary/scripts/2016-07-12.sh

    # Running the shell script
    (time bash 2016-07-12.sh &) >& log.2016-07-12.txt

各ステップは以下の通り:  

- サブディレクトリ(`scripts,data,analysis`)を作成。
- GenBank形式ファイル(`.gbk`)をダウンロード。Pythonスクリプト`scripts/my_genbank_parser.py`をダウンロードして実行し、Genbank形式ファイルから遺伝子ID(`locus_tag`)と機能アノテーション(`product`)を抽出する。出力ファイル`my.locus_tag.product.txt`
- Roaryの出力ファイル`gene_presence_absence.csv`をダウンロード。Rスクリプト`scripts/my_roary_gene_products.R`をダウンロードして実行し、複数ゲノム由来のproduct名を連結する。出力ファイル`my.gene_presence_absence.csv`

#### 参考文献
- [python - Parsing GenBank file: get locus tag vs product - Stack Overflow](http://stackoverflow.com/a/22100296)
- [GenBank形式](http://www.ige.tohoku.ac.jp/joho/gmProject/manualJP/kiso.html#genBankFormat) | [feature keyとqualifier](http://www.ige.tohoku.ac.jp/joho/gmProject/manualJP/kiso.html#featureKeyandQualifier)

----------

### 2016-07-05

[Roary: Supplementary Material | 4 Command line tools](https://academic.oup.com/bioinformatics/article/31/22/3691/240757/Roary-rapid-large-scale-prokaryote-pan-genome#supplementary-data)
を実行する。

#### Exercises
演習

シェルスクリプト[`scripts/run_roary-2016-07-05.sh`](https://raw.githubusercontent.com/haruosuz/mgsa/master/scripts/run_roary-2016-07-05.sh)を取得し実行する:  

    # Downloading the shell script
    curl -O https://raw.githubusercontent.com/haruosuz/mgsa/master/scripts/run_roary-2016-07-05.sh

    # Running the shell script
    (time bash run_roary-2016-07-05.sh &) >& log.roary-2016-07-05.txt

Roaryを実行する際に、`-e -n -z`オプションを付けると、`pan_genome_sequences/`サブディレクトリに各遺伝子クラスターの塩基配列アライメント（MultiFASTA形式ファイル）が生成される。[3 Output files | 3.2 Multifasta files of each gene](https://academic.oup.com/bioinformatics/article/31/22/3691/240757/Roary-rapid-large-scale-prokaryote-pan-genome#supplementary-data)

        roary -f ./analysis/ -e -n -z -i 50 -v ./data/*.gff

`trfA2`遺伝子のID(`locus_tag=R751p26`)、クラスター番号(`group_11`)、アライメントのFASTA形式ファイル(`group_11.fa.aln`)の順に確認する:  

	grep --color 'trfA2.*locus_tag' data/*.gff

	$ grep 'R751p26' analysis/clustered_proteins
	group_11: R751p26.p01   pUO1_10.p01     REUT_RS32990.p01        ST520_p15.p01

	$ grep '^>' analysis/pan_genome_sequences/group_11.fa.aln
	>R751p26.p01
	>REUT_RS32990.p01
	>ST520_p15.p01
	>pUO1_10.p01

#### [4 Command line tools](https://academic.oup.com/bioinformatics/article/31/22/3691/240757/Roary-rapid-large-scale-prokaryote-pan-genome#supplementary-data)

#### 4.1 Querying the pan genome
pan genomeを照会する2つの方法:  
1) `gene_presence_absence.csv`スプレッドシートをExcelで開き、行と列を自分でフィルタリングする、または  
2) `query_pan_genome`スクリプトを実行する。グループ・ファイル(`clustered_proteins`)とGFF3形式ファイル(`.gff`)を引数として渡す。

ヘルプを見る:  

    query_pan_genome -h

    # Options: 
     -g STR    groups filename [clustered_proteins]
     -a STR    action (union/intersection/complement/gene_multifasta/difference) [union]
     -o STR    output filename [pan_genome_results]
     -n STR    comma separated list of gene names for use with gene_multifasta action

##### 4.1.1 Difference between sets of isolates
Gene differences between sets of isolates  
株グループ間の遺伝子の違い

    # Running the script
    query_pan_genome -g analysis/clustered_proteins -a difference \
     --input_set_one data/{NC_001735.gbk.gff,NC_005088.gbk.gff} \
     --input_set_two data/{NC_007337.gbk.gff,NC_008459.gbk.gff}

    # Output files
    set_difference_accessory_graph.dot
    set_difference_common_set
    set_difference_common_set_reannotated
    set_difference_common_set_statistics.csv
    set_difference_core_accessory_graph.dot
    set_difference_unique_set_one
    set_difference_unique_set_one_reannotated
    set_difference_unique_set_one_statistics.csv
    set_difference_unique_set_two
    set_difference_unique_set_two_reannotated
    set_difference_unique_set_two_statistics.csv

出力ファイルは、共通(common)遺伝子と特有(unique)遺伝子に関するグループ・ファイルとスプレッドシート

##### 4.1.2 Create multi-FASTA files for a list of genes
Extract the sequence of each gene listed and create multi-FASTA files  
指定された遺伝子リストのアミノ酸配列を取得（FASTA形式ファイルを作成）

    # Running the script
    query_pan_genome -g analysis/clustered_proteins -a gene_multifasta \
     data/*.gff -n group_11

    # Output files
    pan_genome_results_group_11.fa

##### 4.1.3 Union (pan genome)
Union of genes found in isolates (pan genome)  
グループを構成する株に存在する遺伝子の総和

    query_pan_genome -g analysis/clustered_proteins -a union \
     -o my_pan_genome_allset.txt data/*.gff

    query_pan_genome -g analysis/clustered_proteins -a union \
     -o my_pan_genome_subset.txt data/{NC_001735.gbk.gff,NC_005088.gbk.gff,NC_007337.gbk.gff}

##### 4.1.4 Intersection (core genes)
Intersection of genes found in isolates (core genes)  
全ての株に共通する遺伝子

    query_pan_genome -g analysis/clustered_proteins -a intersection \
     -o my_core_genes_allset.txt data/*.gff

    query_pan_genome -g analysis/clustered_proteins -a intersection \
     -o my_core_genes_subset.txt data/{NC_001735.gbk.gff,NC_005088.gbk.gff,NC_007337.gbk.gff}

##### 4.1.5 Complement (accessory genes)
Complement of genes found in isolates (accessory genes)  
2株以上に共通する遺伝子

    query_pan_genome -g analysis/clustered_proteins -a complement \
     -o my_accessory_allset.txt data/*.gff

    query_pan_genome -g analysis/clustered_proteins -a complement \
     -o my_accessory_subset.txt data/{NC_001735.gbk.gff,NC_005088.gbk.gff,NC_007337.gbk.gff}

----------

### 2016-06-21

ホモログと判定される配列一致率（%identity）の閾値を指定して、Roaryを実行する。  
グループ（クレード/種/株）に特有の(unique)遺伝子（"species-specific or strain-specific genes"）を同定する。

#### Exercises
演習

`ssh -X`でLinuxサーバに接続し、シェルスクリプト`scripts/run_roary-2016-06-21.sh`を取得し実行する:  

    # Downloading the shell script
    curl -O https://raw.githubusercontent.com/haruosuz/mgsa/master/roary/scripts/run_roary-2016-06-21.sh

    # Running the shell script
    (time bash run_roary-2016-06-21.sh &) >& log.roary-2016-06-21.txt

ここでは、Roaryのオプション (`-i 50`) で、ホモログ判定する BLASTP %identity の最低値（デフォルトは95%）を50%に設定している:  

    # -i        minimum percentage identity for blastp [95]
    roary -f ./analysis/ -e -n -i 50 -v ./data/*.gff

Rスクリプト`scripts/my_roary_gene_content.R`を用いて、特定のタンパク質のアノテーション（ファイル`gene_presence_absence.csv`の列'Annotation'）の個数を確認する。例えば、キーワードとして、接合伝達タンパク質 conjugal transfer protein ('Trb') と 機能未知タンパク質 ('hypothetical.protein') を引数として与える:  

    # Downloading the R script
    curl -O https://raw.githubusercontent.com/haruosuz/mgsa/master/roary/scripts/my_roary_gene_content.R

    # Running the R script
    Rscript --vanilla my_roary_gene_content.R 'Trb' 'hypothetical.protein'

    # Input files
    analysis/gene_presence_absence.csv

    # Output files
    ls gene_content.*.csv
    ls gene_count.*.csv

    gene_content.Trb.csv
    gene_content.hypothetical.protein.csv
    gene_count.Trb.csv
    gene_count.hypothetical.protein.csv

3種類の*trb*遺伝子 (conjugal transfer proteins TrbH, TrbJ, TrbL) の homologous groups は何れも  
[`roary -i 95`](https://github.com/haruosuz/mgsa/tree/master/analysis/roary/i95)で2つに分割されたのに対して、  
[`roary -i 50`](https://github.com/haruosuz/mgsa/tree/master/analysis/roary/i50)で1つに統合された。

Rスクリプト[`scripts/my_roary_gene_unique.R`](https://github.com/haruosuz/mgsa/blob/master/scripts/my_roary_gene_unique.R)を用いて、グループ（クレード/種/株）に特有の遺伝子（"unique genes"）を同定する:  

    # Downloading the R script
    curl -O https://raw.githubusercontent.com/haruosuz/mgsa/master/scripts/my_roary_gene_unique.R

    # Running the R script
    Rscript --vanilla my_roary_gene_unique.R

    # Input files
    analysis/gene_presence_absence.csv

    # Output files
    ls gene_presence_*_absence_*.csv

    gene_presence_group1_absence_group2.csv
    gene_presence_group2_absence_group1.csv

group1 ('NC_001735.gbk', 'NC_005088.gbk') と group2 ('NC_007337.gbk', 'NC_008459.gbk') を定義し、  
group1に存在してgroup2に存在しない遺伝子リスト([gene_presence_group1_absence_group2.csv](https://github.com/haruosuz/mgsa/blob/master/analysis/roary/i50/gene_presence_group1_absence_group2.csv))、
group2に存在してgroup1に存在しない遺伝子リスト([gene_presence_group2_absence_group1.csv](https://github.com/haruosuz/mgsa/blob/master/analysis/roary/i50/gene_presence_group2_absence_group1.csv))
を出力する。

----------

### 2016-06-07
[How to perform a pangenome analysis using Roary | Determining the pangenome](https://github.com/microgenomics/tutorials/blob/master/pangenome.md#determining-the-pangenome)

#### Exercises
演習

ターミナルを開き、Linuxサーバにリモートログインする。`ssh -X`で接続する:  

    $ ssh -X user@remote.domain

以下の通り、シェルスクリプト`scripts/run_roary-2016-06-07.sh`を取得し、実行する:  

    # Downloading the shell script
    curl -O https://raw.githubusercontent.com/haruosuz/mgsa/master/roary/scripts/run_roary-2016-06-07.sh

    # Running the shell script
    (time bash run_roary-2016-06-07.sh &) >& log.roary-2016-06-07.txt

前回[2016-05-31](#2016-05-31)のステップ1〜4に加え、

- [Roary plots](https://github.com/sanger-pathogens/Roary/tree/master/contrib/roary_plots)を実行し、pan-genome解析結果を視覚化。[出力ファイル](https://github.com/haruosuz/mgsa/tree/master/analysis/roary_plots)

        roary_plots.py analysis/core_gene_alignment.newick analysis/gene_presence_absence.csv

        # Output
        analysis/roary_plots/
         pangenome_frequency.png
         pangenome_matrix.png
         pangenome_pie.png

-----

Rスクリプト`scripts/my_roary_Rtab.R`を用いて、
タブ区切りファイル(`*.Rtab`)から[箱ひげ図](https://ja.wikipedia.org/wiki/箱ひげ図)`analysis/2016-06-07/Rplots.pdf`を作成する。これらの箱ひげ図は、[Roary: Supplementary Material | 2.3 Output](https://academic.oup.com/bioinformatics/article/31/22/3691/240757/Roary-rapid-large-scale-prokaryote-pan-genome#supplementary-data) の (Sup. Fig. 14-17) に対応する。以下の通り、Rスクリプトを取得し、実行する:  

    # Downloading the R script
    curl -O https://raw.githubusercontent.com/haruosuz/mgsa/master/roary/scripts/my_roary_Rtab.R

    # Running the R script
    Rscript --vanilla my_roary_Rtab.R

    # Input files
    analysis/number_of_*.Rtab

    # Output files
    Rplots.pdf

[Roary: Supplementary Material | 2.3 Output](https://academic.oup.com/bioinformatics/article/31/22/3691/240757/Roary-rapid-large-scale-prokaryote-pan-genome#supplementary-data)  
Tab delimited files are created for visualizing with R (Sup. Fig. 14-17).  
- Sup. Fig. 14: Number of conserved genes.
- Sup. Fig. 15: Number of genes in the pan genome.
- Sup. Fig. 16: Number of new genes.
- Sup. Fig. 17: Number of unique genes.

-----

Roaryを実行し、FastTreeを用いて、遺伝子の有/無(1/0)に基づく樹形図 (accessory_binary_genes.fa.newick) と、コア遺伝子アライメントに基づく系統樹 (core_gene_alignment.newick) を作成した。Rスクリプト`scripts/my_roary_tree.R`を用いて、treeのノードのラベルにORGANISM名を付ける:  

    # Downloading the R script
    curl -O https://raw.githubusercontent.com/haruosuz/mgsa/master/roary/scripts/my_roary_tree.R

    # Running the R script
    Rscript --vanilla my_roary_tree.R

    # Input files
    data/*.gb*
    analysis/*.newick

    # Output files
    my.file.ORGANISM.txt
    my.tree.pdf
    analysis/accessory_binary_genes.fa.newick.tre
    analysis/core_gene_alignment.newick.tre

----------

### 2016-05-31
[Roary: rapid large-scale prokaryote pan genome analysis.](http://sanger-pathogens.github.io/Roary)  
細菌ゲノム比較パイプライン。総当たり(all against all BLAST)配列比較に供するデータ量をCD-HITで縮小して高速化。MCLを用いて類似配列をクラスタリング（遺伝子のホモログ・グループを同定）し、周辺遺伝子の保存 conserved gene neighbourhood (CGN) 情報を利用してオーソログとパラログを識別する。FastTreeを用いて、遺伝子の有/無(1/0)に基づく樹形図と、コア遺伝子アライメントに基づく系統樹を作成する。

![http://www.slideshare.net/joaoandrecarrico/computational-resources-in-infectious-disease](http://image.slidesharecdn.com/escmidamsterdam2016meettheexperts-160413093351/95/computational-resources-in-infectious-disease-10-638.jpg)
![http://www.slideshare.net/leightonp/comparative-genomics-and-visualisation-bs32010](http://image.slidesharecdn.com/2016-03-21bs32010pritchard-160321141209/95/comparative-genomics-and-visualisation-bs32010-84-638.jpg)
![http://www.slideshare.net/MirkoRossi2/toolbox-for-bacterial-population-analysis-using-ngs](http://image.slidesharecdn.com/introductionbacterialpopulationgenomics-160414060754/95/toolbox-for-bacterial-population-analysis-using-ngs-26-638.jpg)
![https://twitter.com/DrKatHolt/status/685617597367193600](https://pbs.twimg.com/media/CYPNkjYVAAAL666.png)

#### Exercises
演習

シェルスクリプト`scripts/run_roary-2016-05-31.sh`は、全ステップ（データの取得と変換、Roary、FastTree）を自動実行する。以下の通り、シェルスクリプトを取得し、実行する:  

    # Downloading the shell script
    curl -O https://raw.githubusercontent.com/haruosuz/mgsa/master/roary/scripts/run_roary-2016-05-31.sh

    # Running the shell script
    (time bash run_roary-2016-05-31.sh &) >& log.roary-2016-05-31.txt

各ステップは以下の通り:  

1. ディレクトリを作成し、配列データをダウンロード。GenBank形式ファイルの拡張子は`.gbk`（または`.gbff`）

        # Creating directories
        mkdir -p ./data

        # Downloading GenBank files
        ACCESSIONs=(NC_005088 NC_007337 NC_008459 NC_001735)
        URL=ftp://ftp.ncbi.nlm.nih.gov/genomes/archive/old_refseq/Plasmids
        for ACCESSION in ${ACCESSIONs[@]}; do wget -nv -P data/ $URL/gbk/$ACCESSION.gbk; done

        # Output
        data/
         NC_005088.gbk
         NC_007337.gbk
         NC_008459.gbk
         NC_001735.gbk

2. Perlスクリプト[`bp_genbank2gff3.pl`](https://github.com/bioperl/bioperl-live/blob/master/scripts/Bio-DB-GFF/bp_genbank2gff3.pl)を用いて、GenBank形式ファイル(`.gbk`)をGFF3形式ファイル(`.gff`)に変換。

        # Converting GenBank files to GFF3
        perl bp_genbank2gff3.pl data/*.gbk; mv *.gff data/

        # Output
        data/
         NC_001735.gbk.gff
         NC_005088.gbk.gff
         NC_007337.gbk.gff
         NC_008459.gbk.gff

3. Roaryを実行し、pan-genome解析。入力ファイル(`.gff`)の最後にFASTA塩基配列を含める（[Input files](https://sanger-pathogens.github.io/Roary/)）。

        # Running Roary
        roary -f ./analysis/ -e -n -v ./data/*.gff

        # Options: 
         -f STR    output directory [.]
         -e        create a multiFASTA alignment of core genes using PRANK
         -n        fast core gene alignment with MAFFT, use with -e
         -z        dont delete intermediate files
         -i        minimum percentage identity for blastp [95]
         -v        verbose output to STDOUT

        # Output
        analysis/
         accessory.header.embl
         accessory.tab
         accessory_binary_genes.fa
         accessory_binary_genes.fa.newick
         accessory_graph.dot
         blast_identity_frequency.Rtab
         clustered_proteins
         core_accessory.header.embl
         core_accessory.tab
         core_accessory_graph.dot
         core_alignment_header.embl
         core_gene_alignment.aln
         gene_presence_absence.csv
         gene_presence_absence.Rtab
         number_of_conserved_genes.Rtab
         number_of_genes_in_pan_genome.Rtab
         number_of_new_genes.Rtab
         number_of_unique_genes.Rtab
         pan_genome_reference.fa
         summary_statistics.txt

4. [FastTree](http://www.microbesonline.org/fasttree/)を実行して、全株に保存されたコア遺伝子の多重配列アライメントに基づく系統解析。

        # Running FastTree
        FastTree -nt -gtr analysis/core_gene_alignment.aln > analysis/core_gene_alignment.newick
        
        # Output
        analysis/
         core_gene_alignment.newick

#### Output
出力ファイル

[Roary: Supplementary Material | 3 Output files](https://academic.oup.com/bioinformatics/article/31/22/3691/240757/Roary-rapid-large-scale-prokaryote-pan-genome#supplementary-data)

Sup. Table 1. Output files File

| File | Description |
|:-----|:------------|
| gene_presence_absence.csv | 各株における遺伝子の有無と統計を含むスプレッドシート |
| core_gene_alignment.aln | 全株に保存されたコア遺伝子のアライメント（MultiFASTA形式） |
| clustered_proteins | 遺伝子クラスターを構成する配列のID (locus_tag) |
| *.Rtab | Rでグラフを生成するためのタブ区切りファイル |
| *.embl | 遺伝子の有無を視覚化するためのEMBL形式ファイル |
| accessory_binary_genes.fa.newick | accessory遺伝子の有無に基づくtree（newick形式） |
| pan_genome_reference.fa | pan-genomeの遺伝子の塩基配列（FASTA形式） |
| pan_genome_sequences/ | 各遺伝子クラスターのアライメント（MultiFASTA形式） |

----------

## References
- Roary: rapid large-scale prokaryote pan genome analysis.
  - [github](https://github.com/sanger-pathogens/Roary)
  - [website](https://sanger-pathogens.github.io/Roary/)
  - 論文 Bioinformatics. 2015 [Abstract](http://www.ncbi.nlm.nih.gov/pubmed/26198102) | [Full text](http://bioinformatics.oxfordjournals.org/content/31/22/3691.long) | [Supplementary Data](https://academic.oup.com/bioinformatics/article/31/22/3691/240757/Roary-rapid-large-scale-prokaryote-pan-genome#supplementary-data)
  - [How to perform a pangenome analysis using Roary](https://github.com/microgenomics/tutorials/blob/master/pangenome.md) | tutorials by CBIB

- slideshare（[Roary](http://sanger-pathogens.github.io/Roary)に言及）
  - 2016-04-14 [Toolbox for bacterial population analysis using NGS](http://www.slideshare.net/MirkoRossi2/toolbox-for-bacterial-population-analysis-using-ngs)
  - 2016-04-13 [Computational Resources In Infectious Disease](http://www.slideshare.net/joaoandrecarrico/computational-resources-in-infectious-disease)
  - 2016-03-21 [Comparative Genomics and Visualisation BS32010](http://www.slideshare.net/leightonp/comparative-genomics-and-visualisation-bs32010)

- [CD-HIT](http://weizhongli-lab.org/cd-hit/)
  - [CD-HITの使い方](http://bio-info.biz/tips/other_cd-hit_usage.html)
  - [CD-HITのインストール](http://bio-info.biz/tips/other_install_cd-hit.html)
  - 2016.02.23 [CD-HIT | 核酸およびアミノ酸配列のクラスタリング](http://bi.biopapyrus.net/seq/cd-hit.html)
  - 2015-12 [配列クラスタリングプログラムCD-HITの使い方 - バイオインフォマティクス初心者の日常](http://sy41211.hatenablog.com/entry/2015/12/12/162232)

- [MCL - a cluster algorithm for graphs](http://micans.org/mcl/)
  - [The mclblastline manual](http://micans.org/mcl/man/mclblastline.html)
  - 2014-12-07 [mclblastlineを使いたい - Aide-memoire](http://abs-0110.hatenablog.com/entry/2014/12/07/161426)
  - 2016.02.20, [OrthoFinder の使い方 - Qiita](http://qiita.com/NariseT/items/e2c90d0235316f8878d8)

- [The Newick tree format](http://evolution.genetics.washington.edu/phylip/newicktree.html)
  - [Newick書式から系統樹を描く - ryamadaの遺伝学・遺伝統計学メモ](http://d.hatena.ne.jp/ryamada22/20050513/1115948852)
  - [2011年度・玉川大学「分子系統進化学」・実習1](http://cse.naro.affrc.go.jp/minaka/cladist/tamagawa2011-1.html)
  - [FigTree - 井上潤](http://www.geocities.jp/ancientfishtree/FigTree.html) | FigTree は newick 形式で作成された系統樹を graphical に表示するプログラムです．
  - [系統樹 ape ade4 | Rで系統樹を作成する方法](http://stat.biopapyrus.net/graph/r-phylogenetic-tree.html)
  - [ストリーミング配信 - BIRD | 平成21年度ゲノムリテラシー講座 | 分子系統解析](http://www.jst.go.jp/nbdc/bird/jinzai/literacy/streaming/h21_4_3.pdf)

- `ssh -X`
  - [Forwarding X11 using ssh on modern desktop](http://vega.sra-tohoku.co.jp/~kabe/vsd/ssh-x.html)
  - [Xアプリのssh越し起動方法 - ものぐさ備忘録](http://d.hatena.ne.jp/gikogeek/20080220)
  - [[メモ]リモートXの接続方法 - Akira's Tech Notes](http://luozengbin.github.io/blog/2014-06-21-%5Bメモ%5Dリモートxの接続方法.html)
  - [X11 Forwarding - なんなんなん行く？](https://sites.google.com/site/teyasn001/ubuntu-12-10/sshniyorux11zhuan-song)

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

