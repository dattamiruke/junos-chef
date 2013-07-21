#
# $Id: Makefile,v 1.1.1.1 2012/10/30 16:42:08 roselynl Exp $
#

.include "../Makefile.inc"

LIB = fiber
SHLIB_NAME = ${LIB}.so

.PATH: ${RUBY_EXT_DIR}/fiber
SRCS = fiber.c
CFLAGS +=  -include ${RUBY_EXT_DIR}/fiber/extconf.h

.include <bsd.lib.mk>

