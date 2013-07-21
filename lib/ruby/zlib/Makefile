#
# $Id: Makefile,v 1.1.1.1 2012/10/30 16:42:08 roselynl Exp $
#

.include "../Makefile.inc"

LIB = zlib
SHLIB_NAME = ${LIB}.so

.PATH: ${RUBY_EXT_DIR}/zlib
CFLAGS += -DHAVE_ZLIB_H  -DOS_CODE=OS_UNIX
SRCS = zlib.c

DPLIBS += ${LIBZ}

.include <bsd.lib.mk>

