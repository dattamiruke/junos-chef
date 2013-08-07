#
# $Id$
#

.include "../../Makefile.inc"

LIB = console
SHLIB_NAME = ${LIB}.so

.PATH: ${RUBY_EXT_DIR}/io/${LIB}
SRCS = ${LIB}.c

CFLAGS += \
	-DHAVE_TERMIOS_H \
	-DHAVE_CFMAKERAW \
	-DHAVE_SYS_IOCTL_H \
	-DHAVE_RB_IO_GET_WRITE_IO

.include <bsd.lib.mk>
