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

LIB = xslt

SHLIB_MAJOR = 1
SHLIB_MINOR = 1.24

LIBXSLT_DIR = ${SRCTOP}/dist/libxslt-1.1.24

.PATH: ${LIBXSLT_DIR}/libxslt
SRCS = \
	attributes.c \
	attrvt.c \
	documents.c \
	extensions.c \
	extra.c \
	functions.c \
	imports.c \
	keys.c \
	namespaces.c \
	numbers.c \
	pattern.c \
	preproc.c \
	security.c \
	templates.c \
	transform.c \
	variables.c \
	xslt.c \
	xsltutils.c

CFLAGS += \
	-I${.CURDIR} \
	-I${LIBXSLT_DIR}

SRC_LIBS += \
	${LIBM} \
	${LIBICONV} \
	${LIBXML2}

.include <bsd.lib.mk>
