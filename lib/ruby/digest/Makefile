#
# $Id$
#

.include "../Makefile.inc"

LIB = digest
SHLIB_NAME = ${LIB}.so

.PATH: ${RUBY_EXT_DIR}/digest
SRCS = digest.c

SUBDIR = \
	bubblebabble \
	md5 \
	rmd160 \
	sha1 \
	sha2

.include <bsd.lib.mk>
.include <bsd.subdir.mk>
