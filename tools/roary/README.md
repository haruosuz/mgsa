Haruo Suzuki (haruo[at]g-language[dot]org)  
Last Update: 2018-09

----------

# Roary

[Roary: rapid large-scale prokaryote pan genome analysis.](http://sanger-pathogens.github.io/Roary)  
細菌ゲノム比較パイプライン。総当たり(all against all BLAST)配列比較に供するデータ量をCD-HITで縮小して高速化。MCLを用いて類似配列をクラスタリング（遺伝子のホモログ・グループを同定）し、周辺遺伝子の保存 conserved gene neighbourhood (CGN) 情報を利用してオーソログとパラログを識別する。FastTreeを用いて、遺伝子の有/無(1/0)に基づく樹形図と、コア遺伝子アライメントに基づく系統樹を作成する。

![http://www.slideshare.net/joaoandrecarrico/computational-resources-in-infectious-disease](http://image.slidesharecdn.com/escmidamsterdam2016meettheexperts-160413093351/95/computational-resources-in-infectious-disease-10-638.jpg)
![http://www.slideshare.net/leightonp/comparative-genomics-and-visualisation-bs32010](http://image.slidesharecdn.com/2016-03-21bs32010pritchard-160321141209/95/comparative-genomics-and-visualisation-bs32010-84-638.jpg)
![http://www.slideshare.net/MirkoRossi2/toolbox-for-bacterial-population-analysis-using-ngs](http://image.slidesharecdn.com/introductionbacterialpopulationgenomics-160414060754/95/toolbox-for-bacterial-population-analysis-using-ngs-26-638.jpg)
![https://twitter.com/DrKatHolt/status/685617597367193600](https://pbs.twimg.com/media/CYPNkjYVAAAL666.png)

## Project directory structures

    mgsa/
     README.md: project documentation 
     data/: contains data files
     scripts/: contains Perl/Python/R/Shell scripts
     analysis/: contains results of data analyses

## Usage

シェルスクリプト[`scripts/run_roary.sh`](https://github.com/haruosuz/mgsa/blob/master/tools/roary/scripts/run_roary.sh)を取得し実行する:  
```
# Downloading the shell script
curl -O https://raw.githubusercontent.com/haruosuz/mgsa/master/tools/roary/scripts/run_roary.sh

# Running the shell script
(time bash run_roary.sh &) >& log.roary.txt

```

----------

## Command line tools

[Roary: Supplementary Material | 4 Command line tools](https://academic.oup.com/bioinformatics/article/31/22/3691/240757#supplementary-data)
を実行する。

### 4.1 Querying the pan genome
pan genomeを照会する2つの方法:  
1) `gene_presence_absence.csv`スプレッドシートをExcelで開き、行と列を自分でフィルタリングする、または  
2) `query_pan_genome`スクリプトを実行する。グループ・ファイル(`clustered_proteins`)とGFF3形式ファイル(`.gff`)を引数として渡す。

ヘルプを見る:  
```
query_pan_genome -h

Options: -g STR    groups filename [clustered_proteins]
         -a STR    action (union/intersection/complement/gene_multifasta/difference) [union]
         -o STR    output filename [pan_genome_results]
         -n STR    comma separated list of gene names for use with gene_multifasta action
```

#### 4.1.1 Difference between sets of isolates
Gene differences between sets of isolates  
株グループ間の遺伝子の違い
```
# Running the script
query_pan_genome -g analysis/clustered_proteins -a difference \
 --input_set_one data/gff/{NC_001735.gbk.gff,NC_005088.gbk.gff} \
 --input_set_two data/gff/{NC_007337.gbk.gff,NC_008459.gbk.gff}

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
```
出力ファイルは、共通(common)遺伝子と特有(unique)遺伝子に関するグループ・ファイルとスプレッドシート

#### 4.1.2 Create multi-FASTA files for a list of genes
Extract the sequence of each gene listed and create multi-FASTA files  
指定された遺伝子リストのアミノ酸配列を取得（FASTA形式ファイルを作成）
```
# Running the script
query_pan_genome -g analysis/clustered_proteins -a gene_multifasta \
 data/gff/*.gff -n group_11

# Output files
pan_genome_results_group_11.fa
```

#### 4.1.3 Union (pan genome)
Union of genes found in isolates (pan genome)  
グループを構成する株に存在する遺伝子の総和
```
query_pan_genome -g analysis/clustered_proteins -a union \
 -o my_pan_genome_allset.txt data/*.gff

query_pan_genome -g analysis/clustered_proteins -a union \
 -o my_pan_genome_subset.txt data/{NC_001735.gbk.gff,NC_005088.gbk.gff,NC_007337.gbk.gff}
```

#### 4.1.4 Intersection (core genes)
Intersection of genes found in isolates (core genes)  
全ての株に共通する遺伝子
```
query_pan_genome -g analysis/clustered_proteins -a intersection \
 -o my_core_genes_allset.txt data/*.gff

query_pan_genome -g analysis/clustered_proteins -a intersection \
 -o my_core_genes_subset.txt data/{NC_001735.gbk.gff,NC_005088.gbk.gff,NC_007337.gbk.gff}
```

#### 4.1.5 Complement (accessory genes)
Complement of genes found in isolates (accessory genes)  
2株以上に共通する遺伝子
```
query_pan_genome -g analysis/clustered_proteins -a complement \
 -o my_accessory_allset.txt data/*.gff

query_pan_genome -g analysis/clustered_proteins -a complement \
 -o my_accessory_subset.txt data/{NC_001735.gbk.gff,NC_005088.gbk.gff,NC_007337.gbk.gff}
```



----------


[3 Output files | 3.2 Multifasta files of each gene](https://academic.oup.com/bioinformatics/article/31/22/3691/240757#supplementary-data)

Roaryを実行する際に、`-e -n -z`オプションを付けると、`pan_genome_sequences/`サブディレクトリに各遺伝子クラスターの塩基配列アライメント（MultiFASTA形式ファイル）が生成される。

----------

シェルスクリプト[`scripts/run_roary.sh`](https://github.com/haruosuz/mgsa/blob/master/tools/roary/scripts/run_roary.sh)
は、全ステップ（データの取得と変換、Roary、FastTree）を自動実行する。以下の通り、シェルスクリプトを取得し、実行する:  

各ステップは以下の通り:  

1. ディレクトリを作成し、配列データをダウンロード。GenBank形式ファイルの拡張子は`.gbk`（または`.gbff`）

```
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
```

2. Perlスクリプト[`bp_genbank2gff3.pl`](https://github.com/bioperl/bioperl-live/blob/master/scripts/Bio-DB-GFF/bp_genbank2gff3.pl)を用いて、GenBank形式ファイル(`.gbk`)をGFF3形式ファイル(`.gff`)に変換。

```
# Converting GenBank files to GFF3
perl bp_genbank2gff3.pl data/*.gbk; mv *.gff data/

# Output
data/
 NC_001735.gbk.gff
 NC_005088.gbk.gff
 NC_007337.gbk.gff
 NC_008459.gbk.gff
```

3. Roaryを実行し、pan-genome解析。入力ファイル(`.gff`)の最後にFASTA塩基配列を含める（[Input files](https://sanger-pathogens.github.io/Roary/)）。

```
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

```

4. [FastTree](http://www.microbesonline.org/fasttree/)を実行して、全株に保存されたコア遺伝子の多重配列アライメントに基づく系統解析。


```
# Running FastTree
FastTree -nt -gtr analysis/core_gene_alignment.aln > analysis/core_gene_alignment.newick

# Output
analysis/
 core_gene_alignment.newick

```
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

----------

