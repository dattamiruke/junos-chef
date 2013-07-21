#
# $Id: Makefile,v 1.1.1.1 2012/10/30 16:42:08 roselynl Exp $
#

.include "../../Makefile.inc"

LIB = wait
SHLIB_NAME = ${LIB}.so

.PATH: ${RUBY_EXT_DIR}/io/wait
CFLAGS +=  -DFIONREAD_HEADER="<sys/ioctl.h>"

SRCS = wait.c

.include <bsd.lib.mk>

