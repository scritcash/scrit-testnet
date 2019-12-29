prefix ?= /usr/local
exec_prefix ?= $(prefix)
sharedir ?= $(exec_prefix)/share

.PHONY: all install uninstall

all:

install:
	mkdir -p $(sharedir)/scrit
	cp -rf testnet $(sharedir)/scrit

uninstall:
	rm -rf $(sharedir)/scrit/testnet
