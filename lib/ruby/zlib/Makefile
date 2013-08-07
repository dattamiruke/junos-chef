#
# $Id$
#

.include "../Makefile.inc"

LIB = zlib
SHLIB_NAME = ${LIB}.so

.PATH: ${RUBY_EXT_DIR}/${LIB}
SRCS = ${LIB}.c

CFLAGS += \
	-DHAVE_ZLIB_H \
	-DHAVE_CRC32_COMBINE \
	-DHAVE_ADLER32_COMBINE

DPLIBS += ${LIBZ}

.include <bsd.lib.mk>
