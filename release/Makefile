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

SDK_PKG_MAIN = ruby

#
# Package targets
#

ruby:                     SDK_PKG_RE
chef:                     SDK_PKG_RE
junos-ez-stdlib:          SDK_PKG_RE

chef-bundle:              SDK_PKG_BUNDLE
chef-bundle:              ruby chef junos-ez-stdlib

# The top-level Rakefile exports the version of Chef being built in the
# CHEF_VERSION environment variable.
.if defined (CHEF_VERSION)

BUILD_TIME != date -u +%Y%m%d%H%M%S

CHEF_PACKAGE_ITERATION ?= 1

# Given a CHEF_VERSION like 11.8.0-alpha.0+106.g62148fe.0

# Capture the base version (MAJOR.MINOR.PATCH-PRERELEASE):
#
#  11.8.0-alpha.0
#
BASE_VERSION != echo $$CHEF_VERSION | awk -F + '{print $$1}'

OS_INFO = junos.$(BSB_NAME).$(MACHINE)

# Release builds should not include a timestamp/build version
.if defined (RELEASE_BUILD) && ($(RELEASE_BUILD) == true || $(RELEASE_BUILD) == yes)

RELEASE = $(BASE_VERSION)_$(CHEF_PACKAGE_ITERATION).$(OS_INFO)

.else

# Capture the SemVer build version:
#
#  106.g62148fe.0
#
EXISTING_BUILD_VERSION != echo $$CHEF_VERSION | awk -F + '{print $$2}'

.if !empty (EXISTING_BUILD_VERSION)
BUILD_VERSION = $(BUILD_TIME).$(EXISTING_BUILD_VERSION)
.else
BUILD_VERSION = ${BUILD_TIME}
.endif

RELEASE = $(BASE_VERSION)+$(BUILD_VERSION)_$(CHEF_PACKAGE_ITERATION).$(OS_INFO)

.endif

.endif

# Disable the default build info.
SDK_PKG_RELEASE_INCLUDES_BUILD_INFO = no

#
# The magic:
#
MAKE_SDK_PKG = sdk
MACHINE_IN_RELEASE_TAG = no

.include <pkg/sdk-pkg.mk>
