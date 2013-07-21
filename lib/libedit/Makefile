#
# $Id: Makefile,v 1.2 2012/10/30 22:37:02 roselynl Exp $
#
# Copyright (c) 2009, Juniper Networks, Inc.
# All rights reserved.
#

LIB = edit

SHLIB_MAJOR = 2
SHLIB_MINOR = 0

EDIT_DIR = ${SRCTOP}/dist/libedit-20120601-3.0

.PATH: ${EDIT_DIR}/src


SRCS = \
	chared.c \
	chartype.c \
	common.c \
	el.c \
	eln.c \
	emacs.c \
	fgetln.c \
	filecomplete.c \
	hist.c \
	history.c \
	keymacro.c \
	map.c \
	prompt.c \
	read.c \
	readline.c \
	refresh.c \
	search.c \
	sig.c \
	strlcat.c \
	strlcpy.c \
	terminal.c \
	tokenizer.c \
	tty.c \
	unvis.c \
	vis.c \
	parse.c \
	wcsdup.c
	#vi.c \

CFLAGS += -DWIDECHAR 
CFLAGS += -D__STDC_ISO_10646__ -DHAVE_CONFIG_H -I${EDIT_DIR} \
	  -I${.CURDIR} -I${EDIT_DIR}/src
.include <bsd.lib.mk>

