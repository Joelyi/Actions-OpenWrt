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
sed -i 's/bootstrap/argon_light/g' feeds/luci/collections/luci/Makefile

# 添加软件包
#ssrplus
git clong https://github.com/fw876/helloworld.git package/lean/luci-app-ssr-plus
#argon_light主题
git clone https://github.com/Leo-Jo-My/luci-theme-argon-light-mod.git package/lean/luci-theme-argon-light-mod

./scripts/feeds update -a

./scripts/feeds install -a
