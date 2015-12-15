netstat -nat | grep :80 | awk '/^tcp/ {++S[$NF]} END {for(a in S) print a, S[a]}'
