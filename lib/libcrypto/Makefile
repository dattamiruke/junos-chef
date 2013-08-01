#
# $Id: Makefile,v 1.3 2012/11/12 23:50:33 roselynl Exp $
#
# Copyright (c) 2010, Juniper Networks, Inc.
# All rights reserved.
#

LIB = crypto

SHLIB_MAJOR = 1
SHLIB_MINOR = 0.1e

OPENSSL_SRC = ${SRCTOP}/dist/openssl-1.0.1e
CRYPTO_SRC = ${OPENSSL_SRC}/crypto
ENGINES_SRC = ${OPENSSL_SRC}/engines


.PATH: ${CRYPTO_SRC}
SRCS += \
	cryptlib.c mem.c mem_clr.c mem_dbg.c cversion.c ex_data.c cpt_err.c \
	ebcdic.c uid.c o_time.c o_str.c o_dir.c o_fips.c o_init.c fips_ers.c

.PATH: ${CRYPTO_SRC}/aes
SRCS += \
	aes_cbc.c aes_cfb.c aes_core.c aes_ctr.c aes_ecb.c aes_ige.c \
	aes_misc.c aes_ofb.c aes_wrap.c \


.PATH: ${CRYPTO_SRC}/asn1
SRCS += \
	a_bitstr.c a_bool.c a_bytes.c a_d2i_fp.c a_digest.c a_dup.c \
	a_enum.c a_gentm.c a_i2d_fp.c a_int.c a_mbstr.c a_object.c \
	a_octet.c a_print.c a_set.c a_sign.c a_strex.c a_strnid.c \
	a_time.c a_type.c a_utctm.c a_utf8.c a_verify.c ameth_lib.c \
	asn1_err.c asn1_gen.c asn1_lib.c asn1_par.c asn_mime.c \
	asn_moid.c asn_pack.c bio_asn1.c bio_ndef.c d2i_pr.c \
	d2i_pu.c evp_asn1.c f_enum.c f_int.c f_string.c i2d_pr.c \
	i2d_pu.c n_pkey.c nsseq.c p5_pbe.c p5_pbev2.c p8_pkey.c \
	t_bitst.c t_crl.c t_pkey.c t_req.c t_spki.c t_x509.c \
	t_x509a.c tasn_dec.c tasn_enc.c tasn_fre.c tasn_new.c \
	tasn_prn.c tasn_typ.c tasn_utl.c x_algor.c x_attrib.c \
	x_bignum.c x_crl.c x_exten.c x_info.c x_long.c x_name.c \
	x_nx509.c x_pkey.c x_pubkey.c x_req.c x_sig.c x_spki.c \
	x_val.c x_x509.c x_x509a.c \


.PATH: ${CRYPTO_SRC}/bf
SRCS += \
	bf_cfb64.c bf_ecb.c bf_enc.c bf_ofb64.c bf_skey.c


.PATH: ${CRYPTO_SRC}/bio
SRCS += \
	b_dump.c b_print.c b_sock.c bf_buff.c bf_lbuf.c bf_nbio.c \
	bf_null.c bio_cb.c bio_err.c bio_lib.c bss_acpt.c bss_bio.c \
	bss_conn.c bss_dgram.c bss_fd.c bss_file.c bss_log.c \
	bss_mem.c bss_null.c bss_sock.c \


.PATH: ${CRYPTO_SRC}/bn
SRCS += \
	bn_add.c bn_asm.c bn_blind.c bn_const.c bn_ctx.c bn_depr.c \
	bn_div.c bn_err.c bn_exp.c bn_exp2.c bn_gcd.c bn_gf2m.c \
	bn_kron.c bn_lib.c bn_mod.c bn_mont.c bn_mpi.c bn_mul.c \
	bn_nist.c bn_prime.c bn_print.c bn_rand.c bn_recp.c \
	bn_shift.c bn_sqr.c bn_sqrt.c bn_word.c bn_x931p.c \
	vms-helper.c \


.PATH: ${CRYPTO_SRC}/buffer
SRCS += \
	buf_err.c buf_str.c buffer.c \


.PATH: ${CRYPTO_SRC}/cast
SRCS += c_cfb64.c c_ecb.c c_enc.c c_ofb64.c c_skey.c


.PATH: ${CRYPTO_SRC}/comp
SRCS += \
	c_rle.c c_zlib.c comp_err.c comp_lib.c \


.PATH: ${CRYPTO_SRC}/conf
SRCS += \
	conf_api.c conf_def.c conf_err.c conf_lib.c \
	conf_mall.c conf_mod.c conf_sap.c \


.PATH: ${CRYPTO_SRC}/des
SRCS += \
	cbc3_enc.c cbc_cksm.c cbc_enc.c cfb64ede.c cfb64enc.c \
	cfb_enc.c des_enc.c des_old.c des_old2.c \
	ecb3_enc.c ecb_enc.c ede_cbcm_enc.c enc_read.c \
	enc_writ.c fcrypt.c fcrypt_b.c ofb64ede.c \
	ofb64enc.c ofb_enc.c pcbc_enc.c qud_cksm.c rand_key.c \
	read2pwd.c rpc_enc.c set_key.c str2key.c xcbc_enc.c \


.PATH: ${CRYPTO_SRC}/dh
SRCS += \
	dh_ameth.c dh_asn1.c dh_check.c dh_depr.c dh_err.c dh_gen.c \
	dh_key.c dh_lib.c dh_pmeth.c dh_prn.c


.PATH: ${CRYPTO_SRC}/dsa
SRCS += \
	dsa_ameth.c dsa_asn1.c dsa_depr.c dsa_err.c dsa_gen.c \
	dsa_key.c dsa_lib.c dsa_ossl.c dsa_pmeth.c dsa_prn.c \
	dsa_sign.c dsa_vrf.c \


.PATH: ${CRYPTO_SRC}/dso
SRCS += \
	dso_beos.c dso_dl.c dso_dlfcn.c dso_err.c dso_lib.c \
	dso_null.c dso_openssl.c dso_vms.c dso_win32.c \


.PATH: ${CRYPTO_SRC}/ec
SRCS += \
	ec2_mult.c ec2_oct.c ec2_smpl.c ec_ameth.c ec_asn1.c \
	ec_check.c ec_curve.c ec_cvt.c ec_err.c ec_key.c ec_lib.c \
	ec_mult.c ec_oct.c ec_pmeth.c ec_print.c eck_prn.c \
	ecp_mont.c ecp_nist.c ecp_nistputil.c ecp_oct.c \
	ecp_smpl.c \


.PATH: ${CRYPTO_SRC}/ecdsa
SRCS += \
	ecs_asn1.c ecs_err.c ecs_lib.c ecs_ossl.c \
	ecs_sign.c ecs_vrf.c \


.PATH: ${CRYPTO_SRC}/ecdh
SRCS += \
	ech_err.c ech_key.c ech_lib.c ech_ossl.c \


.PATH: ${CRYPTO_SRC}/engine
SRCS += \
	eng_all.c eng_cnf.c eng_cryptodev.c eng_ctrl.c eng_dyn.c \
	eng_err.c eng_fat.c eng_init.c eng_lib.c eng_list.c \
	eng_openssl.c eng_pkey.c eng_rdrand.c eng_rsax.c eng_table.c \
	tb_asnmth.c tb_cipher.c tb_dh.c tb_digest.c \
	tb_dsa.c tb_ecdh.c tb_ecdsa.c tb_pkmeth.c tb_rand.c tb_rsa.c \
	tb_store.c \


.PATH: ${CRYPTO_SRC}/err
SRCS += \
	err.c err_all.c err_prn.c \

.PATH: ${CRYPTO_SRC}/modes
SRCS += \
	cbc128.c ccm128.c cfb128.c ctr128.c gcm128.c ofb128.c xts128.c


.PATH: ${CRYPTO_SRC}/evp
SRCS += \
	bio_b64.c bio_enc.c bio_md.c bio_ok.c c_all.c c_allc.c \
	c_alld.c digest.c e_aes.c e_aes_cbc_hmac_sha1.c e_bf.c \
	e_camellia.c e_cast.c e_des.c e_des3.c e_idea.c \
	e_null.c e_old.c e_rc2.c e_rc4.c e_rc4_hmac_md5.c e_rc5.c \
	e_seed.c e_xcbc_d.c encode.c evp_acnf.c evp_enc.c evp_err.c \
	evp_fips.c evp_key.c evp_lib.c evp_pbe.c evp_pkey.c \
	m_dss.c m_dss1.c m_ecdsa.c m_md2.c m_md4.c \
	m_md5.c m_mdc2.c m_null.c m_ripemd.c m_sha.c m_sha1.c \
	m_sigver.c m_wp.c names.c openbsd_hw.c p5_crpt.c p5_crpt2.c \
	p_dec.c p_enc.c p_lib.c p_open.c p_seal.c p_sign.c \
	p_verify.c pmeth_fn.c pmeth_gn.c pmeth_lib.c \


.PATH: ${CRYPTO_SRC}/hmac
SRCS += \
	hm_ameth.c hm_pmeth.c hmac.c \


.PATH: ${CRYPTO_SRC}/idea
SRCS += i_cbc.c i_cfb64.c i_ecb.c i_ofb64.c i_skey.c


.PATH: ${CRYPTO_SRC}/krb5
SRCS += \
	krb5_asn.c \


.PATH: ${CRYPTO_SRC}/lhash
SRCS += \
	lh_stats.c lhash.c \


#.PATH: ${CRYPTO_SRC}/md2
#SRCS += \
	md2_dgst.c md2_one.c \


.PATH: ${CRYPTO_SRC}/md4
SRCS += \
	md4_dgst.c md4_one.c \


.PATH: ${CRYPTO_SRC}/md5
SRCS += \
	md5_dgst.c md5_one.c \


.PATH: ${CRYPTO_SRC}/objects
SRCS += \
	o_names.c obj_dat.c obj_err.c obj_lib.c obj_xref.c \


.PATH: ${CRYPTO_SRC}/ocsp
SRCS += \
	ocsp_asn.c ocsp_cl.c ocsp_err.c ocsp_ext.c ocsp_ht.c \
	ocsp_lib.c ocsp_prn.c ocsp_srv.c ocsp_vfy.c \


.PATH: ${CRYPTO_SRC}/pem
SRCS += \
	pem_all.c pem_err.c pem_info.c pem_lib.c pem_oth.c pem_pk8.c \
	pem_pkey.c pem_seal.c pem_sign.c pem_x509.c pem_xaux.c \
	pvkfmt.c \


.PATH: ${CRYPTO_SRC}/pkcs12
SRCS += \
	p12_add.c p12_asn.c p12_attr.c p12_crpt.c p12_crt.c \
	p12_decr.c p12_init.c p12_key.c p12_kiss.c p12_mutl.c \
	p12_npas.c p12_p8d.c p12_p8e.c p12_utl.c pk12err.c \


.PATH: ${CRYPTO_SRC}/pkcs7
SRCS += \
	bio_pk7.c pk7_asn1.c pk7_attr.c pk7_dgst.c pk7_doit.c pk7_lib.c \
	pk7_mime.c pk7_smime.c pkcs7err.c \


.PATH: ${CRYPTO_SRC}/pqueue
SRCS += pqueue.c


.PATH: ${CRYPTO_SRC}/rand
SRCS += \
	md_rand.c rand_egd.c rand_err.c rand_lib.c rand_nw.c \
	rand_os2.c rand_unix.c rand_vms.c rand_win.c randfile.c


.PATH: ${CRYPTO_SRC}/rc2
SRCS += \
	rc2_cbc.c rc2_ecb.c rc2_skey.c rc2cfb64.c rc2ofb64.c \


.PATH: ${CRYPTO_SRC}/rc4
SRCS += rc4_enc.c rc4_skey.c rc4_utl.c


.PATH: ${CRYPTO_SRC}/ripemd
SRCS += rmd_dgst.c rmd_one.c


.PATH: ${CRYPTO_SRC}/rsa
SRCS += \
	rsa_ameth.c rsa_asn1.c rsa_chk.c rsa_crpt.c rsa_depr.c \
	rsa_eay.c rsa_err.c rsa_gen.c rsa_lib.c rsa_none.c \
	rsa_null.c rsa_oaep.c rsa_pk1.c rsa_pmeth.c rsa_prn.c \
	rsa_pss.c rsa_saos.c rsa_sign.c rsa_ssl.c rsa_x931.c


.PATH: ${CRYPTO_SRC}/sha
SRCS += \
	sha1_one.c sha1dgst.c sha256.c \
	sha512.c sha_dgst.c sha_one.c \


.PATH: ${CRYPTO_SRC}/stack
SRCS += \
	stack.c \


.PATH: ${CRYPTO_SRC}/store
SRCS += \
	str_err.c str_lib.c str_mem.c str_meth.c \


.PATH: ${CRYPTO_SRC}/txt_db
SRCS += \
	txt_db.c \


.PATH: ${CRYPTO_SRC}/ui
SRCS += \
	ui_compat.c ui_err.c ui_lib.c ui_openssl.c ui_util.c \

.PATH: ${CRYPTO_SRC}/ts
SRCS += \
	ts_err.c

.PATH: ${CRYPTO_SRC}/cmac
SRCS += \
	cm_ameth.c cm_pmeth.c cmac.c

.PATH: ${CRYPTO_SRC}/x509
SRCS += \
	by_dir.c by_file.c x509_att.c x509_cmp.c x509_d2.c \
	x509_def.c x509_err.c x509_ext.c x509_lu.c x509_obj.c \
	x509_r2x.c x509_req.c x509_set.c x509_trs.c x509_txt.c \
	x509_v3.c x509_vfy.c x509_vpm.c x509cset.c x509name.c \
	x509rset.c x509spki.c x509type.c x_all.c \


.PATH: ${CRYPTO_SRC}/x509v3
SRCS += \
	pcy_cache.c pcy_data.c pcy_lib.c pcy_map.c pcy_node.c \
	pcy_tree.c v3_addr.c v3_akey.c v3_akeya.c v3_alt.c \
	v3_asid.c v3_bcons.c v3_bitst.c v3_conf.c v3_cpols.c \
	v3_crld.c v3_enum.c v3_extku.c v3_genn.c v3_ia5.c v3_info.c \
	v3_int.c v3_lib.c v3_ncons.c v3_ocsp.c v3_pci.c v3_pcia.c \
	v3_pcons.c v3_pku.c v3_pmaps.c v3_prn.c v3_purp.c v3_skey.c \
	v3_sxnet.c v3_utl.c v3err.c


SRCS += buildinf.h
CLEANFILES += buildinf.h

buildinf.h:
	( echo "#ifndef MK1MF_BUILD"; \
	echo "  /* auto-generated for crypto/cversion.c */"; \
	echo "  #define CFLAGS \"$(CC)\""; \
	echo "  #define PLATFORM \"`uname -s`-`uname -m`\""; \
	echo "  #define DATE \"`LC_ALL=C date`\""; \
	echo "#endif" ) > $@


#CFLAGS += \
	  -include ${CRYPTO_SRC}/ossl_typ.h \
	  -include ${CRYPTO_SRC}/cryptlib.h \
	  -include ${CRYPTO_SRC}/opensslconf.h \
	  -include ${CRYPTO_SRC}/o_time.h \
	  -include ${CRYPTO_SRC}/o_str.h \
	  -include ${CRYPTO_SRC}/o_dir.h

CFLAGS += \
	-DOPENSSL_NO_HW -DOPENSSL_NO_GMP -DOPENSSL_NO_HW_GMP \
	-DTERMIOS -DANSI_SOURCE -DOPENSSL_THREADS \
	-DOPENSSL_NO_CAMELLIA -DOPENSSL_NO_CAPIENG -DOPENSSL_NO_CMS \
	-DOPENSSL_NO_JPAKE -DOPENSSL_NO_RC5 \
	-DOPENSSL_NO_RFC3779 -DOPENSSL_NO_SEED -DOPENSSL_NO_SCTP \
	-DOPENSSL_NO_MD2 -DOPENSSL_NO_DYNAMIC_ENGINE \
	-DOPENSSL_NO_EC_NISTP_64_GCC_128 \
	-DOPENSSL_NO_WHIRLPOOL \
	-DOPENSSL_NO_GOST \
	-I${.CURDIR} -I${OPENSSL_SRC} -I${OPENSSL_SRC}/include \
	-I${CRYPTO_SRC} -I${CRYPTO_SRC}/bn -I${OBJTOP}/lib/libcrypto \
	-I${CRYPTO_SRC}/asn1 -I${CRYPTO_SRC}/evp -I${CRYPTO_SRC}/modes

.if ${MACHINE} == "i386"
CFLAGS += -DDATA_ORDER_IS_LITTLE_ENDIAN
.elif ${MACHINE} == "powerpc" || ${MACHINE} == "xlr" || ${MACHINE} == "octeon"
CFLAGS += -DDATA_ORDER_IS_BIG_ENDIAN
#SRCS += ecp_nistp224.c ecp_nistp256.c ecp_nistp521.c
.endif

DPLIBS += ${LIBM}

.include <bsd.lib.mk>

