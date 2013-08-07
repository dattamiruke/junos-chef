.include "../../Makefile.inc"

.PATH: ${RUBY_DIR}/enc/trans

.ifndef SHLIB_NAME

SRCS= \
	transdb.c \
	big5.c \
	chinese.c \
	emoji.c \
	emoji_iso2022_kddi.c \
	emoji_sjis_docomo.c \
	emoji_sjis_kddi.c \
	emoji_sjis_softbank.c \
	escape.c \
	gb18030.c \
	gbk.c \
	iso2022.c \
	japanese.c \
	japanese_euc.c \
	japanese_sjis.c \
	korean.c \
	single_byte.c \
	utf8_mac.c \
	utf_16_32.c

SO_FILES=${SRCS:.c=.so}

all: ${SRCS:.c=.so}

clean: ${SRCS:.c=.clean}

.for so in ${SO_FILES}
${so}: $${.TARGET:R}.c
	cd ${.CURDIR}; ${MAKE} LIB=${.TARGET:R} SHLIB_NAME=${.TARGET} SRCS=${.TARGET:R}.c

${so:R}.clean:
	cd ${.CURDIR}; ${MAKE} LIB=${.TARGET:R} SHLIB_NAME=${.TARGET} SRCS=${.TARGET:R}.c clean

.endfor

.else

CFLAGS += -DONIG_ENC_REGISTER=rb_enc_register

.include <bsd.lib.mk>

.endif
