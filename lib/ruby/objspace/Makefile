#
# $Id: Makefile,v 1.1.1.1 2012/10/30 16:42:08 roselynl Exp $
#

.include "../Makefile.inc"

LIB = objspace
SHLIB_NAME = ${LIB}.so

.PATH: ${RUBY_EXT_DIR}/objspace
SRCS = objspace.c
CFLAGS +=  -include ${RUBY_EXT_DIR}/objspace/extconf.h

.include <bsd.lib.mk>

