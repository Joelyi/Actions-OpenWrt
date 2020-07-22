#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# 回退源码
git reset --hard acf267bf08cda359b80069a79a790a1d57399e49

# 修改默认IP
sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/files/bin/config_generate

# 修改默认主题
sed -i 's/bootstrap/argon/g' feeds/luci/collections/luci/Makefile

# 添加软件包
#ssrplus
# git clone https://github.com/Joelyi/helloworld.git package/lean/luci-app-ssr-plus

#-更新feeds
# ./scripts/feeds update -a
#-安装feeds
# ./scripts/feeds install -a
