----------

Haruo Suzuki (haruo[at]g-language[dot]org)  
Last Update: 2016-10-19

----------

# Bacterial Comparative Genomics Tutorial
細菌ゲノム比較チュートリアル

## Project directory structures

    comparison_tut/
     README.md: project documentation
     data/: contains data files
     scripts/: contains Perl/Python/R/Shell scripts
     analysis/: contains results of data analyses

## Scripts

----------

## Updates

### 2016-10-19
- [Bioinformatics Data Skills | Chapter 10. Working with Sequence Data](https://github.com/haruosuz/books/tree/master/bds#chapter-10-working-with-sequence-data)
[FASTA](https://ja.wikipedia.org/wiki/FASTA)形式
[FASTQ](https://ja.wikipedia.org/wiki/Fastq)形式

- [Chapter 7. Unix Data Tools](https://github.com/haruosuz/mgsa/tree/master/comparison_tut#chapter-7-unix-data-tools)

- [GenomeMatcher project](http://www.ige.tohoku.ac.jp/joho/gmProject/gmhomeJP.html)

http://www.jsbi.org/iibmp2016/program_highlight/
森宙史ら
乳児期のビフィズス菌優占の腸内細菌群集を形成する鍵となる因子の解明
Nat Commun. 2016, 7:11939. doi: 10.1038/ncomms11939.
http://www.nature.com/articles/ncomms11939

解析のワークフローとQIIMEのパラメータ　Supplementary Table 3. Analysis workflow and QIIME parameter settings used in this study http://www.nature.com/article-assets/npg/ncomms/2016/160624/ncomms11939/extref/ncomms11939-s1.pdf

NY地下鉄メタゲノム(PathoMap)論文では以下のセクションに記載されています。
http://www.cell.com/cell-systems/pdfExtended/S2405-4712(15)00002-2
Supplemental Code and Scripts

Bioinformatics Data Skills: Reproducible and Robust Research With Open Source Tools 
https://github.com/haruosuz/BDS#project-documentation
Project Documentation



### 2016-10-12
シェルスクリプト[`scripts/2016-10-12.sh`](https://github.com/haruosuz/mgsa/blob/master/comparison_tut/scripts/2016-10-12.sh)は、全ステップ（データ取得、FastQC）を実行する。シェルスクリプトを取得し、実行する:  

    # Downloading the shell script
    curl -O https://raw.githubusercontent.com/haruosuz/mgsa/master/comparison_tut/scripts/2016-10-12.sh

    # Running the shell script
    (time bash 2016-10-12.sh &) >& log.2016-10-12.txt

----------

- [Edwards DJ, Holt KE. Microb Inform Exp. 2013 Apr 10;3(1):2. "Beginner's guide to comparative bacterial genome analysis using next-generation sequence data."](http://www.ncbi.nlm.nih.gov/pubmed/23575213)
 - [Additional file 1: Tutorial](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3630013/#S1)

## 1. Genome assembly and annotation

プロジェクト・ディレクトリを作成し移動する:  

	mkdir -p ~/projects/comparison_tut/{analysis,data,scripts}
	cd ~/projects/comparison_tut/

### 1.1 Downloading E. coli sequences for assembly
DNA塩基配列決定装置（Illumina社のHiSeq）で得られた大腸菌 E. coli O104:H4 TY-2482株のペアエンド・リード（[ENA accession SRR292770](http://www.ebi.ac.uk/ena/data/view/SRR292770&display=html)）をダウンロードする:  

	curl -O ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR292/SRR292770/SRR292770_1.fastq.gz
	curl -O ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR292/SRR292770/SRR292770_2.fastq.gz
	mv *.fastq.gz data/

- [メイトペアシーケンス](https://jp.illumina.com/technology/next-generation-sequencing/mate-pair-sequencing_assay.html)
- 2011年12月13日 [Ion PGMとIllumina MiSeqシーケンサーのPaired-EndとMate-Pair Sequencing](http://omics-club.blogspot.jp/2011/12/20111213.html)
- 2010-12-21 [Paired-End Read って何ですか？ - ほくそ笑む](http://d.hatena.ne.jp/hoxo_m/20101221/p1)
- http://qa.lifesciencedb.jp/questions/229/illumina配列からのpaired-end-mate-pair識別方法

### 1.2 Examining quality of reads (FastQC)

FastQCのダウンロード

[FastQC v0.11.5](http://www.bioinformatics.babraham.ac.uk/projects/download.html#fastqc) was downloaded on 2016-10-12 into `scripts/` using:

	curl -O http://www.bioinformatics.babraham.ac.uk/projects/fastqc/fastqc_v0.11.5.zip
	unzip fastqc_v0.11.5.zip
	cd FastQC
	chmod 755 fastqc
	./fastqc -h

FastQCの実行

	scripts/FastQC/fastqc data/SRR292770_1.fastq.gz --outdir analysis/
	scripts/FastQC/fastqc data/SRR292770_2.fastq.gz --outdir analysis/

- [Babraham Bioinformatics - FastQC A Quality Control tool for High Throughput Sequence Data](http://www.bioinformatics.babraham.ac.uk/projects/fastqc/)
- 2016年7月28日 [FastQCでNGSリードの品質をチェックする – バイオインフォ 道場 [bioinfo-Dojo]](http://bioinfo-dojo.net/2016/07/28/fastqc_ngs_read_check/)
- 2015.05.09 [FastQC | FASTQのクオリティチェック](http://bi.biopapyrus.net/transcriptome/qc/fastqc.html)
- 2014/10/31 [fastQC | ぼうのブログ](http://bonohu.jp/blog/2014/10/31/fastqc/)
- [FASTQCによるシーケンス実験の品質管理 | Tips for NGS Data Analysis](http://catway.jp/bioinformatics/qc/fastqc.html)
- 2012.07.04 [アメリエフのブログ | 意外と知らない？FastQCの便利オプション](http://blog.amelieff.jp/?eid=183489)
- 2011-02-04 [Wolf Ears » FastQCをコマンドラインから実行する](http://g86.dbcls.jp/~yag/wordpress/archives/1237)
- 2010-11-30 [Martedì, 30 Novembre - こんな時間ですがパスタを茹でます](http://trattoriainutano.tumblr.com/post/60428329952/martedì-30-novembre)

#### fastq quality control package
FASTX-Toolkit (http://hannonlab.cshl.edu/fastx_toolkit/)  
Trimmomatic (http://www.usadellab.org/cms/index.php?page=trimmomatic)  

- [クオリティコントロール | FASTQ | RNA-seq](http://bi.biopapyrus.net/transcriptome/qc/)

### 1.3 Velvet – assembling reads into contigs
#### 1.3.1 Using VelvetOptimiser to optimise de novo assembly with Velvet

### 1.4 Ordering contigs against a reference using Mauve
#### 1.4.1 Viewing the ordered contigs (Mauve)
#### 1.4.2 Viewing the ordered contigs (ACT)
### 1.5 Mauve Assembly Metrics – Statistical View of the Contigs

### 1.6 Annotation using RAST
#### 1.6.1 Alternatives to RAST
Prokka (http://www.vicbioinformatics.com/software.prokka.shtml)

## 2. Comparative genome analysis
### 2.1 Downloading E. coli genome sequences for comparative analysis
### 2.2 Mauve – for multiple genome alignment
### 2.3 ACT – for detailed pairwise genome comparisons

----------

# [Chapter 7. Unix Data Tools](https://github.com/haruosuz/books/tree/master/bds#chapter-7-unix-data-tools)

### less
[less](https://ja.wikipedia.org/wiki/Less)で[*contaminated.fastq*](https://raw.githubusercontent.com/vsbuffalo/bds-files/master/chapter-07-unix-data-tools/contaminated.fastq)ファイルを見る:  

	less contaminated.fastq

`less`を終了するには、*q*を押す。

`less`でテキスト検索（マッチした部分をハイライト）。
`less contaminated.fastq`でファイルを開いて、 / を押して、AGATCGGを入力。

Table 7-1. lessの操作方法

|キー|動作|
|:---------|:---------|
|スペース|次ページを表示|
|b|前ページを表示|
|g|先頭行に移動|
|G|最終行に移動|
|/文字列|指定した文字列をカーソル以降で検索|
|?文字列|指定した文字列をカーソル以前で検索|
|n|次検索|
|N|nとは逆方向に次検索|

### The All-Powerful Grep

パターンにマッチした行の前（`-B`）、後（`-A`）、前後（`-C`）を出力するオプション:  

	grep -B1 "AGATCGG" contam.fastq | head -n 6
	grep -A2 "AGATCGG" contam.fastq | head -n 6

### Text Processing with Awk
[Awk](https://ja.wikipedia.org/wiki/AWK)  

> ###### Gawk versus Awk  
Mac OS XはBSD Awk。GNU Awk（Gawk）のマニュアルは`man gawk`  

- [AWKプログラミングの真髄の1つ　フィールド（列）を操る基礎テクニック (1/2)：CodeZine（コードジン）](http://codezine.jp/article/detail/7852)

Awkは、入力データをレコード（行）に分割し、各レコードをフィールドに分割する。レコード全体は変数`$0`に格納され、フィールドは`$1, $2, $3, ...`と分割される。

	awk '{ print $0 }' example.bed # mimic cat
	awk '{ print $2 "\t" $3 }' example.bed # mimic cut

Awkは算術演算子（`+, -, *, /, %, ^`）をサポートしている。featureの長さ（終了位置 - 開始位置）が18を超える行だけを出力:  

	awk '$3 - $2 > 18' example.bed

Table 7-2. Awkの比較・論理演算子
- [AWK で使われる演算子](http://aoki2.si.gunma-u.ac.jp/Hanasi/Algo/letsawk/WhatIsOperator.html)

論理演算子 `&&` (AND), `||` (OR), `!` (NOT) でパターンを繋ぐ。1番染色体上で長さ>10の行を出力:  

	awk '$1 ~ /chr1/ && $3 - $2 > 10' example.bed

2番染色体と3番染色体について、長さ（終了位置 - 開始位置）の列を追加する:  

	awk '$1 ~ /chr2|chr3/ { print $0 "\t" $3 - $2 }' example.bed

`BEGIN`と`END`

	awk 'BEGIN{ s = 0 }; { s += ($3-$2) }; END{ print "mean: " s/NR };' example.bed

`NR`（Number of Record）は現在の行番号

> ###### Setting Field, Output Field, and Record Separators  
`awk -F","`でCSVファイルの区切り文字を指定する。  
	awk -F"," -v OFS="\t" {print $1,$2,$3}  

`NR`を用いて、行の範囲を抽出:  

	awk 'NR >= 3 && NR <= 5' example.bed

GTFファイル（*Mus_musculus.GRCm38.75_chr1.gtf*）をBEDファイル（3列）に変換:  

	awk '!/^#/ { print $1 "\t" $4-1 "\t" $5 }' Mus_musculus.GRCm38.75_chr1.gtf | head -n 3

Awkの連想配列（*associative array*）は、Pythonの辞書、Perlのハッシュのように振る舞う。

	# This example has been split on multiple lines to improve readability
	awk '/Lypla1/ { feature[$3] += 1 }; \
	END { for (k in feature) \
	print k "\t" feature[k] }' Mus_musculus.GRCm38.75_chr1.gtf

Table 7-3. Awkの組み込み関数
- [The GNU Awk User's Guide - 組み込み関数](http://www.kt.rim.or.jp/~kbk/gawk-30/gawk_13.html)

### Bioawk: An Awk for Biological Formats
- [Bioawk - Fasta, Fastq, Sam, Bed, Gff Aware Awk Programming](https://www.biostars.org/p/47751/)

[Bioawkのソースからダウンロード、コンパイル、インストール](https://github.com/lh3/bioawk)、またはMac OS Xのパッケージ管理システムHomebrewでインストール:

	brew tap homebrew/science; brew install bioawk

`bioawk -c`で入力形式を指定する。サポートされている入力形式（`bed, sam, vcf, gff, fastx`）と設定変数を見る:  

	bioawk -c help

全タンパク質コード遺伝子の長さ（終了位置 - 開始位置）の列を追加:  

	bioawk -c gff '$3 ~ /gene/ && $2 ~ /protein_coding/ \
	{print $seqname,$end-$start}' Mus_musculus.GRCm38.75_chr1.gtf | head -n 4

FASTQをFASTAファイルに変換:  

	bioawk -c fastx '{print ">"$name"\n"$seq}' contam.fastq | head -n 4

FASTQ/FASTAエントリ数をカウント:  

	bioawk -c fastx 'END{print NR}' contam.fastq

配列の相補鎖を求める:  

	bioawk -c fastx '{print ">"$name"\n"revcomp($seq)}' contam.fastq | head -n 4

オプション`-c hdr`

	head -n 4 genotypes.txt
	bioawk -c hdr '$ind_A == $ind_B {print $id}' genotypes.txt

----------

## References

- [Beginner's guide to comparative bacterial genome analysis using next-generation sequence data. Microb Inform Exp. 2013](http://www.ncbi.nlm.nih.gov/pubmed/23575213)

----------
