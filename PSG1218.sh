#!/bin/bash
#============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy.sh
# Description: OpenWrt DIY script  (After Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#============================================================

device_name='PSG1218'
wifi_name='PHICOMM'
lan_ip='192.168.2.1'        # Lan Ip地址
utc_name='Asia\/Shanghai'   # 时区
default_theme='argon'

# 修改机器名称
sed -i "s/OpenWrt/$device_name/g" package/base-files/files/bin/config_generate

# 设置lan ip
sed -i "s/192.168.1.1/$lan_ip/g" package/base-files/files/bin/config_generate

# 修改默认时区
sed -i "s/'UTC'/'CST-8'\n   set system.@system[-1].zonename='$utc_name'/g" package/base-files/files/bin/config_generate
     
# 修改wifi名称
sed -i "s/OpenWrt/$wifi_name/g" package/kernel/mac80211/files/lib/wifi/mac80211.sh

# 修改默认主题
sed -i 's/bootstrap/$default_theme/g' feeds/luci/collections/luci/Makefile

# 去除默认主题
#sed -i '/set luci.main.mediaurlbase=\/luci-static\/bootstrap/d' feeds/luci/themes/luci-theme-bootstrap/root/etc/uci-defaults/30_luci-theme-bootstrap

# 添加clash支持
# git clone https://github.com/frainzy1477/luci-app-clash.git package/lean/luci-app-clash

# 添加v2ray
# git clone https://github.com/kuoruan/luci-app-v2ray.git package/lean/luci-app-v2ray
# rm rm -rf package/lean/v2ray
# git clone https://github.com/KFERMercer/openwrt-v2ray.git package/lean/v2ray
# git clone https://github.com/frainzy1477/luci-app-clash.git package/lean/luci-app-clash

# 增加ssr
# git clone https://github.com/kenzok8/openwrt-packages.git package/openwrt-packages
git clone https://github.com/Joelyi/helloworld.git package/openwrt-packages/luci-app-ssr-plus

# 更新安装
./scripts/feeds update -a
./scripts/feeds install -a
