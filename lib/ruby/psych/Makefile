#
# $Id$
#

.include "../Makefile.inc"

LIB = psych
SHLIB_NAME = ${LIB}.so

.PATH: ${RUBY_EXT_DIR}/${LIB}
SRCS = \
	emitter.c \
	parser.c \
	psych.c \
	to_ruby.c \
	yaml_tree.c

CFLAGS +=  \
  -I${RUBY_EXT_DIR}/psych

DPLIBS += ${LIBYAML}

.include <bsd.lib.mk>
