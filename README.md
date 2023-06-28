# 2023年6月告知
作者已于本月正式硕士毕业，脱离了垃圾校园网环境，并替换掉了服役多年的N1。未来本项目仍会定期更新，以及切换到最新的OpenWrt大版本，但不会再积极增删功能或调试配置，望各位周知。
***
# 项目简介
固件适配斐讯N1旁路由模式，追求简单、轻量，仅包含：默认皮肤、IPv6支持，以及下列luci-app：<br>
[luci-app-amlogic](https://github.com/ophub/luci-app-amlogic)：系统更新、文件传输、CPU调频等<br>
luci-app-dockerman：docker<br>
[luci-app-mosdns](https://github.com/sbwml/luci-app-mosdns)：DNS处理器。可分流、去广告、缓存DNS等<br>
[luci-app-passwall](https://github.com/nantayo/passwall)：科学上网<br>
luci-app-samba4：存储共享<br>
其中mosdns、dnsmasq、passwall已将调试好的配置编译进固件中，开机即可用。
***
# 致谢
本项目基于天灵的[OpenWrt-21.02](https://github.com/immortalwrt/immortalwrt/tree/openwrt-21.02)源码编译，使用flippy的[脚本](https://github.com/unifreq/openwrt_packit)和breakings维护的[内核](https://github.com/breakings/OpenWrt/releases/tag/kernel_stable)打包完整固件，感谢开发者们的无私分享。<br>
flippy固件的更多细节参考[恩山论坛帖子](https://www.right.com.cn/forum/thread-4076037-1-1.html)
