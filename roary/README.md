----------

Haruo Suzuki (haruo[at]g-language[dot]org)  
Last Update: 2016-12-29

----------

# Roary

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

## Updates

[scoary 1.6.9](https://pypi.python.org/pypi/scoary)
Microbial pan-GWAS using the output from Roary

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

[Roary](http://sanger-pathogens.github.io/Roary)を実行し、FastTreeを用いて、遺伝子の有/無(1/0)に基づく樹形図 (accessory_binary_genes.fa.newick) と、コア遺伝子アライメントに基づく系統樹 (core_gene_alignment.newick) を作成した。Rスクリプト`scripts/my_roary_tree.R`を用いて、treeのノードのラベルにORGANISM名を付ける:  

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
