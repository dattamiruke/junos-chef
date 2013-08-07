#
# $Id$
#

.include "../../Makefile.inc"

LIB = wait
SHLIB_NAME = ${LIB}.so

.PATH: ${RUBY_EXT_DIR}/io/${LIB}
SRCS = ${LIB}.c

CFLAGS += \
-DHAVE_SYS_IOCTL_H \
-DFIONREAD_HEADER="<sys/ioctl.h>"

.include <bsd.lib.mk>
