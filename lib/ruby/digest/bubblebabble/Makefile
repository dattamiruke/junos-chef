#
# $Id: Makefile,v 1.1.1.1 2012/10/30 16:42:08 roselynl Exp $
#

.include "../../Makefile.inc"

LIB = bubblebabble
SHLIB_NAME = ${LIB}.so

.PATH: ${RUBY_EXT_DIR}/digest/bubblebabble
CFLAGS += -DHAVE_CONFIG_H
SRCS = bubblebabble.c

CFLAGS += -I${RUBY_EXT_DIR}/digest

.include <bsd.lib.mk>

