#
# $Id$
#
# Copyright (c) 2006-2008, Juniper Networks, Inc.
# All rights reserved.
#
#

SDK_PKG_MAIN = ruby

#
# Package targets
#

ruby:                     SDK_PKG_RE
chef:                     SDK_PKG_RE

chef-bundle:              SDK_PKG_BUNDLE
chef-bundle:              ruby chef

#
# The magic:
#
MAKE_SDK_PKG = sdk
MACHINE_IN_RELEASE_TAG = yes
.include <pkg/sdk-pkg.mk>
