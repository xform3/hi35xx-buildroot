################################################################################
#
# vtun
#
################################################################################

VTUN_VERSION = 3.0.3
VTUN_SITE = http://downloads.sourceforge.net/project/vtun/vtun/$(VTUN_VERSION)
VTUN_LICENSE = GPL-2.0+ with OpenSSL exception
VTUN_LICENSE_FILES = README.OpenSSL
VTUN_DEPENDENCIES = host-bison host-flex
VTUN_AUTORECONF = YES

VTUN_CONF_OPTS = \
	--disable-lzo \
	--disable-zlib \
	--disable-ssl

# Assumes old-style gcc inline symbol visibility rules
VTUN_CONF_ENV = CFLAGS="$(TARGET_CFLAGS) -std=gnu89"

$(eval $(autotools-package))
