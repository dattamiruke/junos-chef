#
# $Id$
#

.include "../../Makefile.inc"

LIB = sha2
SHLIB_NAME = ${LIB}.so

.PATH: ${RUBY_EXT_DIR}/digest/sha2
SRCS = sha2.c sha2init.c

CFLAGS += -I${RUBY_EXT_DIR}/digest

DPLIBS += ${LIBCRYPTO}

.include <bsd.lib.mk>

