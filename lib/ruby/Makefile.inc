#
# $Id$
#

RUBY_DIR = ${SRCTOP}/dist/ruby-1.9.3-p392
RUBY_EXT_DIR = ${RUBY_DIR}/ext
OPENSSL_SRC = ${SRCTOP}/dist/openssl-1.0.1c
# XML4R_DIR = ${SRCTOP}/dist/xml4r-libxml-ruby-32bd511

CFLAGS += \
  -fPIC \
  -I${RUBY_DIR} -I${RUBY_DIR}/include \
  -I${.CURDIR} -I${.CURDIR}/../ -I${SRCTOP}/lib/ruby/include \
  -I${OPENSSL_SRC}/include

.if ${MACHINE} == "powerpc" || ${MACHINE} == "xlr" || ${MACHINE} == "octeon"
CFLAGS += -DWORDS_BIGENDIAN=1

.endif

SHLIB_LDFLAGS.${MACHINE} += \
  -rdynamic -Wl,-rpath=${JUNOS_SDK_INSTALLDIR}/lib
