#
# $Id$
#

.include "../../Makefile.inc"

LIB = sha2
SHLIB_NAME = ${LIB}.so

.PATH: ${RUBY_EXT_DIR}/digest/sha2
SRCS = sha2.c sha2init.c sha2ossl.c

CFLAGS += \
	-I${RUBY_EXT_DIR}/digest \
	-DHAVE_CONFIG_H \
	-DHAVE_TYPE_U_INT8_T \
	-DHAVE_SYS_CDEFS_H \
	-DHAVE_TYPE_UINT64_T

DPLIBS += ${LIBCRYPTO}

.include <bsd.lib.mk>
