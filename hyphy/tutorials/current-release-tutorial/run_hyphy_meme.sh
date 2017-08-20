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
(echo "10"; echo "9"; echo "1"; echo "1"; echo "$PWD/files/WestNileVirus_NS3.fas"; echo "2"; echo "012345"; echo "Y"; echo "$PWD/files/WestNileVirus_NS3.fas.nuc_fit"; echo "5"; echo "11"; echo "0.1"; echo "N"; echo "$PWD/files/WestNileVirus_NS3.fas.MEME.csv") | HYPHYMP

# Done
echo "[$(date)] $0 has been successfully completed."

: <<'#__COMMENT_OUT__'
10 # (10) Positive Selection
9 # (9) Quickly test for positive selection using several approaches.
1 # |Choose Genetic Code| (1):[Universal] Universal code. (Genebank transl_table=1).
1 # |New/Restore| (1):[New Analysis] Perform a new analysis.
$PWD/files/WestNileVirus_NS3.fas # lib/hyphy/TemplateBatchFiles/Please specify a codon data file::
2 # |Model Options| (2):[Custom] Use any reversible nucleotide model crossed with MG94.
012345 # Please enter a 6 character model designation (e.g:010010 defines HKY85):
Y # A tree was found in the data file: Would you like to use it:(Y/N)?
$PWD/files/WestNileVirus_NS3.fas.nuc_fit # lib/hyphy/TemplateBatchFiles/Save nucleotide model fit to::
5 # |dN/dS bias parameter options| (5):[Estimate dN/dS only] Estimate from data without branch corrections.
11 # |Ancestor Counting Options| (11):[MEME] Mixed effects model of evolution to search for evidence of episodic selection at indvidual sites 
0.1 # Significance level for Likelihood Ratio Tests (permissible range = [0,1], default value = 0.1)
N # Save individual fit files to disk (CAUTION: will create 3x the number of sites files, [Y/N])
$PWD/files/WestNileVirus_NS3.fas.MEME.csv # lib/hyphy/TemplateBatchFiles/Save site-by-site LRT results to::

http://www.hyphy.org/tutorials/current-release-tutorial/
Use MEME to find sites which have experienced episodic diversification.
http://www.hyphy.org/tutorials/current-release-tutorial/#automating-analyses

(time bash ./run_hyphy_meme.sh &) >& log.hyphy_meme.$(date +%F).txt

#__COMMENT_OUT__
