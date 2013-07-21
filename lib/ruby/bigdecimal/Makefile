#
# $Id$
#

.include "../Makefile.inc"

LIB = bigdecimal
SHLIB_NAME = ${LIB}.so

.PATH: ${RUBY_EXT_DIR}/bigdecimal
SRCS = bigdecimal.c
CFLAGS +=  -include ${RUBY_EXT_DIR}/bigdecimal/extconf.h \
	   -include ${RUBY_EXT_DIR}/bigdecimal/bigdecimal.h
DPLIBS += ${LIBM}

.include <bsd.lib.mk>

