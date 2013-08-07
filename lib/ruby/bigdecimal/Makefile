#
# $Id$
#

.include "../Makefile.inc"

LIB = bigdecimal
SHLIB_NAME = ${LIB}.so

.PATH: ${RUBY_EXT_DIR}/${LIB}
SRCS = ${LIB}.c

CFLAGS += \
	-DHAVE_LABS \
	-DHAVE_LLABS

DPLIBS += ${LIBM}

.include <bsd.lib.mk>
