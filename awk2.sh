 #!/bin/bash
 
# Using NR and $NF in awk statements to show line number and last column with other data
# Then match string 'xxxxx' using /xxxxx/ inside awk quotes

# Comment out following lines with ": '" on top line and ":" below last line

: '                  # start of multiline bash comment
 1469  cat t1 | grep COUNT | awk {print $9 "of" $8}
 1470  history | grep awk
 1471  cat t1 | grep COUNT | awk '{print $9 "of" $8}'
 1472  cat t1 | grep COUNT | awk '{print $10 $9 $8}'
 1473  cat t1 | grep COUNT | awk '{print $10" " $9" " $8}'
 1474  cat t1 | grep COUNT | awk '{print $10 " of " $8}'
 1500  vi awk_reorder.sh 
 1501  ./awk_reorder.sh 
 1506  git commit -m "awk script that reorders text output on matching line"
 2096  ls -l | awk {print $9}
 2097  ls -l | awk '{print $9}'
 2098  ls -l | awk '{print $8}'
 2099  ls -l | awk '{print $9}'
 2104  ./awk1.sh 
 2108  man awk
 2113  awk /drwx/ '{print $5 $NF}' t
 2114  awk  '{print $5, $NF}' t
 2115  awk  '{print $NR, $5, $NF}' t
 2116  awk  '{print NR, $5, $NF}' t
 2117  awk  '{print NR, $5, NF}' t
 2118  awk  '{print NR, $5, $NF}' t
 2120  awk rwx  '{print NR, $5, $NF}' t
 2121  awk  '/rwx {print NR, $5, $NF}' t
 2122  awk  'rwx {print NR, $5, $NF}' t
 2123  awk  '{print NR, $5, $NF}' t
 2124  awk  '/rwx/ {print NR, $5, $NF}' t
 2126  awk  '/rw/ {print NR, $5, $NF}' t
 2127  history | grep awk > awk2.sh
 '         # end of multiline bash comment

 echo "hello"


