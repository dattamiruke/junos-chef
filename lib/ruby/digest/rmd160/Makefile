#
# $Id: Makefile,v 1.1.1.1 2012/10/30 16:42:08 roselynl Exp $
#

.include "../../Makefile.inc"

LIB = rmd160
SHLIB_NAME = ${LIB}.so

.PATH: ${RUBY_EXT_DIR}/digest/rmd160
SRCS = rmd160.c rmd160init.c rmd160ossl.c

CFLAGS += -I${RUBY_EXT_DIR}/digest
CFLAGS += -DNDEBUG -DHAVE_CONFIG_H -DHAVE_OPENSSL_RIPEMD_H -DHAVE_SYS_CDEFS_H -DHAVE_INTTYPES_H -DHAVE_UNISTD_H

DPLIBS += ${LIBCRYPTO}

.include <bsd.lib.mk>

