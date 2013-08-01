#
# $Id$
#

.include "../Makefile.inc"

LIB = readline
SHLIB_NAME = ${LIB}.so

.PATH: ${RUBY_EXT_DIR}/readline

SRCS = readline.c

DPLIBS += ${LIBNCURSES} ${LIBEDIT}

.include <bsd.lib.mk>
