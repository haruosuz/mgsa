----------

Haruo Suzuki (haruo[at]g-language[dot]org)  
Last Update: 2017-06-30

----------

# Traitar Tutorial Project
Project started 2017-06-30.

[Traitar – the microbial trait analyzer](https://github.com/hzi-bifo/traitar)

微生物のゲノム配列から表現型を予測するツール。基質（炭素エネルギー源）利用能、酸素要求量、形態、抗生物質感受性、タンパク質分解、酵素活性に関連する[67の形質](https://github.com/hzi-bifo/traitar/blob/master/traits.tsv)を予測し、表現型に関連するタンパク質ファミリーを示す。

----------

## Project directory structures

    traitar/
     README.md: project documentation 
     data/: contains data files
     scripts/: contains Shell scripts
     analysis/: contains results of data analyses

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

traitar requires HMMER 3.1b2 (February 2015). Using HMMER 2.3.2 (Oct 2003), traitar printed the following message:

    FATAL: No such option "--domtblout".

----------

## Steps

    git clone https://github.com/hzi-bifo/traitar

### [Run Traitar with packaged sample data](https://github.com/hzi-bifo/traitar#run-traitar-with-packaged-sample-data)

サンプルデータでTraitarを実行する:  

    traitar_dir='/usr/lib/python2.7/site-packages/traitar'
    out_dir=$(date +%F)
    (time traitar phenotype ${traitar_dir}/data/sample_data ${traitar_dir}/data/sample_data/samples.txt from_genes ${out_dir} -c $(getconf _NPROCESSORS_ONLN) &) >& log.traitar.$(date +%F).txt

----------

## Acknowledgements

I am grateful to Dr. Aaron Weimann for his advice on Traitar.

----------

## References
- 2017-02-06 Aaron Weimann [From genomes to phenotypes: Traitar, the microbial trait analyzer – microBEnet: the microbiology of the Built Environment network.](http://www.microbe.net/2017/02/06/from-genomes-to-phenotypes-traitar-the-microbial-trait-analyzer/)
- [Weimann A et al. mSystems. 2016 Dec 27;1(6). "From Genomes to Phenotypes: Traitar, the Microbial Trait Analyzer."](https://www.ncbi.nlm.nih.gov/pubmed/28066816)

----------

