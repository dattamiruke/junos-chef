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

LIB = ssl

SHLIB_MAJOR = 1
SHLIB_MINOR = 0.1e

OPENSSL_SRC = ${SRCTOP}/dist/openssl-1.0.1e
SSL_SRC = ${OPENSSL_SRC}/ssl
CRYPTO_SRC = ${OPENSSL_SRC}/crypto

.PATH: ${SSL_SRC}
SRCS = \
	s2_meth.c s2_srvr.c s2_clnt.c s2_lib.c s2_enc.c s2_pkt.c \
	s3_meth.c s3_srvr.c s3_clnt.c s3_lib.c s3_enc.c s3_pkt.c s3_both.c s3_cbc.c \
	s23_meth.c s23_srvr.c s23_clnt.c s23_lib.c s23_pkt.c \
	t1_meth.c t1_srvr.c t1_clnt.c t1_lib.c t1_enc.c \
	d1_meth.c d1_srvr.c d1_clnt.c d1_lib.c d1_pkt.c \
	d1_both.c d1_enc.c d1_srtp.c \
	ssl_lib.c ssl_err2.c ssl_cert.c ssl_sess.c \
	ssl_ciph.c ssl_stat.c ssl_rsa.c \
	ssl_asn1.c ssl_txt.c ssl_algs.c \
	bio_ssl.c ssl_err.c kssl.c tls_srp.c t1_reneg.c

CFLAGS += \
	-DOPENSSL_NO_HW -DOPENSSL_NO_GMP -DOPENSSL_NO_HW_GMP \
	-DTERMIOS -DANSI_SOURCE -DOPENSSL_THREADS \
	-DOPENSSL_NO_CAMELLIA -DOPENSSL_NO_CAPIENG -DOPENSSL_NO_CMS \
	-DOPENSSL_NO_JPAKE -DOPENSSL_NO_MDC2 -DOPENSSL_NO_RC5 \
	-DOPENSSL_NO_RFC3779 -DOPENSSL_NO_SEED -DOPENSSL_NO_ENGINE -DOPENSSL_NO_STORE \
	-I${OPENSSL_SRC} -I${OPENSSL_SRC}/include -I${SSL_SRC} -I${CRYPTO_SRC} \
	-I${OBJTOP}/lib/libcrypto

.if ${MACHINE} == "i386"
CFLAGS += -DL_ENDIAN
.endif

.include <bsd.lib.mk>
