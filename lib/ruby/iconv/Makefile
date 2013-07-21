#
# $Id: Makefile,v 1.1.1.1 2012/10/30 16:42:08 roselynl Exp $
#

.include "../Makefile.inc"

LIB = iconv
SHLIB_NAME = ${LIB}.so

.PATH: ${RUBY_EXT_DIR}/iconv

SRCS = iconv.c

DPLIBS += ${LIBICONV}

.include <bsd.lib.mk>

