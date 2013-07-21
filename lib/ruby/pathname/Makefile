#
# $Id: Makefile,v 1.1.1.1 2012/10/30 16:42:08 roselynl Exp $
#

.include "../Makefile.inc"

LIB = pathname
SHLIB_NAME = ${LIB}.so

.PATH: ${RUBY_EXT_DIR}/pathname


SRCS = pathname.c
CFLAGS +=  -include ${RUBY_EXT_DIR}/etc/extconf.h

.include <bsd.lib.mk>

