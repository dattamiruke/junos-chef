#
# $Id$
#

.include "../Makefile.inc"

LIB = libxml_ruby
SHLIB_NAME = ${LIB}.so

.PATH: ${XML4R_DIR}/ext/libxml
SRCS = \
	libxml.c ruby_xml.c ruby_xml_attr.c ruby_xml_attr_decl.c \
	ruby_xml_attributes.c ruby_xml_cbg.c ruby_xml_document.c \
	ruby_xml_dtd.c ruby_xml_encoding.c ruby_xml_error.c \
	ruby_xml_html_parser.c ruby_xml_html_parser_context.c \
	ruby_xml_html_parser_options.c ruby_xml_input_cbg.c \
	ruby_xml_io.c ruby_xml_namespace.c ruby_xml_namespaces.c \
	ruby_xml_node.c ruby_xml_parser.c ruby_xml_parser_context.c \
	ruby_xml_parser_options.c ruby_xml_reader.c ruby_xml_relaxng.c \
	ruby_xml_sax2_handler.c ruby_xml_sax_parser.c ruby_xml_schema.c \
	ruby_xml_xinclude.c ruby_xml_xpath.c ruby_xml_xpath_context.c \
	ruby_xml_xpath_expression.c ruby_xml_xpath_object.c \
	ruby_xml_xpointer.c

DPLIBS += ${LIBICONV} ${LIBXML2}

.include <bsd.lib.mk>

