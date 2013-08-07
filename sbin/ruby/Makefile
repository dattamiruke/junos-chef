#
# $Id$
#
# Copyright (c) 2008, Juniper Networks, Inc.
# All rights reserved.
#

PROG = ruby

RUBY_SRC = ${SRCTOP}/dist/ruby-1.9.3-p448

.PATH: ${RUBY_SRC}
SRCS += \
	dln.c \
	encoding.c \
	version.c \
	array.c \
	bignum.c \
	class.c \
	compar.c \
	complex.c \
	dir.c \
	dln_find.c \
	enum.c \
	enumerator.c \
	error.c \
	eval.c \
	load.c \
	proc.c \
	file.c \
	gc.c \
	hash.c \
	inits.c \
	io.c \
	marshal.c \
	math.c \
	node.c \
	numeric.c \
	object.c \
	pack.c \
	parse.c \
	process.c \
	random.c \
	range.c \
	rational.c \
	re.c \
	regcomp.c \
	regenc.c \
	regerror.c \
	regexec.c \
	regparse.c \
	regsyntax.c \
	ruby.c \
	safe.c \
	signal.c \
	sprintf.c \
	st.c \
	strftime.c \
	string.c \
	struct.c \
	time.c \
	transcode.c \
	util.c \
	variable.c \
	compile.c \
	debug.c \
	iseq.c \
	vm.c \
	vm_dump.c \
	thread.c \
	cont.c \
	enc/ascii.c \
	enc/us_ascii.c \
	enc/unicode.c \
	enc/utf_8.c \
	newline.c \
	missing/close.c \
	addr2line.c \
	dmyext.c \
	main.c

.PATH: ${SRCTOP}/sbin/ruby
SRCS += prelude.c

DPLIBS += \
	${LIBCRYPT} \
	${LIBM} \
	${LIBMD} \
	${LIBTHR}

optflags = -O3
debugflags = -ggdb
warnflags = -Wall -Wextra -Wno-unused-parameter -Wno-parentheses -Wno-long-long -Wno-missing-field-initializers -Wpointer-arith -Wwrite-strings -Wdeclaration-after-statement -Wimplicit-function-declaration

CFLAGS += \
	-fvisibility=hidden \
	-DRUBY_EXPORT \
	-DRUBY_EXEC_PREFIX="\"/opt/sdk/juniper\"" \
	${optflags} \
	${debugflags} \
	${warnflags} \
	${cflags} \
	-I${.CURDIR} -I${SRCTOP}/lib/ruby/include -I${RUBY_SRC}/include -I${RUBY_SRC}


.if ${MACHINE} == "powerpc" || ${MACHINE} == "xlr" || ${MACHINE} == "octeon"
CFLAGS += -DWORDS_BIGENDIAN=1

.endif

LDFLAGS += -L. -rdynamic -Wl,-rpath=${JUNOS_SDK_INSTALLDIR}/lib
SHLIB_LDFLAGS.${MACHINE} += \
  -rdynamic -Wl,-rpath=${JUNOS_SDK_INSTALLDIR}/lib

.include <bsd.prog.mk>
