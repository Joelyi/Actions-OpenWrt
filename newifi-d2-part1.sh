#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default

# 添加主题
#theme-rosy
git clone https://github.com/rosywrt/luci-theme-rosy.git package/lean/luci-theme-rosy

# 添加软件包
#openwet常用软件包
git clone https://github.com/kenzok8/openwrt-packages.git package/lean/openwrt-packages
#passwall依赖
git clone https://github.com/kenzok8/small.git package/lean/openwrt-packages/small
#OpenClash
#git clone https://github.com/vernesong/OpenClash.git package/lean/luci-app-OpenClash
#京东签到插件
git clone https://github.com/jerrykuku/luci-app-jd-dailybonus.git package/lean/luci-app-jd-dailybonus
