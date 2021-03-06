#!/usr/bin/env bash
# # # # # # # # # # #
#   自定义脚本
#     花妆男
# # # # # # # # # # #

######################################################################
#以下选项是定义你需要的功能（y=集成,n=忽略），重新写入到 .config 文件
######################################################################
# $WORK_DIR/trunk 执行在这个目录下
set -u

# 是否超频
echo "CONFIG_FIRMWARE_CPU_900MHZ=n" >>.config
echo "CONFIG_FIRMWARE_INCLUDE_HTOP=n" >>.config

# 科学
echo "CONFIG_FIRMWARE_INCLUDE_SHADOWSOCKS=y" >>.config # SS plus+
echo "CONFIG_FIRMWARE_INCLUDE_SSSERVER=n" >>.config    # SS server
echo "CONFIG_FIRMWARE_INCLUDE_SSOBFS=y" >>.config      # simple-obfs混淆插件,SS 开了才可以打开
echo "CONFIG_FIRMWARE_INCLUDE_V2RAY=n" >>.config  # 集成v2ray执行文件（3.8M左右)，如果不集成，会从网上下载下来执行，不影响正常使用
echo "CONFIG_FIRMWARE_INCLUDE_TROJAN=n" >>.config # 集成trojan执行文件(1.1M左右)，如果不集成，会从网上下载下来执行，不影响正常使用

# 文件
echo "CONFIG_FIRMWARE_INCLUDE_CADDY=y" >>.config    # 在线文件管理服务
echo "CONFIG_FIRMWARE_INCLUDE_CADDYBIN=n" >>.config # 集成 caddu执行文件，此文件有13M,请注意固件大小。如果不集成，会从网上下载下来执行，不影响正常使用

# 广告
echo "CONFIG_FIRMWARE_INCLUDE_ADBYBY=n" >>.config      # adbyby plus+
echo "CONFIG_FIRMWARE_INCLUDE_KOOLPROXY=y" >>.config   # KP 广告过滤
echo "CONFIG_FIRMWARE_INCLUDE_ADGUARDHOME=n" >>.config # ADGUARD 广告拦截

# 代理
echo "CONFIG_FIRMWARE_INCLUDE_KUMASOCKS=n" >>.config # KUMA

# 穿透
echo "CONFIG_FIRMWARE_INCLUDE_FRPC=y" >>.config    # 内网穿透FRPC
echo "CONFIG_FIRMWARE_INCLUDE_FRPS=y" >>.config    # 内网穿透FRPS
echo "CONFIG_FIRMWARE_INCLUDE_ALIDDNS=y" >>.config # 阿里DDNS
echo "CONFIG_FIRMWARE_INCLUDE_ZEROTIER=y" >>.config   # zerotier ~1.3M

echo "CONFIG_FIRMWARE_INCLUDE_VLMCSD=y" >>.config
echo "CONFIG_FIRMWARE_INCLUDE_CURL=y" >>.config

echo "CONFIG_FIRMWARE_INCLUDE_MENTOHUST=y" >>.config  # MENTOHUST 锐捷认证
echo "CONFIG_FIRMWARE_INCLUDE_SCUTCLIENT=y" >>.config # SCUT校园网客户端