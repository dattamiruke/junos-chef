#
# $Id: Makefile,v 1.1.1.1 2012/10/30 16:42:08 roselynl Exp $
#

.include "../Makefile.inc"

LIB = syck
SHLIB_NAME = ${LIB}.so

.PATH: ${RUBY_EXT_DIR}/syck
CFLAGS += -DHAVE_ST_H
SRCS = \
	bytecode.c emitter.c gram.c handler.c implicit.c \
	node.c rubyext.c syck.c token.c yaml2byte.c

CFLAGS += -I${RUBY_EXT_DIR}/syck

.include <bsd.lib.mk>

