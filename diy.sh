#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# 修改默认IP
sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/files/bin/config_generate

# 修改默认主题
sed -i 's/bootstrap/argon/g' feeds/luci/collections/luci/Makefile

# 添加软件包
#ssr-plus
git clone https://github.com/fw876/helloworld lede/package/lean/luci-app-ssr-plus

./scripts/feeds update -a
./scripts/feeds install -a
