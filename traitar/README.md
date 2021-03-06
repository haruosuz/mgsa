----------

Haruo Suzuki (haruo[at]g-language[dot]org)  
Last Update: 2017-08-07

----------

# Traitar Tutorial Project
Project started 2017-06-30.

[Traitar – the microbial trait analyzer](https://github.com/hzi-bifo/traitar)
は、微生物のゲノム配列から表現型を予測するツール。タンパク質ファミリー（Pfam）の有無に基づいて、基質（炭素源・エネルギー源）利用能、酸素要求量、形態、抗生物質感受性、タンパク質分解、酵素活性に関連する
[67の表現形質](https://github.com/hzi-bifo/traitar/blob/master/traits.tsv)
を予測する。
[GIDEON - Global Infectious Diseases and Epidemiology Network](https://www.gideononline.com), 
[Bergey's Manual of Systematic Bacteriology](http://www.springer.com/series/4157)
の表現型データを利用。

----------

## Project directory structures

    traitar/
     README.md: project documentation 
     data/: contains data files
     scripts/: contains Shell scripts
     analysis/: contains results of data analyses

----------

## Run environments

    $cat /etc/redhat-release
    CentOS Linux release 7.2.1511 (Core)
    $cat /proc/version
    Linux version 3.10.0-327.13.1.el7.x86_64 (builder@kbuilder.dev.centos.org) (gcc version 4.8.3 20140911 (Red Hat 4.8.3-9) (GCC) ) #1 SMP Thu Mar 31 16:04:38 UTC 2016
    $uname -a
    Linux smith1 3.10.0-327.13.1.el7.x86_64 #1 SMP Thu Mar 31 16:04:38 UTC 2016 x86_64 x86_64 x86_64 GNU/Linux
    $perl -v | grep "version"
    This is perl 5, version 16, subversion 3 (v5.16.3) built for x86_64-linux-thread-multi
    $python -V # python --version
    Python 2.7.5

----------

# [Traitar](https://github.com/hzi-bifo/traitar/blob/master/README.md)

## [Installation](https://github.com/hzi-bifo/traitar/blob/master/INSTALL.md)

Install Traitar using:

    sudo pip install traitar
    # Successfully installed traitar-1.1.2

#### [Additional requirements](https://github.com/hzi-bifo/traitar/blob/master/INSTALL.md#additional-requirements)

traitar requires HMMER 3.1b2 (February 2015). When using HMMER 2.3.2 (Oct 2003), traitar printed the following message:

    FATAL: No such option "--domtblout".

traitar requires the Pfam 27.0 HMM models.
download and extract the Pfam models using:

    path_to_Pfam_folder=$HOME/data/pfam/Pfam27.0

    traitar pfam $path_to_Pfam_folder
    traitar pfam --local $path_to_Pfam_folder
    # IOError: [Errno 13] Permission denied: '/usr/lib/python2.7/site-packages/traitar/config.json'

    #wget -b ftp://ftp.ebi.ac.uk/pub/databases/Pfam/releases/Pfam27.0/Pfam-A.hmm.gz
    #gunzip -c Pfam-A.hmm.gz > Pfam-A.hmm

    sudo traitar pfam --local $path_to_Pfam_folder

## [Basic usage](https://github.com/hzi-bifo/traitar#basic-usage)

Traitarの標準ワークフロー

![](https://raw.githubusercontent.com/hzi-bifo/traitar/master/workflow.png)

[`samples.txt`](https://raw.githubusercontent.com/hzi-bifo/traitar/master/traitar/data/sample_data/samples.txt)に記載されたサンプルの塩基配列（`${in_dir}`ディレクトリ内のFASTA形式ファイル）に対して、ProdigalでORF予測、HMMerでPfamアノテーション、67の形質を予測する:  

    traitar phenotype ${in_dir} samples.txt from_nucleotides ${out_dir}

ORF予測が既に行なわれている（Pfamアノテーションから開始する）場合:  

    traitar phenotype ${in_dir} samples.txt from_genes ${out_dir}

#### [Run Traitar with packaged sample data](https://github.com/hzi-bifo/traitar#run-traitar-with-packaged-sample-data)
サンプルデータ（[`${traitar_dir}/data/sample_data`](https://github.com/hzi-bifo/traitar/tree/master/traitar/data/sample_data)）でTraitarを実行

    traitar_dir='/usr/lib/python2.7/site-packages/traitar'
    out_dir=$(date +%F)
    traitar phenotype ${traitar_dir}/data/sample_data ${traitar_dir}/data/sample_data/samples.txt from_genes ${out_dir} -c $(getconf _NPROCESSORS_ONLN)

## [Results](https://github.com/hzi-bifo/traitar#results)
結果

[`${out_dir}`](https://github.com/haruosuz/mgsa/tree/master/traitar/analysis/2017-06-30)

    # Pfamアノテーション
    ${out_dir}/annotation

    # 表現型予測
    ${out_dir}/phenotype_prediction

#### [Heatmaps](https://github.com/hzi-bifo/traitar#heatmaps)
ヒートマップ

    # 表現型とサンプルのクラスタリング樹形図を示すヒートマップ
    ${out_dir}/phenotype_prediction/heatmap_phypat.pdf
    ${out_dir}/phenotype_prediction/heatmap_phypat+PGL.pdf
    ${out_dir}/phenotype_prediction/heatmap_combined.pdf

![](https://raw.githubusercontent.com/hzi-bifo/traitar/master/traitar/data/sample_data/traitar_out/phenotype_prediction/heatmap_combined.png)

#### [Phenotype prediction - Tables and flat files](https://github.com/hzi-bifo/traitar#phenotype-prediction---tables-and-flat-files)
表現型予測 - テーブルとフラットファイル

    # タブ区切りテキストファイル
    ${out_dir}/phenotype_prediction/predictions_majority-vote_combined.txt
    ${out_dir}/phenotype_prediction/predictions_flat_majority-votes_combined.txt

    0 = negative prediction
    1 = prediction made only by the pure phyletic classifier
    2 = prediction made by the phylogeny-aware classifier
    3 = prediction supported by both algorithms

    # 各アルゴリズム (phypat, phypat+PGL) の結果
    ${out_dir}/phenotype_prediction/phypat/
    ${out_dir}/phenotype_prediction/phypat+PGL/

#### [Phenotype-relevant protein families and feature tracks](https://github.com/hzi-bifo/traitar#phenotype-relevant-protein-families-and-feature-tracks)
表現型に関連するタンパク質ファミリー

    ${out_dir}/phenotype_prediction/phypat/feat_gffs/
    ${out_dir}/phenotype_prediction/phypat+PGL/feat_gffs/

----------

## Acknowledgements

I am grateful to Dr. [Aaron Weimann](https://twitter.com/aaron_weimann) for his advice on Traitar.

----------

## References

- [Traitar – the microbial trait analyzer](https://github.com/hzi-bifo/traitar)
  - 2017-02-06 Aaron Weimann [From genomes to phenotypes: Traitar, the microbial trait analyzer – microBEnet: the microbiology of the Built Environment network.](http://www.microbe.net/2017/02/06/from-genomes-to-phenotypes-traitar-the-microbial-trait-analyzer/)
  - [Weimann A et al. mSystems. 2016 Dec 27;1(6). "From Genomes to Phenotypes: Traitar, the Microbial Trait Analyzer."](https://www.ncbi.nlm.nih.gov/pubmed/28066816)

http://tjo.hatenablog.com/entry/2015/03/03/190000
RでL1 / L2正則化を実践する - 六本木で働くデータサイエンティストのブログ

----------
