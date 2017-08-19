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
(echo "10"; echo "4"; echo "1"; echo "$PWD/files/HIV.nex"; echo "Y"; echo "1"; echo "d") | HYPHYMP

# Done
echo "[$(date)] $0 has been successfully completed."

: <<'#__COMMENT_OUT__'
10 # (10) Positive Selection
4 # (4) Run the Branch-site Unrestricted Statistical Test for Episodic Diversification to test for evidence of episodic alignment-wide selective pressure
1 # |Choose Genetic Code| (1):[Universal] Universal code. (Genebank transl_table=1).
$PWD/files/HIV.nex # lib/hyphy/TemplateBatchFiles/lib2014/(null):
Y # A tree was found in the data file: Would you like to use it:(Y/N)?
1 # |Which branches to test?| (1):[All] Test for selection on all branches jointly
d # Please choose option 2, enter d to complete selection, enter q to cancel:

http://www.hyphy.org/tutorials/current-release-tutorial/
Use BUSTED to test for alignment-wide episodic diversification.
BUSTED: Full tree analysis
http://www.hyphy.org/tutorials/current-release-tutorial/#automating-analyses

(time bash ./run_hyphy_busted.sh &) >& log.hyphy_busted.$(date +%F).txt

#__COMMENT_OUT__
