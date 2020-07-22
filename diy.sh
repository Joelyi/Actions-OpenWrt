#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# 修改默认IP
sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/files/bin/config_generate

# 修改内核
# sed -i 's/KERNEL_PATCHVER:=5.4/KERNEL_PATCHVER:=4.19/g' ./target/linux/x86/Makefile
# sed -i 's/KERNEL_TESTING_PATCHVER:=5.4/KERNEL_TESTING_PATCHVER:=4.19/g' ./target/linux/x86/Makefile

# 删除原软件包
# rm -rf package/lean/luci-app-unblockmusic
# rm -rf package/lean/UnblockNeteaseMusic
# rm -rf package/lean/UnblockNeteaseMusicGo

# 添加主题
#theme-rosy
# git clone https://github.com/rosywrt/luci-theme-rosy.git package/lean/luci-theme-rosy

# 修改默认主题
sed -i 's/bootstrap/argon/g' feeds/luci/collections/luci/Makefile

# 添加软件包
#openwet常用软件包
# git clone https://github.com/kenzok8/openwrt-packages.git package/lean/diy
#passwall依赖
# git clone https://github.com/kenzok8/small.git package/lean/small
#ssrplus
# git clone https://github.com/fw876/helloworld.git package/lean/luci-app-ssr-plus
git clone https://github.com/Joelyi/helloworld.git package/lean/luci-app-ssr-plus

#-更新feeds
./scripts/feeds update -a
#-安装feeds
./scripts/feeds install -a
