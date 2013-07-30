#
# $Id$
#

# SHLIB_MAJOR = 1
# SHLIB_MINOR = 0

RUBY_DIR = ${SRCTOP}/dist/ruby-1.9.3-p194
RUBY_EXT_DIR = ${RUBY_DIR}/ext
XML4R_DIR = ${SRCTOP}/dist/xml4r-libxml-ruby-32bd511

CFLAGS += \
	-DRUBY_EXTCONF_H=\"extconf.h\" -fPIC \
	-I${RUBY_DIR} -I${RUBY_DIR}/include \
	-I${.CURDIR} -I${.CURDIR}/../ -I${SRCTOP}/lib/ruby/include

SHLIB_LDFLAGS.${MACHINE} += \
	-rdynamic -Wl,-rpath=${JUNOS_SDK_INSTALLDIR}/lib

