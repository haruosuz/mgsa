#!/bin/bash
set -euo pipefail

# Print operating system characteristics
uname -a
# Creating directories
mkdir -p ./{data/{faa,fna,gbk},analysis}
# Downloading GenBank files
ACCESSIONs=(NC_005088 NC_007337 NC_008459 NC_001735)
echo ${#ACCESSIONs[@]}
echo ${ACCESSIONs[@]}
for ACCESSION in ${ACCESSIONs[@]}; do
    curl -L "https://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch.fcgi?db=nuccore&id=$ACCESSION&rettype=fasta_cds_aa&retmode=text" > ./data/faa/$ACCESSION.pep
    curl -L "https://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch.fcgi?db=nuccore&id=$ACCESSION&rettype=fasta&retmode=text" > ./data/fna/$ACCESSION.fasta
    curl -L "https://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch.fcgi?db=nuccore&id=$ACCESSION&rettype=gbwithparts&retmode=text" > ./data/gbk/$ACCESSION.gbk
done

# Variables and Command Arguments
n_cores=$(getconf _NPROCESSORS_ONLN)

echo; echo "# Run the de novo gene prediction method:"
ls_bsr.py -p "${n_cores}" -d data/fna -c usearch

# Done
echo "[$(date)] $0 has been successfully completed."

: <<'#__COMMENT_OUT__'

Let's run the driver script in the project's main directory with:

    (time bash ./run_lsbsr.sh &) >& log.lsbsr.$(date +%F).txt
    (time bash run_lsbsr.sh &) >& log.txt

#__COMMENT_OUT__
