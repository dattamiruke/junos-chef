#
# $Id: Makefile,v 1.1.1.1 2012/10/30 16:42:08 roselynl Exp $
#

.include "../Makefile.inc"

LIB = coverage
SHLIB_NAME = ${LIB}.so

.PATH: ${RUBY_EXT_DIR}/coverage
SRCS = coverage.c
CFLAGS +=  -include ${RUBY_EXT_DIR}/coverage/extconf.h

.include <bsd.lib.mk>

