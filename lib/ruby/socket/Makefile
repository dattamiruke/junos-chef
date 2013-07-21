#
# $Id: Makefile,v 1.1.1.1 2012/10/30 16:42:08 roselynl Exp $
#

.include "../Makefile.inc"

LIB = socket
SHLIB_NAME = ${LIB}.so

.PATH: ${RUBY_EXT_DIR}/socket


SRCS = \
       socket.c \
       getaddrinfo.c \
       getnameinfo.c \
       tcpserver.c \
       tcpsocket.c \
       udpsocket.c \
       unixserver.c \
       unixsocket.c \
       init.c \
       sockssocket.c \
       ipsocket.c \
       raddrinfo.c \
       constants.c \
       basicsocket.c \
       option.c \
       ancdata.c


CFLAGS += -DIFNAMSIZ=16 -DRUBY_EXTCONF_H=\"extconf.h\" \
    -include ${RUBY_EXT_DIR}/socket/rubysocket.h \
    -include ${RUBY_DIR}/include/ruby/ruby.h \
    -include ${RUBY_DIR}/include/ruby/defines.h \
    -include ${RUBY_DIR}/include/ruby/io.h \
    -include ${RUBY_EXT_DIR}/socket/sockport.h \
    -include ${RUBY_EXT_DIR}/socket/constdefs.h \
    -include ${RUBY_DIR}/internal.h \
    -I${RUBY_DIR}/include


.include <bsd.lib.mk>

