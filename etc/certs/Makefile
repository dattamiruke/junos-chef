#
# $Id$
#
# Copyright (c) 2006, 2008, Juniper Networks, Inc.
# All rights reserved.
#

.include "${SYS_MK_DIR}/pkg/jnx.setup.mk"

.PATH: ${HOST_OBJTOP_JUNOS}/bsd/etc/certs
all: certs.pem
certs.pem: ${SIGCERT} sdk-certs.pem
	echo SIGCERT is ${SIGCERT}
	cat ${.ALLSRC:M*.pem} > $@

clean:
	rm -f certs.pem

cleandepend:

