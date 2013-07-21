#
# $Id: Makefile,v 1.3 2012/11/12 23:50:33 roselynl Exp $
#
# Copyright (c) 2009, Juniper Networks, Inc.
# All rights reserved.
#

LIB = iconv

SHLIB_MAJOR = 1
SHLIB_MINOR = 0

LIBICONV_DIR = ${SRCTOP}/dist/libiconv-1.14

.PATH: ${LIBICONV_DIR}/lib
SRCS = iconv.c relocatable.c

.PATH: ${LIBICONV_DIR}/libcharset/lib
SRCS += localcharset.c

.if ${MACHINE} == "powerpc" || ${MACHINE} == "xlr" || ${MACHINE} == "octeon"
CFLAGS += -DWORDS_BIGENDIAN=1
.endif

CFLAGS += \
	-I${LIBICONV_DIR}/lib \
	-DHAVE_CONFIG_H \
	-DLIBDIR=\"${JUNOS_SDK_INSTALLDIR}/lib\" -DBUILDING_DLL \
	-DENABLE_RELOCATABLE=1 -DIN_LIBRARY -DNO_XMALLOC \
	-Dset_relocation_prefix=libiconv_set_relocation_prefix \
	-Drelocate=libiconv_relocate -fPIC -DPIC

.include <bsd.lib.mk>

