#
# $Id: Makefile,v 1.1.1.1 2012/10/30 16:42:08 roselynl Exp $
#

.include "../../Makefile.inc"

LIB = sha2
SHLIB_NAME = ${LIB}.so

.PATH: ${RUBY_EXT_DIR}/digest/sha2
SRCS = sha2.c sha2init.c sha2ossl.c

CFLAGS += -I${RUBY_EXT_DIR}/digest

#  HAVE_TYPE_U_INT8_T not from ruby-1.8.7 configured
CFLAGS += -DHAVE_CONFIG_H -DHAVE_SYS_CDEFS_H -DHAVE_INTTYPES_H -DHAVE_UNISTD_H -DHAVE_TYPE_UINT64_T -DHAVE_TYPE_U_INT8_T

DPLIBS += ${LIBCRYPTO}

.include <bsd.lib.mk>

