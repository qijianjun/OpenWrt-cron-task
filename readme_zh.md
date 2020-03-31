在OpenWrt上配置的定时任务（crontab）以及一些相关的shell脚本，实现以下功能：

- 更新dnsmasq引用的一些列表
- 备份dnsmasq日志到vps
- 守护翻墙/科学上网进程（shadowsocks和kcptun）
- 定时ping特定ip，生成html表格报告并发送

**bakup_log.sh**
备份 dnsmasq 日志到vps

填写以下字段
- your_vps_ssh_port
- your_ssh_key_path
- your_username
- your_vps_ip
- your_dest_path
- your_email_address

**update_ignore_list.sh**
更新大陆IP段，供智能分流用

**ss_watchdog.sh**
如果到墙外网络出现问题，尝试重启 shadowsocks

**kcptun_watchdog.sh**
如果到墙外网络出现问题，尝试重启 kcptun

**cping.sh**
ping `/root/ip.txt` 记录的IP，将结果记录到 `/root/ping.txt`

**sping.sh**
解析 ping 结果 `/root/ping.txt`，生成 html 表格报告，发送到邮箱（通过mutt）

需填写以下字段
- your_email_address
