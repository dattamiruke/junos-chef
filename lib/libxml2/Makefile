#
# Copyright:: Copyright (c) 2013 Opscode, Inc.
# License:: Apache License, Version 2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LIB = xml2

SHLIB_MAJOR = 2
SHLIB_MINOR = 7.8

LIBXML2_DIR = ${SRCTOP}/dist/libxml2-2.7.8

.PATH: ${LIBXML2_DIR}
SRCS = \
	DOCBparser.c HTMLparser.c HTMLtree.c SAX.c SAX2.c c14n.c catalog.c \
	chvalid.c debugXML.c dict.c encoding.c entities.c error.c globals.c \
	hash.c legacy.c list.c nanoftp.c nanohttp.c parser.c \
	parserInternals.c pattern.c relaxng.c schematron.c threads.c tree.c \
	trio.c trionan.c triostr.c uri.c valid.c xinclude.c xlink.c xmlIO.c \
	xmlmemory.c xmlmodule.c xmlreader.c xmlregexp.c xmlsave.c xmlschemas.c \
	xmlschemastypes.c xmlstring.c xmlunicode.c xmlwriter.c xpath.c \
	xpointer.c

CFLAGS += \
	-DHAVE_CONFIG_H -D_REENTRANT \
	-I${.CURDIR} -I${LIBXML2_DIR}

SRC_LIBS += ${LIBZ} ${LIBM} ${LIBICONV}

.include <bsd.lib.mk>
