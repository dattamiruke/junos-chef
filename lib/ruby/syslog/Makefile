#
# $Id: Makefile,v 1.1.1.1 2012/10/30 16:42:08 roselynl Exp $
#

.include "../Makefile.inc"

LIB = syslog
SHLIB_NAME = ${LIB}.so

.PATH: ${RUBY_EXT_DIR}/syslog
CFLAGS += -DHAVE_SYSLOG_H -DHAVE_OPENLOG -DHAVE_SETLOGMASK
SRCS = syslog.c

.include <bsd.lib.mk>

