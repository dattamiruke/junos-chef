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

LIB = readline
SHLIB_NAME = ${LIB}.so

.PATH: ${RUBY_EXT_DIR}/${LIB}
SRCS = ${LIB}.c

CFLAGS += \
	-DHAVE_EDITLINE_READLINE_H \
	-DHAVE_RL_FILENAME_COMPLETION_FUNCTION \
	-DHAVE_RL_COMPLETION_MATCHES \
	-DHAVE_RL_DEPREP_TERM_FUNCTION \
	-DHAVE_RL_COMPLETION_APPEND_CHARACTER \
	-DHAVE_RL_BASIC_WORD_BREAK_CHARACTERS \
	-DHAVE_RL_COMPLETER_WORD_BREAK_CHARACTERS \
	-DHAVE_RL_COMPLETER_QUOTE_CHARACTERS \
	-DHAVE_RL_ATTEMPTED_COMPLETION_OVER \
	-DHAVE_RL_LIBRARY_VERSION \
	-DHAVE_RL_LINE_BUFFER \
	-DHAVE_RL_POINT \
	-DHAVE_RL_CATCH_SIGWINCH \
	-DHAVE_RL_CLEANUP_AFTER_SIGNAL \
	-DHAVE_RL_FREE_LINE_STATE \
	-DHAVE_RL_CLEAR_SIGNALS \
	-DHAVE_RL_SET_SCREEN_SIZE \
	-DHAVE_RL_GET_SCREEN_SIZE \
	-DHAVE_REPLACE_HISTORY_ENTRY \
	-DHAVE_REMOVE_HISTORY \
	-DHAVE_CLEAR_HISTORY

	# -DHAVE_RL_GETC \
	# -DHAVE_RL_GETC_FUNCTION \
	# -DHAVE_RL_USERNAME_COMPLETION_FUNCTION \
	# -DHAVE_RL_REFRESH_LINE \
	# -DHAVE_RL_BASIC_QUOTE_CHARACTERS \
	# -DHAVE_RL_FILENAME_QUOTE_CHARACTERS \
	# -DHAVE_RL_EDITING_MODE \
	# -DHAVE_RL_EVENT_HOOK \
	# -DHAVE_RL_CATCH_SIGNALS \
	# -DHAVE_RL_VI_EDITING_MODE \
	# -DHAVE_RL_EMACS_EDITING_MODE

DPLIBS += \
	${LIBNCURSES} \
	${LIBEDIT}

.include <bsd.lib.mk>
