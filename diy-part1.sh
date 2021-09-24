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
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
git clone https://github.com/openwrt-dev/po2lmo.git
pushd po2lmo
make && sudo make install
popd

git clone https://github.com/kenzok8/openwrt-packages package/kenzok8
git clone https://github.com/kenzok8/small.git package/small
git clone https://github.com/BoringCat/minieap-openwrt.git package/minieap
git clone https://github.com/BoringCat/luci-app-minieap.git package/luci-app-minieap
git clone https://github.com/BoringCat/luci-app-mentohust.git package/luci-app-mentohust
git clone https://github.com/KyleRicardo/MentoHUST-OpenWrt-ipk.git package/mentohust

#echo 'src-git kenzok8 https://github.com/kenzok8/openwrt-packages' >>feeds.conf.default
#echo 'src-git small https://github.com/kenzok8/small' >>feeds.conf.default
#echo 'src-git minieap https://github.com/BoringCat/minieap-openwrt' >>feeds.conf.default
#echo 'src-git luci-app-minieap https://github.com/BoringCat/luci-app-minieap' >>feeds.conf.default
#echo 'src-git luci-app-mentohust https://github.com/BoringCat/luci-app-mentohust' >>feeds.conf.default
#echo 'src-git mentohust https://github.com/KyleRicardo/MentoHUST-OpenWrt-ipk' >>feeds.conf.default
