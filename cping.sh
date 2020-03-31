#!/bin/sh
rfile=/root/ping.txt
tfile=/root/ip.txt
while read ip loc
do
	d=`date "+%Y-%m-%d %H:%M:%S"`
	r=`ping ${ip} -c 50 | grep "\(loss\|trip\)" | sed 's/\( packets transmitted, \| packets received, \|% packet loss\|round-trip min\/avg\/max = \| ms\)/\//g'`
        r=${r/$'\n'\//}
	echo "${d} ${ip} ${loc} ${r}" >> ${rfile}
done < ${tfile}

