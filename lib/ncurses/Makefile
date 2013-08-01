#
# $Id$
#
# Copyright (c) 2009, Juniper Networks, Inc.
# All rights reserved.
#

LIB = ncurses

SHLIB_MAJOR = 2
SHLIB_MINOR = 0

NCURSES_DIR = ${SRCTOP}/dist/ncurses-5.9
NCURSES_TTY = ${NCURSES_DIR}/ncurses/tty
NCURSES_BASE = ${NCURSES_DIR}/ncurses/base
NCURSES_WCHAR = ${NCURSES_DIR}/ncurses/widechar
NCURSES_TINFO = ${NCURSES_DIR}/ncurses/tinfo
NCURSES_TRACE = ${NCURSES_DIR}/ncurses/trace

.PATH: ${NCURSES_BASE}
SRCS = \
    define_key.c  key_defined.c  keybound.c  keyok.c  legacy_coding.c  \
    lib_addch.c  lib_addstr.c  lib_beep.c  lib_bkgd.c  lib_box.c  lib_chgat.c  \
    lib_clear.c  lib_clearok.c  lib_clrbot.c  lib_clreol.c  lib_color.c  \
    lib_colorset.c  lib_delch.c  lib_delwin.c  lib_dft_fgbg.c  lib_driver.c  \
    lib_echo.c  lib_endwin.c  lib_erase.c  lib_flash.c  lib_freeall.c  \
    lib_getch.c  lib_getstr.c  lib_hline.c  lib_immedok.c  lib_inchstr.c  \
    lib_initscr.c  lib_insch.c  lib_insdel.c  lib_insnstr.c  lib_instr.c  \
    lib_isendwin.c  lib_leaveok.c  lib_move.c  lib_mvwin.c  \
    lib_newterm.c  lib_newwin.c  lib_nl.c  lib_overlay.c  lib_pad.c\
    lib_printw.c lib_redrawln.c  lib_refresh.c  lib_restart.c  lib_scanw.c\
    lib_screen.c  lib_scroll.c  lib_scrollok.c  lib_scrreg.c  lib_set_term.c\
    lib_slk.c  lib_slkatr_set.c  lib_slkatrof.c  lib_slkatron.c\
    lib_slkatrset.c  lib_slkattr.c  lib_slkclear.c  lib_slkcolor.c\
    lib_slkinit.c  lib_slklab.c  lib_slkrefr.c  lib_slkset.c  lib_slktouch.c\
    lib_touch.c  lib_ungetch.c  lib_vline.c  lib_wattroff.c  lib_wattron.c\
    lib_winch.c  lib_window.c  memmove.c  nc_panel.c  resizeterm.c\
    safe_sprintf.c  tries.c  use_window.c  version.c  vsscanf.c\
    wresize.c
#lib_mouse.c  sigaction.c

CFLAGS += -DUSE_TERM_DRIVER -I${NCURSES_DIR}/include -I${NCURSES_DIR}/ncurses

#-I${NCURSES_TTY} -I${NCURSES_BASE} -I${NCURSES_WCHAR} -I${NCURSES_TINFO} -I${NCURSES_TRACE}

.include <bsd.lib.mk>
