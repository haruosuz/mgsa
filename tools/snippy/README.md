Haruo Suzuki (haruo[at]g-language[dot]org)  
Last Update: 2018-09-15

----------
# Snippy Tutorial Project
Project started 2018-09-15.

I have created shell scripts to run Snippy.
http://www.vicbioinformatics.com/software.snippy.shtml

## Usage

```
# Downloading the shell script
curl -O https://raw.githubusercontent.com/haruosuz/mgsa/master/tools/snippy/scripts/run_snippy.sh

# Running the shell script
(time bash ./run_snippy.sh &) >& log.snippy.$(date +%F).txt

# Use `tail -f` to constantly monitor files (use Control-C to stop)
tail -f log.txt

```

## Project directory structures

    snippy/
     README.md: project documentation 
     input/: contains input files
     output/: contains output files
     scripts/: contains shell/perl scripts

## Installation
https://github.com/tseemann/snippy/blob/master/README.md#installation

### Conda
```
conda install -c bioconda -c conda-forge snippy
```

## Core SNP phylogeny
https://github.com/tseemann/snippy#core-snp-phylogeny
https://github.com/tseemann/snippy#using-snippy-multi

----------

## Acknowledgements

I am grateful to Dr. Torsten Seemann for his advice on Snippy.

----------

## References

### Japanese
https://www.slideshare.net/torstenseemann/snippy-balti-bioinformatics-brum-uk-tue-5-may-2015
Snippy - Rapid bacterial variant calling - UK - tue 5 may 2015

http://kazumaxneo.hatenablog.com/entry/2017/12/09/134248
SNVをコールしたり、全ゲノムのマルチプルアライメントを行う Snippy - macでインフォマティクス


### gubbins
https://github.com/sanger-pathogens/gubbins#generating-input-files
Any application which can generate a whole genome multi-FASTA alignment can be used with Gubbins, such as Snippy.

https://github.com/sanger-pathogens/gubbins/issues/214
snippy+ gubbins · Issue #214 · sanger-pathogens/gubbins

----------
