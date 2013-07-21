#
# $Id: Makefile,v 1.1.1.1 2012/10/30 16:42:08 roselynl Exp $
#

.include "../Makefile.inc"

LIB = psych
SHLIB_NAME = ${LIB}.so

.PATH: ${RUBY_EXT_DIR}/psych

SRCS = emitter.c \
       parser.c \
       psych.c \
       to_ruby.c \
       yaml_tree.c

CFLAGS +=   -I${RUBY_EXT_DIR}/psych

DPLIBS += ${LIBM} \
          ${LIBYAML}

.include <bsd.lib.mk>

