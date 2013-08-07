#
# $Id$
#

.include "../../Makefile.inc"

LIB = parser
SHLIB_NAME = ${LIB}.so

.PATH: ${RUBY_EXT_DIR}/json/${LIB}
SRCS = ${LIB}.c

CFLAGS += \
	-DHAVE_RUBY_RE_H \
	-DHAVE_RUBY_ENCODING_H

.include <bsd.lib.mk>

