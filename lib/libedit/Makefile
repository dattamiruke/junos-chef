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
