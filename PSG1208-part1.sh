#!/bin/bash
#=============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=============================================================

# Uncomment a feed source
sed -i 's/^#\(.*Joelyi\)/\1/' feeds.conf.default

# 添加clash支持
# git clone https://github.com/frainzy1477/luci-app-clash.git package/lean/luci-app-clash

# 添加v2ray
# git clone https://github.com/kuoruan/luci-app-v2ray.git package/lean/luci-app-v2ray
# rm rm -rf package/lean/v2ray
# git clone https://github.com/KFERMercer/openwrt-v2ray.git package/lean/v2ray
# git clone https://github.com/frainzy1477/luci-app-clash.git package/lean/luci-app-clash

# 增加ssr
# git clone https://github.com/kenzok8/openwrt-packages.git package/openwrt-packages
# git clone https://github.com/Joelyi/helloworld.git package/lean/luci-app-ssr-plus
