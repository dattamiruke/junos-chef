#
# $Id: Makefile,v 1.1.1.1 2012/10/30 16:42:08 roselynl Exp $
#

.include "../Makefile.inc"

LIB = openssl
SHLIB_NAME = ${LIB}.so

OPENSSL_SRC = ${SRCTOP}/dist/openssl-1.0.1c

.PATH: ${RUBY_EXT_DIR}/openssl
CFLAGS += -DHAVE_HMAC_CTX_COPY -DHAVE_EVP_CIPHER_CTX_COPY \
	  -DRUBY_EXTCONF_H=\"extconf.h\" \
	  -I${OPENSSL_SRC}/include

SRCS = \
	openssl_missing.c ossl.c ossl_asn1.c ossl_bio.c ossl_bn.c \
	ossl_cipher.c ossl_config.c ossl_digest.c ossl_engine.c \
	ossl_hmac.c ossl_ns_spki.c ossl_ocsp.c ossl_pkcs12.c \
	ossl_pkcs5.c ossl_pkcs7.c ossl_pkey.c ossl_pkey_dh.c \
	ossl_pkey_dsa.c ossl_pkey_ec.c ossl_pkey_rsa.c ossl_rand.c \
	ossl_ssl.c ossl_ssl_session.c ossl_x509.c ossl_x509attr.c \
	ossl_x509cert.c ossl_x509crl.c ossl_x509ext.c ossl_x509name.c \
	ossl_x509req.c ossl_x509revoked.c ossl_x509store.c

DPLIBS += ${LIBCRYPTO} ${LIBSSL} ${LIBCRYPT} ${LIBTHR} ${LIBM}

.include <bsd.lib.mk>

