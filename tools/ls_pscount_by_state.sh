netstat -nat | grep :80 | awk '/^tcp/ {++S[$NF]} END {for(a in S) print a, S[a]}'
#显示连接个数，按端口统计
netstat -nat | awk '/^tcp/ {++S[$4]} END {for(a in S) print S[a],a }'
