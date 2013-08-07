#
# $Id$
#

.include "../../Makefile.inc"

LIB = rmd160
SHLIB_NAME = ${LIB}.so

.PATH: ${RUBY_EXT_DIR}/digest/rmd160
SRCS = \
	rmd160.c \
	rmd160init.c \
	rmd160ossl.c

CFLAGS += \
	-I${RUBY_EXT_DIR}/digest \
	-DNDEBUG \
	-DHAVE_CONFIG_H \
	-DHAVE_OPENSSL_RIPEMD_H \
	-DHAVE_SYS_CDEFS_H

DPLIBS += ${LIBCRYPTO}

.include <bsd.lib.mk>
