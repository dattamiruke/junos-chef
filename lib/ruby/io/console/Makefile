#
# $Id: Makefile,v 1.1.1.1 2012/10/30 16:42:08 roselynl Exp $
#

.include "../../Makefile.inc"

LIB = console
SHLIB_NAME = ${LIB}.so

.PATH: ${RUBY_EXT_DIR}/io/console
CFLAGS +=  -DFIONREAD_HEADER="<sys/ioctl.h>" \
	   -include ${RUBY_EXT_DIR}/io/console/extconf.h

SRCS = console.c

.include <bsd.lib.mk>

