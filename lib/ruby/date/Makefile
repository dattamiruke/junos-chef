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

LIB = date_core
SHLIB_NAME = ${LIB}.so

.PATH: ${RUBY_EXT_DIR}/date

SRCS = date_parse.c \
       date_strftime.c \
       date_strptime.c \
       date_core.c

DPLIBS += ${LIBM}

.include <bsd.lib.mk>
