#!/bin/sh
rfile=/root/ping.txt
d=`date "+%Y-%m-%d"`
r=`grep "${d}" ${rfile} | sed "s/50\/0\/100/50\/0\/100\/\/\//g;s/\/$//g;s/\//<\/td><td>/g;s/$/<\/td><\/tr>/g;s/^/<tr><td>/g;s/ /<\/td><td>/g"`
r="<html><table border='1'>$r</table></html>"
echo "$r" | mutt -e "set content_type=text/html" -s "ping report ($d)" your_email_address
