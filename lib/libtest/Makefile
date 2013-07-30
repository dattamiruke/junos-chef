#
# $Id$
#
# Copyright (c) 2009, Juniper Networks, Inc.
# All rights reserved.
#

LIB = test

SRCS = test.c test-a.c test-gen.c
SRCS += test-gen.h


.PATH: ${SRCTOP}/lib/libtest/module-a

# test.c: config.db

# config.db:
# 	echo "#include <stdio.h>" > $@

test-gen.c: test.orig
	echo "/*" > $@
	cat test.orig >> $@
	echo "*/" >> $@
CLEANFILES += test-gen.c

test.orig:
	echo orig > $@
CLEANFILES += test.orig

test-gen.h: test.orig
	echo "/*" > $@
	cat test.orig >> $@
	echo "*/" >> $@
CLEANFILES += test-gen.h

.PHONY: test.orig

.include <bsd.lib.mk>

