#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.5.1/g' package/base-files/files/bin/config_generate
# openwrt banner (无法使用file大法来修改，变量不起作用)
rm package/base-files/files/etc/banner
echo " _   _ ___        ___ _____ _" >> package/base-files/files/etc/banner
echo "| | | (_) \      / (_)  ___(_)      Compiled by LongC-CN" >> package/base-files/files/etc/banner
echo "| |_| | |\ \ /\ / /| | |_  | | -------------------------------" >> package/base-files/files/etc/banner
echo "|  _  | | \ V  V / | |  _| | | Lean's OpenWrt, %C" >> package/base-files/files/etc/banner
echo "|_| |_|_|  \_/\_/  |_|_|   |_| -------------------------------" >> package/base-files/files/etc/banner
echo "" >> package/base-files/files/etc/banner
