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

.include "../Makefile.inc"

.PATH: ${RUBY_DIR}/enc

.ifndef SHLIB_NAME

SRCS= \
	big5.c \
	cp949.c \
	emacs_mule.c \
	encdb.c \
	euc_jp.c \
	euc_kr.c \
	euc_tw.c \
	gb2312.c \
	gb18030.c \
	gbk.c \
	iso_8859_1.c \
	iso_8859_2.c \
	iso_8859_3.c \
	iso_8859_4.c \
	iso_8859_5.c \
	iso_8859_6.c \
	iso_8859_7.c \
	iso_8859_8.c \
	iso_8859_9.c \
	iso_8859_10.c \
	iso_8859_11.c \
	iso_8859_13.c \
	iso_8859_14.c \
	iso_8859_15.c \
	iso_8859_16.c \
	koi8_r.c \
	koi8_u.c \
	shift_jis.c \
	utf_16be.c \
	utf_16le.c \
	utf_32be.c \
	utf_32le.c \
	utf_8.c \
	windows_1251.c

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

SUBDIR = \
	trans

.include <bsd.subdir.mk>
