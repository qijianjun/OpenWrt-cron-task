Some scripts to make your OpenWrt router work better.

[中文说明](readme_zh.md)

**bakup_log.sh**
backup dnsmasq log to your vps

fields to fill
- your_vps_ssh_port
- your_ssh_key_path
- your_username
- your_vps_ip
- your_dest_path
- your_email_address

**update_ignore_list.sh**
update china mainland ip scope

**ss_watchdog.sh**
restart shadowsocks if problem detected

**kcptun_watchdog.sh**
restart kcptun if problem detected

**cping.sh**
ping some ips(from /root/ip.txt) and log the result(/root/ping.txt)

**sping.sh**
parse ping result(/root/ping.txt) to html table and send as email

fields to fill
- your_email_address
