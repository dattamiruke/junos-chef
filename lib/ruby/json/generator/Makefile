#
# $Id: Makefile,v 1.1.1.1 2012/10/30 16:42:08 roselynl Exp $
#

.include "../../Makefile.inc"

LIB = generator
SHLIB_NAME = ${LIB}.so

.PATH: ${RUBY_EXT_DIR}/json/generator
SRCS = generator.c
CFLAGS +=  -include ${RUBY_EXT_DIR}/json/generator/extconf.h
DPLIBS += ${LIBM}

.include <bsd.lib.mk>

