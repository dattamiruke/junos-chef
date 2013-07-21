#
# $Id: Makefile,v 1.1.1.1 2012/10/30 16:42:08 roselynl Exp $
#

.include "../../Makefile.inc"

LIB = parser
SHLIB_NAME = ${LIB}.so

.PATH: ${RUBY_EXT_DIR}/json/parser
SRCS = parser.c
CFLAGS +=  -include ${RUBY_EXT_DIR}/json/parser/extconf.h

.include <bsd.lib.mk>

