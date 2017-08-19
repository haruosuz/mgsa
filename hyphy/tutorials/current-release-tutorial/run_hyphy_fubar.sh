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
(echo "12"; echo "1"; echo "1"; echo "1"; echo "$PWD/files/WestNileVirus_NS3.fas"; echo "Y"; echo "20"; echo "5"; echo "2000000"; echo "1000000"; echo "100"; echo "0.5") | HYPHYMP

# Done
echo "[$(date)] $0 has been successfully completed."

: <<'#__COMMENT_OUT__'
12 # (12) Selection/Recombination
1 # (1) Detect site-specific pervasive diversifying and purifying selection using the FUBAR (Fast Unbiased Bayesian AppRoximate) method on a multiple partition data set, e.g. produced by GARD.
1 # |Choose Genetic Code| (1):[Universal] Universal code. (Genebank transl_table=1).
1 # How many datafiles are to be analyzed (>=1):?
$PWD/files/WestNileVirus_NS3.fas # lib/hyphy/TemplateBatchFiles/Please specify codon data #1::
Y # A tree was found in the data file: Would you like to use it:(Y/N)?
# [FUBAR PHASE 1]
20 # Number of grid points per dimension (total number is D^2) (permissible range = [5,50], default value = 20, integer)
# [FUBAR PHASE 2]
5 # Number of MCMC chains to run (permissible range = [2,20], default value = 5, integer)
2000000 # The length of each chain (permissible range = [500000,100000000], default value = 2000000, integer)
1000000 # Discard this many samples as burn-in (permissible range = [100000,1900000], default value = 1000000, integer)
100 # How many samples should be drawn from each chain (permissible range = [10,1000000], default value = 100, integer)
0.5 # The concentration parameter of the Dirichlet prior (permissible range = [0.001,1], default value = 0.5)
# [FUBAR PHASE 3]

http://www.hyphy.org/tutorials/current-release-tutorial/
Use FUBAR to find sites which have experienced pervasive diversification.
http://www.hyphy.org/tutorials/current-release-tutorial/#automating-analyses

(time bash ./run_hyphy_fubar.sh &) >& log.hyphy_fubar.$(date +%F).txt

#__COMMENT_OUT__
