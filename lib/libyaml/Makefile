#
# $Id$
#
# Copyright (c) 2009, Juniper Networks, Inc.
# All rights reserved.
#

LIB = yaml

SHLIB_MAJOR = 2
SHLIB_MINOR = 0

YAML_DIR = ${SRCTOP}/dist/yaml-0.1.4

.PATH: ${YAML_DIR}/src
SRCS = api.c dumper.c emitter.c loader.c parser.c reader.c scanner.c writer.c

CFLAGS += -DHAVE_CONFIG_H -I${YAML_DIR} -I${YAML_DIR}/src

.include <bsd.lib.mk>

