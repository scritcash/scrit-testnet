prefix ?= /usr/local
exec_prefix ?= $(prefix)
sharedir ?= $(exec_prefix)/share

.PHONY: all install uninstall

all:
	mkdir -p $(sharedir)/scrit

install:
	mkdir -p $(sharedir)/scrit
	cp -f testnet.json $(sharedir)/scrit

uninstall:
	rm -f $(sharedir)/scrit/testnet.json
