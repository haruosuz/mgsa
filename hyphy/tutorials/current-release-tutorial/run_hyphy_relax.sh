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
(echo "10"; echo "10"; echo "1"; echo "$PWD/files/HIV.nex"; echo "N"; echo "$PWD/files/HIV-relax.nwk"; echo "3"; echo "2"; echo "2") | HYPHYMP

# Done
echo "[$(date)] $0 has been successfully completed."

: <<'#__COMMENT_OUT__'
10 # (10) Positive Selection
10 # (10) Test whether selected branches are under relaxed or intensified selection against reference branches
1 # |Choose Genetic Code| (1):[Universal] Universal code. (Genebank transl_table=1).
$PWD/files/HIV.nex # lib/hyphy/TemplateBatchFiles/lib2014/(null):
N # A tree was found in the data file: Would you like to use it:(Y/N)?
$PWD/files/HIV-relax.nwk # lib/hyphy/TemplateBatchFiles/Please select a tree file for the data::
3 # |Choose the set of branches to test for relaxed selection (T set)| (3):[Recipient] Set Recipient with 12 branches
2 # |Choose the set of reference branches (R set)| (2):[Donor] Set Donor with 13 branches
2 # |Analysis type| (2):[Minimal] Run only the RELAX test (2 models)

http://www.hyphy.org/tutorials/current-release-tutorial/
Use RELAX to compare selective pressures on different parts of the tree
http://www.hyphy.org/tutorials/current-release-tutorial/#automating-analyses

(time bash ./run_hyphy_relax.sh &) >& log.hyphy_relax.$(date +%F).txt

#__COMMENT_OUT__
