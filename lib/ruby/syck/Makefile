#
# $Id$
#

.include "../Makefile.inc"

LIB = syck
SHLIB_NAME = ${LIB}.so

.PATH: ${RUBY_EXT_DIR}/${LIB}
SRCS = \
	bytecode.c \
	emitter.c \
	gram.c \
	handler.c \
	implicit.c \
	node.c \
	rubyext.c \
	syck.c \
	token.c \
	yaml2byte.c

CFLAGS += \
	-I${RUBY_EXT_DIR}/${LIB} \
	-DHAVE_ST_H

.include <bsd.lib.mk>
