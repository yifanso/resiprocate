# $Id: Makefile,v 1.98 2002/12/21 00:36:36 alan Exp $

BUILD = ../../build

USE_SSL = 1

include $(BUILD)/Makefile.pre

USE_REPO=false

PACKAGES += SIP2 UTIL2 PTHREAD

ifeq ($(USE_SSL),1)
PACKAGES += OPENSSL
endif

TARGET_LIBRARY = libsip2
TESTPROGRAMS =  

parsetest: bin.debug.Linux.i686/testParserCategories
	./bin.debug.Linux.i686/testParserCategories

-include ../Makefile.opt

SRC = \
	MultipartMixedContents.cxx \
	LazyParser.cxx \
	BranchParameter.cxx \
	Connection.cxx \
	ConnectionMap.cxx \
	DataParameter.cxx \
	QopParameter.cxx \
	QuotedDataParameter.cxx \
	Dialog.cxx \
	DnsMessage.cxx \
	DnsMessage.cxx \
	DnsResolver.cxx \
	DnsResolver.cxx \
	Executive.cxx \
	ExistsParameter.cxx \
	FloatParameter.cxx \
	HeaderFieldValue.cxx \
	HeaderFieldValueList.cxx \
	Headers.cxx \
	HeaderTypes.cxx \
	Helper.cxx \
	IntegerParameter.cxx \
	Message.cxx \
	MethodTypes.cxx \
	Parameter.cxx \
	ParameterTypes.cxx \
	ParserCategories.cxx \
	ParserCategory.cxx \
	Preparse.cxx \
	QopParameter.cxx \
	QuotedDataParameter.cxx \
	RportParameter.cxx \
	Security.cxx \
	SipMessage.cxx \
	SipStack.cxx \
	Symbols.cxx \
	TcpTransport.cxx \
	TlsTransport.cxx \
	TimerMessage.cxx \
	TimerQueue.cxx \
	TransactionMap.cxx \
	TransactionState.cxx \
	Transport.cxx \
	TransportSelector.cxx \
	UdpTransport.cxx \
	UnknownParameter.cxx \
	Uri.cxx \
	Contents.cxx \
	SdpContents.cxx \
	MessageWaitingContents.cxx \
	SipFrag.cxx \
	TuIM.cxx \
	PlainContents.cxx \
	Pkcs7Contents.cxx \



include $(BUILD)/Makefile.post
