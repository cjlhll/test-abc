#!/bin/bash

# Default IP
sed -i 's/192.168.1.1/192.168.5.2/g' package/base-files/files/bin/config_generate

#设置默认密码
sed -i 's/root::0:0:99999:7:::/root:$1$KVHNuqbv$4X2BPbtsXn2AApknHIn38.:0:0:99999:7:::/g' package/base-files/files/etc/shadow

# Firewall
#echo "iptables -t nat -I POSTROUTING -o eth0 -j MASQUERADE" >> package/network/config/firewall/files/firewall.user

# Remove packages
rm -rf feeds/luci/applications/luci-app-passwall
rm -rf feeds/packages/net/haproxy
rm -rf feeds/packages/net/mosdns
rm -rf feeds/packages/net/v2ray-geodata

# Add packages
#svn co https://github.com/nantayo/passwall/trunk package/passwall
#svn co https://github.com/ophub/luci-app-amlogic/trunk package/amlogic
#svn co https://github.com/sbwml/luci-app-mosdns/trunk package/mosdns

# => 阿里ddns
git clone https://github.com/chenhw2/luci-app-aliddns.git package/luci-app-aliddns
# => 阿里云web dav
git clone https://github.com/messense/aliyundrive-webdav.git package/luci-app-aliyundrive-webdav
# => dockerman
#git clone https://github.com/lisaac/luci-app-dockerman.git package/luci-app-dockerman
# => openclash
git clone https://github.com/vernesong/OpenClash.git package/luci-app-openclash

# => 更换默认argon主题
rm -rf feeds/luci/themes/luci-theme-argon

#argon主题
git clone https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon

sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' ./feeds/luci/collections/luci/Makefile
