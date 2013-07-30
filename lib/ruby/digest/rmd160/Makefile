#
# $Id$
#

.include "../../Makefile.inc"

LIB = rmd160
SHLIB_NAME = ${LIB}.so

.PATH: ${RUBY_EXT_DIR}/digest/rmd160
SRCS = rmd160init.c rmd160ossl.c

CFLAGS += -I${RUBY_EXT_DIR}/digest

DPLIBS += ${LIBCRYPTO}

.include <bsd.lib.mk>

