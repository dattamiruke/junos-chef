#
# Copyright (c) 2006-2007, Juniper Networks, Inc.
# All rights reserved.
#

# Pick up the Juniper libnames
.include "${SB_BACKING_SB}/src/build/mk/jnx.libnames-pub.mk"
.include "${SB_BACKING_SB}/src/build/mk/bsd.libnames.mk"

# include the definitions of the libraries created by SDK user
.include "libnames.mk"

# avoid duplicate definitions
.ifndef __sdk_libnames__
__sdk_libnames__ = 1

# this is where to find our own ddl files, and also where to
# find Juniper-provided ones
INCLUDES_ddl = -I${RELOBJTOP}/lib/ddl -I${RELSRCTOP_JUNOS}/lib/ddl

.endif
