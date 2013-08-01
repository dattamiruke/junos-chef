#
# $Id$
#

RUBY_DIR = ${SRCTOP}/dist/ruby-1.9.3-p448
RUBY_EXT_DIR = ${RUBY_DIR}/ext

CFLAGS += \
  -DRUBY_EXTCONF_H=\"extconf.h\" \
  -fPIC \
  -I${RUBY_DIR} \
  -I${RUBY_DIR}/include \
  -I${.CURDIR} \
  -I${.CURDIR}/../ \
  -I${SRCTOP}/lib/ruby/include \
  -I${OPENSSL_SRC}/include

.if ${MACHINE} == "powerpc" || ${MACHINE} == "xlr" || ${MACHINE} == "octeon"
CFLAGS += -DWORDS_BIGENDIAN=1

.endif

SHLIB_LDFLAGS.${MACHINE} += \
  -rdynamic -Wl,-rpath=${JUNOS_SDK_INSTALLDIR}/lib
