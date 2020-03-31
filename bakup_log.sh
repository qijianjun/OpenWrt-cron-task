#!/bin/sh

# detect
f=/tmp/dnsmasq.log
fs=`du -k "$f" | cut -f1`
if [ $fs -lt 3000 ];then
    echo "file size ok, do not backup"
    exit
fi
dt=`date "+%Y%m%d%H%M%S"`
f2=/tmp/dnsmasq_${dt}.log

# action
cp $f $f2
echo "" > $f
scp -P your_vps_ssh_port -i your_ssh_key_path $f2 your_username@your_vps_ip:your_dest_path

# result
if [ $? -eq 1 ];then
    echo "copy error"
    echo "backup dnsmasq log error $dt, file size is ${fs}k" | mutt -s "scp error ${dt}" your_email_address
else
    echo "copy success"
    rm $f2
fi
