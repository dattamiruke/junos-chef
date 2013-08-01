#
# $Id$
#

.include "../../Makefile.inc"

LIB = sha1
SHLIB_NAME = ${LIB}.so

.PATH: ${RUBY_EXT_DIR}/digest/sha1
SRCS = sha1.c sha1init.c sha1ossl.c

CFLAGS += -I${RUBY_EXT_DIR}/digest

DPLIBS += ${LIBCRYPTO}

.include <bsd.lib.mk>
