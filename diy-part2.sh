#!/bin/bash
# 1. (可选) 修改固件默认 IP 为 192.168.10.1 (避免与光猫 192.168.1.1 冲突)
# sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate

# 2. 检查 feeds 中的 xray-core 版本
echo "Checking Xray-core Makefile version..."
grep -E "PKG_VERSION:=" feeds/passwall_packages/xray-core/Makefile || true
