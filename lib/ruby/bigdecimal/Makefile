#
# $Id$
#

.include "../Makefile.inc"

LIB = bigdecimal
SHLIB_NAME = ${LIB}.so

.PATH: ${RUBY_EXT_DIR}/bigdecimal
SRCS = bigdecimal.c

DPLIBS += ${LIBM}

.include <bsd.lib.mk>

