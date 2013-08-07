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

.include "${SYS_MK_DIR}/pkg/jnx.setup.mk"

.PATH: ${HOST_OBJTOP_JUNOS}/bsd/etc/certs
all: certs.pem
certs.pem: ${SIGCERT} sdk-certs.pem
	echo SIGCERT is ${SIGCERT}
	cat ${.ALLSRC:M*.pem} > $@

clean:
	rm -f certs.pem

cleandepend:

