#
# $Id$
#

.include "../../Makefile.inc"

LIB = md5
SHLIB_NAME = ${LIB}.so

.PATH: ${RUBY_EXT_DIR}/digest/md5
SRCS = md5.c md5init.c md5ossl.c

CFLAGS += -I${RUBY_EXT_DIR}/digest

DPLIBS += ${LIBCRYPTO}

.include <bsd.lib.mk>
