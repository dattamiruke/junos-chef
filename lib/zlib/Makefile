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
