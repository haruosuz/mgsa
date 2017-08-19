#!/bin/bash
set -euo pipefail

echo; echo "# OS, version information"
cat /etc/redhat-release
cat /proc/version
uname -a

echo; echo "# Download data"
wget http://www.hyphy.org/w/images/2/2e/HIV_pol_BC_08.fas

echo; echo "# Run HYPHYMP"
#echo `(echo "11"; echo "4"; echo "1"; echo "$PWD/HIV_pol_BC_08.fas"; echo "1"; echo "HKY85"; echo "2"; echo "$PWD/SBP.txt") | HYPHYMP`
(echo "11"; echo "4"; echo "1"; echo "$PWD/HIV_pol_BC_08.fas"; echo "1"; echo "HKY85"; echo "2"; echo "$PWD/SBP.txt") | HYPHYMP

# Done
echo "[$(date)] $0 has been successfully completed."

: <<'#__COMMENT_OUT__'
http://www.hyphy.org/w/index.php/HyPhy#Using_Single_Breakpoint_Recombination_.28SBP.29
Using Single Breakpoint Recombination (SBP)
http://www.hyphy.org/tutorials/current-release-tutorial/#automating-analyses

(time bash ./run_hyphy_sbp.sh &) >& log.hyphy_sbp.$(date +%F).txt

#__COMMENT_OUT__
