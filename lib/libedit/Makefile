#
# $Id$
#
# Copyright (c) 2009, Juniper Networks, Inc.
# All rights reserved.
#

LIB = edit

SHLIB_MAJOR = 3
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

DPLIBS += ${LIBNCURSES}

SHLIB_LDFLAGS.${MACHINE} += \
  -rdynamic -Wl,-rpath=${JUNOS_SDK_INSTALLDIR}/lib

.include <bsd.lib.mk>
