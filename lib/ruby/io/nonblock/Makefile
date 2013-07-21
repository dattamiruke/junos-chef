#
# $Id: Makefile,v 1.1.1.1 2012/10/30 16:42:08 roselynl Exp $
#

.include "../../Makefile.inc"

LIB = nonblock
SHLIB_NAME = ${LIB}.so

.PATH: ${RUBY_EXT_DIR}/io/nonblock
CFLAGS +=  -DFIONREAD_HEADER="<sys/ioctl.h>"

SRCS = nonblock.c

.include <bsd.lib.mk>

