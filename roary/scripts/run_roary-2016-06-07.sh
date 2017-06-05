#!/bin/bash
set -e
set -u
set -o pipefail

# Creating directories
mkdir -p ./data

# Downloading GenBank files
ACCESSIONs=(NC_005088 NC_007337 NC_008459 NC_001735 NC_005793 NC_008357 NC_010935)
ACCESSIONs=(NC_005088 NC_007337 NC_008459 NC_001735)
URL=ftp://ftp.ncbi.nlm.nih.gov/genomes/archive/old_refseq/Plasmids
for ACCESSION in ${ACCESSIONs[@]}; do wget -nv -P data/ $URL/gbk/$ACCESSION.gbk; done

# Converting GenBank files to GFF3
if [ ! -e bp_genbank2gff3.pl ]; then wget https://raw.githubusercontent.com/bioperl/bioperl-live/master/scripts/Bio-DB-GFF/bp_genbank2gff3.pl; fi
perl bp_genbank2gff3.pl data/*.gbk; mv *.gff data/

echo; echo '## Running Roary'
roary -f ./analysis/ -e -n -v ./data/*.gff

echo; echo '## Running FastTree for core genome phylogeny'
FastTree -nt -gtr analysis/core_gene_alignment.aln > analysis/core_gene_alignment.newick

# ssh -X cacao # ssh -X smith1
echo; echo '## Roary plots https://github.com/sanger-pathogens/Roary/tree/master/contrib/roary_plots'
roary_plots.py analysis/core_gene_alignment.newick analysis/gene_presence_absence.csv

# Print operating system characteristics
uname -a
echo "[$(date)] $0 has been successfully completed."

: <<'#__COMMENT_OUT__'
http://sanger-pathogens.github.io/Roary/

    (time bash run_roary-2016-06-07.sh &) >& log.roary-2016-06-07.txt

#__COMMENT_OUT__
