#!/bin/bash
set -euo pipefail

echo; echo "# OS, version information"
cat /etc/redhat-release
cat /proc/version
uname -a

echo; echo "# Download example datasets as a zip file."
wget --no-check-certificate -O files.zip https://github.com/veg/hyphy-tutorials/blob/master/docs/selection/data/files.zip\?raw\=true
unzip files.zip -d files

echo; echo "# Run HYPHYMP"
#echo `(echo "10"; echo "4"; echo "1"; echo "$PWD/files/HIV.nex"; echo "Y"; echo "1"; echo "d") | HYPHYMP`
(echo "1"; echo "1"; echo "1"; echo "$PWD/files/WestNileVirus_NS3.fas"; echo "MG94CUSTOMCF3X4"; echo "2"; echo "012345"; echo "Y"; echo "1"; echo "1") | HYPHYMP

# Done
echo "[$(date)] $0 has been successfully completed."

: <<'#__COMMENT_OUT__'
1 # (1) Basic Analyses
1 # (1) Analyse codon data with a variery of standard models using given tree.
1 # |Choose Genetic Code| (1):[Universal] Universal code. (Genebank transl_table=1).
$PWD/files/WestNileVirus_NS3.fas # lib/hyphy/TemplateBatchFiles/Please specify a codon data file::
MG94CUSTOMCF3X4 # Please type in the abbreviation for the model you want to use:
2 # |Model Options| (2):[Global] Model parameters are shared by all branches, branch lengths are estimated independently.
012345 #Please enter a 6 character model designation (e.g:010010 defines HKY85):
Y # Would you like to use it:(Y/N)?
1 # |Branch Lengths| (1):[Estimate] Estimate branch lengths by ML

http://www.hyphy.org/tutorials/current-release-tutorial/
Estimate a single alignment-wide ω.
http://www.hyphy.org/tutorials/current-release-tutorial/#automating-analyses

(time bash ./run_hyphy_basic.sh &) >& log.hyphy_basic.$(date +%F).txt

#__COMMENT_OUT__
