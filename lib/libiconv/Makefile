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

LIB = iconv

SHLIB_MAJOR = 1
SHLIB_MINOR = 0

LIBICONV_DIR = ${SRCTOP}/dist/libiconv-1.14

.PATH: ${LIBICONV_DIR}/lib
SRCS = iconv.c relocatable.c

.PATH: ${LIBICONV_DIR}/libcharset/lib
SRCS += localcharset.c

.if ${MACHINE} == "powerpc" || ${MACHINE} == "xlr" || ${MACHINE} == "octeon"
CFLAGS += -DWORDS_BIGENDIAN=1
.endif

CFLAGS += \
	-I${LIBICONV_DIR}/lib \
	-DHAVE_CONFIG_H \
	-DLIBDIR=\"${JUNOS_SDK_INSTALLDIR}/lib\" -DBUILDING_DLL \
	-DENABLE_RELOCATABLE=1 -DIN_LIBRARY -DNO_XMALLOC \
	-Dset_relocation_prefix=libiconv_set_relocation_prefix \
	-Drelocate=libiconv_relocate -fPIC -DPIC

.include <bsd.lib.mk>

