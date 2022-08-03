#!/bin/sh
# File       : conveyor.sh
# Time       ：2022/8/3 19:44
# Author     ：yang ming ming
# version    ：sh 3.2
# Description：

# 获取局域网IP
ip=$(ifconfig|grep inet |grep netmask|awk '{print $2}'|tail -n 1)
echo "http://${ip}:8000/"

python3 -m http.server >log/httpd.log 2>&1
