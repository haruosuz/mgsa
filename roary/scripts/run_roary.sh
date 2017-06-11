#!/bin/bash
set -euo pipefail

# Creating directories
mkdir -p ./data

# Downloading GenBank files
ACCESSIONs=(NC_005088 NC_007337 NC_008459 NC_001735)
URL=ftp://ftp.ncbi.nlm.nih.gov/genomes/archive/old_refseq/Plasmids
for ACCESSION in ${ACCESSIONs[@]}; do wget -nv $URL/gbk/$ACCESSION.gbk; done

# Converting GenBank files to GFF3
if [ ! -e bp_genbank2gff3.pl ]; then wget https://raw.githubusercontent.com/bioperl/bioperl-live/master/scripts/Bio-DB-GFF/bp_genbank2gff3.pl; fi
perl bp_genbank2gff3.pl ./*.gbk; mv *.{gbk,gff} data/

echo; echo '## Running Roary'
 roary -f ./analysis/ -e -n    -i 70 -v ./data/*.gff
#roary -f ./analysis/ -e -n -z -i 70 -v ./data/*.gff

echo; echo '## Running FastTree for core genome phylogeny'
FastTree -fastest -nt -gtr analysis/core_gene_alignment.aln > analysis/core_gene_alignment.newick

# ssh -X user@remote.domain (X11 forwarding)
echo; echo '## Roary plots https://github.com/sanger-pathogens/Roary/tree/master/contrib/roary_plots'
roary_plots.py analysis/core_gene_alignment.newick analysis/gene_presence_absence.csv

# Print operating system characteristics
uname -a
echo "[$(date)] $0 has been successfully completed."

: <<'#__COMMENT_OUT__'
http://bioinformatics.oxfordjournals.org/content/suppl/2015/07/20/btv421.DC1/Roary_supplementary_material.pdf

https://sanger-pathogens.github.io/Roary/
The species could be too diverse, in which case you should lower the blastp percentage identity (-i 90). * If you are setting this below 70%, then you're doing something wrong.

    (time bash run_roary.sh &) >& log.roary.txt
    (time bash run_roary.sh &) >& log.roary.$(date +%F).txt

#__COMMENT_OUT__
