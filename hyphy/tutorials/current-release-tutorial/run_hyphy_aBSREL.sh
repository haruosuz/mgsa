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
(echo "10"; echo "1"; echo "1"; echo "1"; echo "2"; echo "$PWD/files/HIV.nex"; echo "Y"; echo "2"; echo "d"; echo "$PWD/files/HIV.nex.aBSREL") | HYPHYMP

# Done
echo "[$(date)] $0 has been successfully completed."

: <<'#__COMMENT_OUT__'
10 # (10) Positive Selection
1 # (1) Use the random effects branch-site model (2010) to find lineages subject to episodic selection.
1 # |Choose Genetic Code| (1):[Universal] Universal code. (Genebank transl_table=1).
1 # |Run the adaptive version of BS-REL?| (1):[Yes] [Strongly recommended] Automatically decide on appropriate model complexity among branches
2 # |Allow branch-site variation in synonymous rates?| (2):[No] [Default] Alpha varies from branch to branch, while omega varies among branch-site combinations
$PWD/files/HIV.nex # lib/hyphy/TemplateBatchFiles/(null):
Y # A tree was found in the data file: Would you like to use it:(Y/N)?
2 # |Which branches to test?| (2):[All] Test all branches
d # Please choose option 2, enter d to complete selection, enter q to cancel:
$PWD/files/HIV.nex.aBSREL # lib/hyphy/TemplateBatchFiles/Save analysis results to:

http://www.hyphy.org/tutorials/current-release-tutorial/
Use aBSREL to find lineages which have experienced episodic diversification.
aBSREL: Full tree analysis
http://www.hyphy.org/tutorials/current-release-tutorial/#automating-analyses

(time bash ./run_hyphy_aBSREL.sh &) >& log.hyphy_aBSREL.$(date +%F).txt

#__COMMENT_OUT__
