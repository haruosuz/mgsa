#!/bin/bash
set -e
set -u
set -o pipefail

# Creating directories
mkdir -p ./{scripts,data,analysis}

# Downloading data files
ACCESSIONs=(NC_005088 NC_007337 NC_008459 NC_001735)
for ACCESSION in ${ACCESSIONs[@]}; do curl -L "http://www.ncbi.nlm.nih.gov/sviewer/?report=gbwithparts&retmode=text&val=$ACCESSION" > data/$ACCESSION.gbk; done

# Downloading Roary Output
curl https://raw.githubusercontent.com/haruosuz/mgsa/master/roary/analysis/i50/gene_presence_absence.csv > analysis/gene_presence_absence.csv

# Downloading scripts
curl -O https://raw.githubusercontent.com/haruosuz/mgsa/master/roary/scripts/my_genbank_parser.py
curl -O https://raw.githubusercontent.com/haruosuz/mgsa/master/roary/scripts/my_roary_gene_products.R
mv my_genbank_parser.py my_roary_gene_products.R scripts/

# Running scripts
for FILE in data/*.gbk; do python scripts/my_genbank_parser.py $FILE; done > analysis/my.locus_tag.product.txt
Rscript --vanilla scripts/my_roary_gene_products.R analysis/my.locus_tag.product.txt analysis/gene_presence_absence.csv

# Print operating system characteristics
uname -a
echo "[$(date)] $0 has been successfully completed."

: <<'#__COMMENT_OUT__'

Let's run the driver script in the project's main directory with:

    (time bash scripts/2016-07-12.sh &) >& log.2016-07-12.txt

#__COMMENT_OUT__
