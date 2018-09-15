#!/bin/bash
set -euo pipefail

echo; echo "# OS, version information"
echo $(getconf _NPROCESSORS_ONLN) cores
uname -a
perl -v | grep "version"
python -V # python --version
R -q -e 'R.version.string'

# Creating directories
mkdir -p ./{data/{fna,gbk},scripts,analysis}
echo; echo "# Getting data"
ACCESSIONs=(NC_010716 NC_009982 BR000038 NC_010643) # IncW (pIE321 pMAK3 R388 R7K)
ACCESSIONs=(NC_001740 NC_002524 NC_002636 AJ271879) # IncQ (RSF1010 pIE1115 pDN1 pIE1130)
ACCESSIONs=(AY365053 CP000541 CP003376 CP009797 CP018471) # IncP-1beta
ACCESSIONs=(NC_001735 NC_005088 NC_007337 NC_008459) # IncPbeta (R751 pUO1 JMP134_1/pJP4 pBP136)

echo ${#ACCESSIONs[@]}
echo ${ACCESSIONs[@]}
for ACCESSION in ${ACCESSIONs[@]}; do
    echo $ACCESSION
    #curl -L "https://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch.fcgi?db=nuccore&id=$ACCESSION&rettype=fasta_cds_aa&retmode=text" > $ACCESSION.faa
    #curl -L "https://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch.fcgi?db=nuccore&id=$ACCESSION&rettype=fasta&retmode=text" > $ACCESSION.fna
    #curl -L "https://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch.fcgi?db=nuccore&id=$ACCESSION&rettype=gbwithparts&retmode=text" > $ACCESSION.gbk

    # http://togows.dbcls.jp/site/ja/rest.html
    curl -L http://togows.dbcls.jp/entry/nucleotide/$ACCESSION > ./data/gbk/$ACCESSION.gbk
    wget -nv -P ./data/fna/ http://togows.dbcls.jp/entry/nucleotide/$ACCESSION.fasta
done

# Inspecting data
find data

echo; echo '# Running Snippy'
# https://github.com/tseemann/snippy#using-snippy-multi
if [ ! -e snippy-multi ]; then wget https://raw.githubusercontent.com/tseemann/snippy/master/bin/snippy-multi; fi

# Creating requires a tab separated input file <isolates.tab>
find data/fna -name "*.fasta" | xargs basename -s .fasta > my.sequence.id.txt
find data/fna -name "*.fasta" > my.sequence.path.txt
paste my.sequence.id.txt my.sequence.path.txt > my.isolates.tab

reference=./data/gbk/NC_008459.gbk
perl snippy-multi my.isolates.tab --ref $reference --cpus $(getconf _NPROCESSORS_ONLN) > runme.sh
sh ./runme.sh

# Done
echo; echo "[$(date)] $0 has been successfully completed."

: <<'#__COMMENT_OUT__'
# Snippy
http://www.vicbioinformatics.com/software.snippy.shtml

Let's run the driver script in the project's main directory with:

(time bash run_snippy.sh &) >& log.snippy.$(date +%F).txt

#__COMMENT_OUT__
