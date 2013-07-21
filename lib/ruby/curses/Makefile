#
# $Id: Makefile,v 1.1.1.1 2012/10/30 16:42:08 roselynl Exp $
#

.include "../Makefile.inc"

LIB = curses
SHLIB_NAME = ${LIB}.so

.PATH: ${RUBY_EXT_DIR}/curses

SRCS = \
       curses.c

CFLAGS +=   -I${RUBY_EXT_DIR}/curses

DPLIBS += ${LIBM} \
          ${LIBYAML}

.include <bsd.lib.mk>

