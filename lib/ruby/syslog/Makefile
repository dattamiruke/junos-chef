#
# $Id$
#

.include "../Makefile.inc"

LIB = syslog
SHLIB_NAME = ${LIB}.so

.PATH: ${RUBY_EXT_DIR}/${LIB}
SRCS = ${LIB}.c

CFLAGS += \
	-DHAVE_SYSLOG_H \
	-DHAVE_OPENLOG \
	-DHAVE_SETLOGMASK

.include <bsd.lib.mk>
