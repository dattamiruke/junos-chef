#
# Add local definitions of libraries in this file
#

LIBYAML = ${OBJTOP}/lib/libyaml/libyaml.a
INCLUDES_libyaml = -I${SRCTOP}/dist/yaml-0.1.4/include

LIBICONV = ${OBJTOP}/lib/libiconv/libiconv.a
INCLUDES_libiconv = \
  -I${SRCTOP}/lib/libiconv \
  -I${SRCTOP}/dist/libiconv-1.14/include

LIBCRYPTO = ${OBJTOP}/lib/libcrypto/libcrypto.a
INCLUDES_libcrypto = \
  -I${SRCTOP}/lib/libcrypto \
  -I${SRCTOP}/dist/openssl-1.0.1e/include \
  -I${OBJTOP}/lib/libcrypto

LIBSSL = ${OBJTOP}/lib/libssl/libssl.a
INCLUDES_libssl = \
  -I${SRCTOP}/lib/libcrypto \
  -I${SRCTOP}/dist/openssl-1.0.1e/include \
  -I${OBJTOP}/lib/libcrypto

LIBXML2 = ${OBJTOP}/lib/libxml2/libxml2.a
INCLUDES_libxml2 = \
  -I${SRCTOP}/lib/libxml2 \
  -I${SRCTOP}/dist/libxml2-2.9.0/include

SRC_libcrypto =
SRC_libssl =

WEAK_CRYPTO_LIBS =

.include <provider-prefix.mk>
