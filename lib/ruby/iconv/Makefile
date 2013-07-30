#
# $Id$
#

.include "../Makefile.inc"

LIB = iconv
SHLIB_NAME = ${LIB}.so

.PATH: ${RUBY_EXT_DIR}/iconv
SRCS = iconv.c

DPLIBS += ${LIBICONV}

.include <bsd.lib.mk>

