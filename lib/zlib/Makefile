#
# $Id$
#
# Copyright (c) 2009, Juniper Networks, Inc.
# All rights reserved.
#

LIB = zlib

SHLIB_MAJOR = 1
SHLIB_MINOR = 2.8

ZLIB_DIR = ${SRCTOP}/dist/zlib-1.2.6

.PATH: ${ZLIB_DIR}

SRCS = \
	adler32.c \
	compress.c \
	crc32.c \
	deflate.c \
	gzclose.c \
	gzlib.c \
	gzread.c \
	gzwrite.c \
	infback.c \
	inffast.c \
	inflate.c \
	inftrees.c \
	trees.c \
	uncompr.c \
	zutil.c

CFLAGS += -DHAVE_CONFIG_H -I${ZLIB_DIR} -I${ZLIB_DIR} -I${.CURDIR}

.include <bsd.lib.mk>
