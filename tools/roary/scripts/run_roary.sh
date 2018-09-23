#!/bin/bash
set -euo pipefail

echo; echo "# OS, version information"
echo $(getconf _NPROCESSORS_ONLN) cores
uname -a
python -V # python --version
roary -a

# Creating directories
mkdir -p ./data/{gbk,gff}

# Downloading GenBank files
echo; echo "# Getting data"
ACCESSIONs=(NC_001735 NC_005088 NC_007337 NC_008459) # IncPbeta (R751 pUO1 JMP134_1/pJP4 pBP136)
for ACCESSION in ${ACCESSIONs[@]}; do curl -L http://togows.dbcls.jp/entry/nucleotide/$ACCESSION > ./data/gbk/$ACCESSION.gbk; done

# Inspecting data
find ./data/gbk

# Converting GenBank files to GFF3
if [ ! -e bp_genbank2gff3.pl ]; then wget --no-check-certificate https://raw.githubusercontent.com/bioperl/bioperl-live/master/scripts/Bio-DB-GFF/bp_genbank2gff3.pl; fi
perl bp_genbank2gff3.pl ./data/gbk/*.gbk; mv *.gff ./data/gff/

echo; echo '## Running Roary'
#roary ./data/gff/*.gff -f ./analysis/ -p $(getconf _NPROCESSORS_ONLN) -i 95 -cd 100 -v -e
 roary ./data/gff/*.gff -f ./analysis/ -p $(getconf _NPROCESSORS_ONLN) -i 90 -cd 100 -v -e -n -z

echo; echo '## Running FastTree for core genome phylogeny'
FastTree -fastest -nt -gtr analysis/core_gene_alignment.aln > analysis/core_gene_alignment.newick

# Done
echo; echo "[$(date)] $0 has been successfully completed."

: <<'#__COMMENT_OUT__'

https://academic.oup.com/bioinformatics/article/31/22/3691/240757#supplementary-data

https://sanger-pathogens.github.io/Roary/

Options: -p INT    number of threads [1]
         -o STR    clusters output filename [clustered_proteins]
         -f STR    output directory [.]
         -e        create a multiFASTA alignment of core genes using PRANK
         -n        fast core gene alignment with MAFFT, use with -e
         -i        minimum percentage identity for blastp [95]
         -cd FLOAT percentage of isolates a gene must be in to be core [99]

         -a        check dependancies and print versions

         -z        dont delete intermediate files
         -v        verbose output to STDOUT

# ssh -X user@remote.domain (X11 forwarding)
echo; echo '## Roary plots https://github.com/sanger-pathogens/Roary/tree/master/contrib/roary_plots'
if [ ! -e roary_plots.py ]; then wget https://raw.githubusercontent.com/sanger-pathogens/Roary/master/contrib/roary_plots/roary_plots.py; fi
python roary_plots.py analysis/core_gene_alignment.newick analysis/gene_presence_absence.csv

Let's run the driver script in the project's main directory with:

    (time bash run_roary.sh &) >& log.roary.$(date +%F).txt

#__COMMENT_OUT__
