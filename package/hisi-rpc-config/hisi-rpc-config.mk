################################################################################
#
# hisi-rpc-config
#
################################################################################

HISI_RPC_CONFIG_VERSION = v0.1
# HISI_RPC_CONFIG_SITE = $(call github,OpenIPC,hisi-rpc-config,$(CJSON_VERSION))
# HISI_RPC_CONFIG_SITE = https://github.com/OpenIPC/hisi-rpc-config/archive/v0.1.tar.gz
HISI_RPC_CONFIG_SITE = https://github.com/OpenIPC/hisi-rpc-config
# HISI_RPC_CONFIG_SITE
HISI_RPC_CONFIG_SITE_METHOD = git
HISI_RPC_CONFIG_INSTALL_STAGING = YES
HISI_RPC_CONFIG_LICENSE = MIT
HISI_RPC_CONFIG_LICENSE_FILES = LICENSE
HISI_RPC_CONFIG_DEPENDENCIES = libmicrohttpd
HISI_RPC_CONFIG_INSTALL_TARGET = YES
# Set ENABLE_CUSTOM_COMPILER_FLAGS to OFF in particular to disable
# -fstack-protector-strong which depends on BR2_TOOLCHAIN_HAS_SSP
HISI_RPC_CONFIG_CONF_OPTS += \
	-DCMAKE_BUILD_TYPE=Release
	# -DCMAKE_SYSTEM_PROCESSOR=arm
 	# -DCMAKE_C_COMPILER=arm-buildroot-linux-uclibcgnueabi-gcc \
	# -DCMAKE_CXX_COMPILER=arm-buildroot-linux-uclibcgnueabi-g++

$(eval $(cmake-package))