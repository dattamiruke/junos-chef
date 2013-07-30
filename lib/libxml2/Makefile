#
# $Id$
#
# Copyright (c) 2009, Juniper Networks, Inc.
# All rights reserved.
#

LIB = xml2

SHLIB_MAJOR = 2
SHLIB_MINOR = 9.0

LIBXML2_DIR = ${SRCTOP}/dist/libxml2-2.9.0

.PATH: ${LIBXML2_DIR}
SRCS = \
	HTMLparser.c HTMLtree.c SAX.c SAX2.c \
	buf.c c14n.c catalog.c chvalid.c debugXML.c dict.c encoding.c \
	entities.c error.c globals.c hash.c legacy.c list.c nanoftp.c \
	nanohttp.c parser.c parserInternals.c pattern.c relaxng.c \
	schematron.c threads.c tree.c uri.c valid.c xinclude.c xlink.c \
	xmlIO.c xmlmemory.c xmlmodule.c xmlreader.c xmlregexp.c xmlsave.c \
	xmlschemas.c xmlschemastypes.c xmlstring.c xmlunicode.c xmlwriter.c \
	xpath.c xpointer.c xzlib.c

CFLAGS += \
	-DHAVE_CONFIG_H -D_REENTRANT \
	-I${.CURDIR} -I${LIBXML2_DIR}

SRC_LIBS += ${LIBZ} ${LIBM} ${LIBICONV}

.include <bsd.lib.mk>

