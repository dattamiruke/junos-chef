#
# $Id$
#

.include "../Makefile.inc"

LIB = openssl
SHLIB_NAME = ${LIB}.so

.PATH: ${RUBY_EXT_DIR}/${LIB}

CFLAGS += \
  -DHAVE_HMAC_CTX_COPY \
  -DHAVE_EVP_CIPHER_CTX_COPY

SRCS = \
	openssl_missing.c \
	ossl.c \
	ossl_asn1.c \
	ossl_bio.c \
	ossl_bn.c \
	ossl_cipher.c \
	ossl_config.c \
	ossl_digest.c \
	ossl_engine.c \
	ossl_hmac.c \
	ossl_ns_spki.c \
	ossl_ocsp.c \
	ossl_pkcs12.c \
	ossl_pkcs5.c \
	ossl_pkcs7.c \
	ossl_pkey.c \
	ossl_pkey_dh.c \
	ossl_pkey_dsa.c \
	ossl_pkey_ec.c \
	ossl_pkey_rsa.c \
	ossl_rand.c \
	ossl_ssl.c \
	ossl_ssl_session.c \
	ossl_x509.c \
	ossl_x509attr.c \
	ossl_x509cert.c \
	ossl_x509crl.c \
	ossl_x509ext.c \
	ossl_x509name.c \
	ossl_x509req.c \
	ossl_x509revoked.c \
	ossl_x509store.c

CFLAGS += \
	-DRUBY_EXTCONF_H=\"extconf.h\" \
	-DHAVE_ASSERT_H \
	-DHAVE_OPENSSL_SSL_H \
	-DHAVE_OPENSSL_CONF_API_H \
	-DHAVE_RB_STR_SET_LEN \
	-DHAVE_RB_BLOCK_CALL \
	-DHAVE_ERR_PEEK_LAST_ERROR \
	-DHAVE_BN_MOD_ADD \
	-DHAVE_BN_MOD_SQR \
	-DHAVE_BN_MOD_SUB \
	-DHAVE_BN_PSEUDO_RAND_RANGE \
	-DHAVE_BN_RAND_RANGE \
	-DHAVE_CONF_GET1_DEFAULT_CONFIG_FILE \
	-DHAVE_EVP_CIPHER_CTX_SET_PADDING \
	-DHAVE_EVP_CIPHERFINAL_EX \
	-DHAVE_EVP_CIPHERINIT_EX \
	-DHAVE_EVP_DIGESTFINAL_EX \
	-DHAVE_EVP_DIGESTINIT_EX \
	-DHAVE_EVP_MD_CTX_CLEANUP \
	-DHAVE_EVP_MD_CTX_CREATE \
	-DHAVE_EVP_MD_CTX_DESTROY \
	-DHAVE_EVP_MD_CTX_INIT \
	-DHAVE_HMAC_CTX_CLEANUP \
	-DHAVE_HMAC_CTX_INIT \
	-DHAVE_PEM_DEF_CALLBACK \
	-DHAVE_PKCS5_PBKDF2_HMAC_SHA1 \
	-DHAVE_X509V3_SET_NCONF \
	-DHAVE_X509V3_EXT_NCONF_NID \
	-DHAVE_X509_CRL_ADD0_REVOKED \
	-DHAVE_X509_CRL_SET_ISSUER_NAME \
	-DHAVE_X509_CRL_SET_VERSION \
	-DHAVE_X509_CRL_SORT \
	-DHAVE_OBJ_NAME_DO_ALL_SORTED \
	-DHAVE_SSL_SESSION_GET_ID \
	-DHAVE_OPENSSL_CLEANSE \
	-DHAVE_VA_ARGS_MACRO \
	-DHAVE_SSLV2_METHOD \
	-DHAVE_SSLV2_SERVER_METHOD \
	-DHAVE_SSLV2_CLIENT_METHOD \
	-DHAVE_OPENSSL_ENGINE_H \
	-DHAVE_ENGINE_ADD \
	-DHAVE_ENGINE_LOAD_BUILTIN_ENGINES \
	-DHAVE_ENGINE_GET_DIGEST \
	-DHAVE_ENGINE_GET_CIPHER \
	-DHAVE_ENGINE_CLEANUP \
	-DHAVE_OPENSSL_OCSP_H \
	-DHAVE_ST_FLAGS \
	-DHAVE_ST_ENGINE \
	-DHAVE_ST_SINGLE

DPLIBS += \
	${LIBCRYPTO} \
	${LIBSSL} \
	${LIBCRYPT} \
	${LIBTHR} \
	${LIBM}

.include <bsd.lib.mk>
