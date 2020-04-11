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
sed -i 's/bootstrap/argon_light/g' feeds/luci/collections/luci/Makefile
echo '添加主题argon_light'
theme_argon='https://github.com/Leo-Jo-My/luci-theme-argon-light-mod'  # 主题地址
git clone $theme_argon package/lean/luci-theme-argon_light
echo 'CONFIG_PACKAGE_luci-theme-argon_light=y' >> .config
