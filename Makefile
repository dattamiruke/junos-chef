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

# This is the top-level makefile for the juniper sdk examples that are
# shipped with the junos-sdk.  It is a straightforward sub-directory
# makefile which builds the following subdirectories:
#
# sbin -- contains the example application(s)
# lib  -- contains the ddl and odl libraries for the example app(s)
# etc  -- builds the certificate chain for the example package(s)
.include <SDK-VERSION>

# define the subdirs
.if make(hostuilibs)
SUBDIR ?= lib
.else
SUBDIR?= etc lib sbin
.endif

# include the system subdirectory makefile which does the work
.include <bsd.subdir.mk>

# set the default rules for build_arch.${MACHINE} and for release
BUILD_ARCH_USE: .USE
	@echo "[Building targets for MACHINE=${.TARGET:E} ...]"
	(cd ${_CURDIR} && MACHINE=${.TARGET:E} MACHINE_ARCH=${MACHINE_ARCH.${.TARGET:E}} ${.MAKE})

SDK_MACHINE_LIST = i386 xlr octeon powerpc
${SDK_MACHINE_LIST:%=build_arch.%}: BUILD_ARCH_USE

.PHONY: sdk-version
sdk-version:
	@echo "SDK version: ${JUNOS_SDK_VERSION_MAJOR}.${JUNOS_SDK_VERSION_MINOR}"

# 'mk release' will build the package for installation on a JUNOS router
release: .PHONY ${SDK_MACHINE_LIST:%=build_arch.%}
	(cd ${_CURDIR}/release && ${.MAKE})

# 'mk hosttools' will build just the buildhost-targeted tools.
HOSTTOOLS?= etc/certs

hosttools:
	cd ${.CURDIR} && ${HOSTTOOL_ENV} ${.MAKE} HOSTPROG=yes SUBDIR="${HOSTTOOLS}"

# 'mk hostuilibs' will build just the hostprog version of DDL/ODL libs for UI simulator
hostuilibs: _SUBDIR
