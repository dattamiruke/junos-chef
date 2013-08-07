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

.include "../Makefile.inc"

LIB = socket
SHLIB_NAME = ${LIB}.so

.PATH: ${RUBY_EXT_DIR}/${LIB}
SRCS = \
	ancdata.c \
	basicsocket.c \
	constants.c \
	init.c \
	ipsocket.c \
	option.c \
	raddrinfo.c \
	socket.c \
	sockssocket.c \
	tcpserver.c \
	tcpsocket.c \
	udpsocket.c \
	unixserver.c \
	unixsocket.c

CFLAGS += \
	-DHAVE_ARPA_INET_H \
	-DENABLE_IPV6 \
	-DINET6 \
	-DHAVE_STRUCT_SOCKADDR_IN_SIN_LEN \
	-DHAVE_SIN_LEN \
	-DHAVE_STRUCT_SOCKADDR_STORAGE_SS_FAMILY \
	-DHAVE_SOCKADDR_STORAGE \
	-DHAVE_STRUCT_SOCKADDR_STORAGE_SS_LEN \
	-DHAVE_ST_SS_LEN \
	-DHAVE_STRUCT_SOCKADDR_SA_LEN \
	-DHAVE_SA_LEN  \
	-DHAVE_NETINET_TCP_H \
	-DHAVE_NETINET_UDP_H \
	-DHAVE_SENDMSG \
	-DHAVE_RECVMSG \
	-DHAVE_STRUCT_MSGHDR_MSG_CONTROL \
	-DHAVE_TYPE_STRUCT_ADDRINFO \
	-DHAVE_FREEHOSTENT \
	-DHAVE_FREEADDRINFO \
	-DHAVE_GAI_STRERROR \
	-DGAI_STRERROR_CONST \
	-DHAVE_GETNAMEINFO \
	-DHAVE_GETADDRINFO \
	-DHAVE_INET_NTOP \
	-DHAVE_INET_PTON \
	-DHAVE_GETSERVBYPORT \
	-DHAVE_ARPA_NAMESER_H \
	-DHAVE_RESOLV_H \
	-DHAVE_IFADDRS_H \
	-DHAVE_GETIFADDRS \
	-DHAVE_SYS_IOCTL_H \
	-DHAVE_SYS_SOCKIO_H \
	-DHAVE_SYS_PARAM_H \
	-DHAVE_SYS_UCRED_H \
	-DHAVE_TYPE_SOCKLEN_T \
	-DHAVE_SYS_UN_H \
	-DHAVE_SYS_UIO_H \
	-DHAVE_TYPE_STRUCT_IN6_PKTINFO \
	-DHAVE_TYPE_STRUCT_SOCKCRED \
	-DHAVE_TYPE_STRUCT_CMSGCRED \
	-DHAVE_GETPEEREID \
	-DHAVE_SOCKET \
	-DHAVE_GETIPNODEBYNAME \
	-DHAVE_SOCKETPAIR \
	-DHAVE_GETHOSTNAME

	# -DHAVE_ST_MSG_CONTROL \
	# -DHAVE_NET_IF_H \
	# -DHAVE_IF_INDEXTONAME \
	# -DHAVE_TYPE_STRUCT_IP_MREQ \
	# -DHAVE_TYPE_STRUCT_IPV6_MREQ

.include <bsd.lib.mk>
