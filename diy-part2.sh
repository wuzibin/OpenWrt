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
sed -i 's/192.168.1.1/192.168.50.1/g' package/base-files/files/bin/config_generate

#Add luci-app-dogcom
git clone https://github.com/mchome/openwrt-dogcom package/feeds/packages/dogcom
git clone https://github.com/mchome/luci-app-dogcom package/feeds/luci/luci-app-dogcom

#Add luci-app-vssr
git clone https://github.com/jerrykuku/lua-maxminddb package/lean/lua-maxminddb
git clone https://github.com/jerrykuku/luci-app-vssr package/lean/luci-app-vssr