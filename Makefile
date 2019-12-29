prefix ?= /usr/local
exec_prefix ?= $(prefix)
sharedir ?= $(exec_prefix)/share

.PHONY: all install uninstall

all:

install:
	mkdir -p $(sharedir)/scrit/testnet
	cp -f federation.json $(sharedir)/scrit/testnet

uninstall:
	rm -rf $(sharedir)/scrit/testnet
