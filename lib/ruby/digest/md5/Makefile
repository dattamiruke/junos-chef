#
# $Id$
#

.include "../../Makefile.inc"

LIB = md5
SHLIB_NAME = ${LIB}.so

.PATH: ${RUBY_EXT_DIR}/digest/md5
SRCS = md5.c md5init.c md5ossl.c

CFLAGS += \
	-I${RUBY_EXT_DIR}/digest \
	-DHAVE_CONFIG_H \
	-DHAVE_OPENSSL_MD5_H \
	-DHAVE_SYS_CDEFS_H

DPLIBS += ${LIBCRYPTO}

.include <bsd.lib.mk>
