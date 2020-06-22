#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# 修改默认IP
sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/files/bin/config_generate

# 删除原软件包
# rm -rf package/lean/luci-theme-argon  

# 添加主题
#theme-rosy
git clone https://github.com/rosywrt/luci-theme-rosy.git package/lean/luci-theme-rosy

# 修改默认主题
sed -i 's/bootstrap/rosy/g' feeds/luci/collections/luci/Makefile

# 添加软件包
#openwet常用软件包
git clone https://github.com/kenzok8/openwrt-packages.git package/lean/diy
#passwall依赖
git clone https://github.com/kenzok8/small.git package/lean/small

#-更新feeds
./scripts/feeds update -a
#-安装feeds
./scripts/feeds install -a
