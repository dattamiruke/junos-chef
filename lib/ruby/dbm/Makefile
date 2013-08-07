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

LIB = dbm
SHLIB_NAME = ${LIB}.so

.PATH: ${RUBY_EXT_DIR}/${LIB}
SRCS = ${LIB}.c

CFLAGS += \
	-DHAVE_TYPE_DBM \
	-DHAVE_DBM_OPEN \
	-DHAVE_DBM_CLEARERR \
	-DDBM_HDR="<ndbm.h>" \
	-DHAVE_SYS_CDEFS_H \
	-DHAVE_DBM_DIRFNO \
	-DSIZEOF_DATUM_DSIZE="SIZEOF_INT" \
	-DTYPEOF_DATUM_DSIZE \
	-DPRI_DATUM_DSIZE_PREFIX="PRI_INT_PREFIX" \
	-DDATUM_DSIZE2NUM="INT2NUM" \
	-DNUM2DATUM_DSIZE="NUM2INT"

.include <bsd.lib.mk>
