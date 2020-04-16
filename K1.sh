#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# 修改机器名称
sed -i "s/OpenWrt/PSG1208/g" package/base-files/files/bin/config_generate

# 修改默认IP
sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/files/bin/config_generate

# 修改默认主题
# sed -i 's/bootstrap/argon/g' feeds/luci/collections/luci/Makefile

# 取消默认bootstrap主题
sed -i '/\+luci-theme-bootstrap/d' feeds/luci/collections/luci/Makefile
sed -i '/\+luci-theme-bootstrap/d' package/feeds/luci/luci/Makefile
sed -i '/CONFIG_PACKAGE_luci-theme-bootstrap=y/d' .config
sed -i '/set luci.main.mediaurlbase=\/luci-static\/bootstrap/d' feeds/luci/themes/luci-theme-bootstrap/root/etc/uci-defaults/30_luci-theme-bootstrap

# 删除原软件包
rm -rf package/lean/luci-theme-argon  

# 添加软件包
#ssrplus
git clone https://github.com/fw876/helloworld.git package/lean/luci-app-ssr-plus
#theme-argon
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/lean/Luci-theme-argon
#passwall
# git clone https://github.com/Lienol/openwrt-package.git package/lean/lienol

#-更新feeds
./scripts/feeds update -a
#-安装feeds
./scripts/feeds install -a
