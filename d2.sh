#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# 1.修改默认ip
sed -i 's/192.168.1.1/192.168.11.1/g' package/base-files/files/bin/config_generate

# 2.修改主机名
sed -i 's/OpenWrt/Phicomm-K2P/g' package/base-files/files/bin/config_generate

# 3.修改登录密码
sed -i 's/$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF./$1$FwDEzdFK$Wphi65kvz9GxtDviRqy1A0/g' ./package/lean/default-settings/files/zzz-default-settings

# 4.修改版本号
sed -i "s/OpenWrt /GK.2 build $(TZ=UTC-8 date "+%Y.%m.%d") @ 果壳壳 /g" package/lean/default-settings/files/zzz-default-settings
