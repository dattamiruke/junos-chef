#
# $Id$
#

.include "../Makefile.inc"

LIB = date_core
SHLIB_NAME = ${LIB}.so

.PATH: ${RUBY_EXT_DIR}/date

SRCS = date_parse.c \
       date_strftime.c \
       date_strptime.c \
       date_core.c

CFLAGS +=  -include ${RUBY_EXT_DIR}/date/extconf.h
DPLIBS += ${LIBM}

.include <bsd.lib.mk>
