#
# $Id: Makefile,v 1.1.1.1 2012/10/30 16:42:08 roselynl Exp $
#

.include "../Makefile.inc"

LIB = socket
SHLIB_NAME = ${LIB}.so

.PATH: ${RUBY_EXT_DIR}/socket
SRCS = \
	ancdata.c basicsocket.c constants.c init.c ipsocket.c \
	option.c raddrinfo.c socket.c sockssocket.c tcpserver.c \
	tcpsocket.c udpsocket.c unixserver.c unixsocket.c

.include <bsd.lib.mk>
