# 用前须知
1.插件本身的BUG请自行移步上游仓库反馈，关于设置的问题可到[讨论区](https://github.com/nantayo/N1-OpenWrt/discussions)提问，作者看到后会尽量帮忙解答。<br>
2.本项目旨在满足作者对OpenWrt的要求，如需定制自己的固件，请fork后修改文件。
***
# 项目简介
固件适配斐讯N1，以旁路由为设计基准，添加防火墙规则并关闭DHCP服务。追求简单、轻量，仅包含：默认皮肤、IPv6、下列luci-app：<br>
[luci-app-amlogic](https://github.com/ophub/luci-app-amlogic)：系统更新、文件传输、CPU调频等<br>
luci-app-dockerman：docker<br>
[luci-app-mosdns](https://github.com/sbwml/luci-app-mosdns)：DNS处理器。可分流、去广告、缓存DNS等<br>
[luci-app-passwall](https://github.com/nantayo/passwall)：科学上网<br>
luci-app-samba4：存储共享<br>
其中，mosdns、dnsmasq、passwall的配置已调整好并编译进固件中，开箱可用。
***
# 致谢
本项目基于天灵的[OpenWrt-21.02](https://github.com/immortalwrt/immortalwrt/tree/openwrt-21.02)源码编译，使用flippy的[脚本](https://github.com/unifreq/openwrt_packit)和breakings维护的[内核](https://github.com/breakings/OpenWrt/releases/tag/kernel_stable)打包完整固件，感谢开发者们的无私分享。<br>
flippy固件的更多细节参考[恩山论坛帖子](https://www.right.com.cn/forum/thread-4076037-1-1.html)
