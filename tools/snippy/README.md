Haruo Suzuki (haruo[at]g-language[dot]org)  
Last Update: 2018-09-15

----------
# Snippy Tutorial Project
Project started 2018-09-15.

I have created shell scripts to run Snippy.
http://www.vicbioinformatics.com/software.snippy.shtml

## Project directory structures

    snippy/
     README.md: project documentation 
     input/: contains input files
     output/: contains output files
     scripts/: contains shell/perl scripts

## Usage

```
# Downloading the shell script
curl -O https://raw.githubusercontent.com/haruosuz/mgsa/master/tools/snippy/scripts/run_snippy.sh

# Running the shell script
(time bash ./run_snippy.sh &) >& log.txt

# Use `tail -f` to constantly monitor files (use Control-C to stop)
tail -f log.txt

```

## [Installation](https://github.com/tseemann/snippy/blob/master/README.md#installation)
インストール

### Conda
```
conda install -c bioconda -c conda-forge snippy
```

## Core SNP phylogeny
https://github.com/tseemann/snippy#core-snp-phylogeny
https://github.com/tseemann/snippy#using-snippy-multi
To simplify running a set of isolate sequences (reads or contigs) against the same reference, you can use the snippy-multi script. This script requires a tab separated input file as follows, and can handle paired-end reads, single-end reads, and assembled contigs.

----------

## Acknowledgements

I am grateful to Dr. Torsten Seemann for his advice on Snippy.

----------

## references
参考文献

https://www.slideshare.net/torstenseemann/snippy-balti-bioinformatics-brum-uk-tue-5-may-2015
Snippy - Rapid bacterial variant calling - UK - tue 5 may 2015

http://kazumaxneo.hatenablog.com/entry/2017/12/09/134248
SNVをコールしたり、全ゲノムのマルチプルアライメントを行う Snippy - macでインフォマティクス

### gubbins
https://github.com/sanger-pathogens/gubbins#generating-input-files
Any application which can generate a whole genome multi-FASTA alignment can be used with Gubbins, such as Snippy.

https://github.com/sanger-pathogens/gubbins/issues/214
snippy+ gubbins · Issue #214 · sanger-pathogens/gubbins

### recombination
組み換え

https://github.com/tseemann/snippy/issues/197
How does snippy deal with recombination events? · Issue #197 · tseemann/snippy

https://github.com/tseemann/snippy/issues/95
Extracting loci of SNPs after removal of recombined regions · Issue #95 · tseemann/snippy
Gubbins

### cited
被引用

https://www.ncbi.nlm.nih.gov/pubmed/29309930
Clin Microbiol Infect. 2018 Apr;24(4):350-354. doi: 10.1016/j.cmi.2017.12.016. Epub 2018 Jan 5.
Whole genome sequencing options for bacterial strain typing and epidemiologic analysis based on single nucleotide polymorphism versus gene-by-gene-based approaches.
Schürch AC1, Arredondo-Alonso S1, Willems RJL1, Goering RV2.
https://www.clinicalmicrobiologyandinfection.com/article/S1198-743X(17)30710-3/fulltext
https://www.sciencedirect.com/science/article/pii/S1198743X17307103
How can SNP-based approaches be performed?
Strain typing by whole genome sequencing (WGS) based on SNPs can be performed via reference-based mapping of either reads or assembled contigs. Many studies choose to map sequencing reads against a reference genome [11], [12], [13] with either a custom pipeline or using one of the available microbial SNP pipelines, such as Snippy, NASP, SNVphyl, CFSAN SNP Pipeline, or Lyve-SET (https://github.com/tseemann/snippy) [14], [15], [16].

https://www.ncbi.nlm.nih.gov/pubmed/28137745
Genome Biol Evol. 2017 Mar 1;9(3):414-426. doi: 10.1093/gbe/evx003.
Multiple Introductions and Recent Spread of the Emerging Human Pathogen Mycobacterium ulcerans across Africa.
Vandelannoote K1,2, Meehan CJ1, Eddyani M1, Affolabi D3, Phanzu DM4, Eyangoh S5, Jordaens K2,6, Portaels F1, Mangas K7, Seemann T8, Marsollier L9, Marion E9, Chauty A10, Landier J5,11, Fontanet A11, Leirs H2, Stinear TP7, de Jong BC1.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5381664/
Materials and Methods
Read Mapping and SNP/Large Deletion Detection
Read mapping and SNP detection were performed using the Snippy v2.6 pipeline (Seemann 2015). 
Snippy was used to pool all identified SNP positions called in at least one isolate and interrogate all isolates of the panel at that position. As such a multiple sequence alignment of "core SNPs" was generated.

Detection of Recombination
A whole genome alignment was constructed with Snippy using default parameters.

----------
