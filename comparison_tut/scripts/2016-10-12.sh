#!/bin/bash
set -euo pipefail

# Creating directories
mkdir -p ./{analysis,data/$(date +%F),scripts}

# Downloading data
#curl -O ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR292/SRR292770/SRR292770_1.fastq.gz
#curl -O ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR292/SRR292770/SRR292770_2.fastq.gz
#mv *.fastq.gz data/

# Inspecting Data
ls -lh data/*.fastq.gz
for FILE in data/*.fastq.gz; do echo -n $FILE" "; gzcat $FILE | echo $((`wc -l`/4)); done

# Running FastQC
for FILE in data/*.fastq.gz
do 
  scripts/FastQC/fastqc $FILE --outdir analysis/
done

# Print operating system characteristics
uname -a

echo "[$(date)] $0 has been successfully completed."

: <<'#__COMMENT_OUT__'

This shell script automatically carries out the entire steps: creating directories, downloading data files, and running FastQC (generating the output files analysis/{*_fastqc.html,*_fastqc.zip}).

#__COMMENT_OUT__
