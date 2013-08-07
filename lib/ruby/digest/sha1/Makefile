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

LIB = sha1
SHLIB_NAME = ${LIB}.so

.PATH: ${RUBY_EXT_DIR}/digest/sha1
SRCS = sha1.c sha1init.c sha1ossl.c

CFLAGS += \
	-I${RUBY_EXT_DIR}/digest \
	-DHAVE_CONFIG_H \
	-DHAVE_OPENSSL_SHA_H \
	-DHAVE_SYS_CDEFS_H

DPLIBS += ${LIBCRYPTO}

.include <bsd.lib.mk>
