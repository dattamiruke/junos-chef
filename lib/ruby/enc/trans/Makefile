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

.include "../../Makefile.inc"

.PATH: ${RUBY_DIR}/enc/trans

.ifndef SHLIB_NAME

SRCS= \
	transdb.c \
	big5.c \
	chinese.c \
	emoji.c \
	emoji_iso2022_kddi.c \
	emoji_sjis_docomo.c \
	emoji_sjis_kddi.c \
	emoji_sjis_softbank.c \
	escape.c \
	gb18030.c \
	gbk.c \
	iso2022.c \
	japanese.c \
	japanese_euc.c \
	japanese_sjis.c \
	korean.c \
	single_byte.c \
	utf8_mac.c \
	utf_16_32.c

SO_FILES=${SRCS:.c=.so}

all: ${SRCS:.c=.so}

clean: ${SRCS:.c=.clean}

.for so in ${SO_FILES}
${so}: $${.TARGET:R}.c
	cd ${.CURDIR}; ${MAKE} LIB=${.TARGET:R} SHLIB_NAME=${.TARGET} SRCS=${.TARGET:R}.c

${so:R}.clean:
	cd ${.CURDIR}; ${MAKE} LIB=${.TARGET:R} SHLIB_NAME=${.TARGET} SRCS=${.TARGET:R}.c clean

.endfor

.else

CFLAGS += -DONIG_ENC_REGISTER=rb_enc_register

.include <bsd.lib.mk>

.endif
