#
# $Id$
#

.include "../../Makefile.inc"

LIB = bubblebabble
SHLIB_NAME = ${LIB}.so

.PATH: ${RUBY_EXT_DIR}/digest/bubblebabble
SRCS = bubblebabble.c

CFLAGS += -I${RUBY_EXT_DIR}/digest

.include <bsd.lib.mk>
