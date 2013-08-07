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

LIB = etc
SHLIB_NAME = ${LIB}.so

.PATH: ${RUBY_EXT_DIR}/${LIB}
SRCS = ${LIB}.c

CFLAGS += \
	-DHAVE_GETLOGIN \
	-DHAVE_GETPWENT \
	-DHAVE_GETGRENT \
	-DSYSCONFDIR="\"/homes/taoliu/works/ruby/ship/etc\"" \
	-DHAVE_STRUCT_PASSWD_PW_GECOS \
	-DHAVE_ST_PW_GECOS \
	-DHAVE_STRUCT_PASSWD_PW_CHANGE \
	-DHAVE_ST_PW_CHANGE \
	-DHAVE_STRUCT_PASSWD_PW_CLASS \
	-DHAVE_ST_PW_CLASS \
	-DHAVE_STRUCT_PASSWD_PW_EXPIRE \
	-DHAVE_ST_PW_EXPIRE \
	-DHAVE_STRUCT_PASSWD_PW_PASSWD \
	-DHAVE_ST_PW_PASSWD \
	-DHAVE_STRUCT_GROUP_GR_PASSWD \
	-DHAVE_ST_GR_PASSWD

.include <bsd.lib.mk>
