#
# $Id$
#

.include "../Makefile.inc"

LIB = iconv
SHLIB_NAME = ${LIB}.so

.PATH: ${RUBY_EXT_DIR}/${LIB}
SRCS = ${LIB}.c

CFLAGS += \
	-DSIGNEDNESS_OF_SIZE_T="+1" \
	-DHAVE_ICONVLIST

DPLIBS += ${LIBICONV}

.include <bsd.lib.mk>
