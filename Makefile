prefix ?= /usr/local
exec_prefix ?= $(prefix)
sharedir ?= $(exec_prefix)/share

.PHONY: all install uninstall

all:
	mkdir -p $(sharedir)/scrit

install:
	mkdir -p $(sharedir)/scrit
	cp -rf testnet $(sharedir)/scrit

uninstall:
	rm -rf $(sharedir)/scrit/testnet
