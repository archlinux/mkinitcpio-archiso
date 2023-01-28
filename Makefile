#
# SPDX-License-Identifier: GPL-3.0-or-later

PREFIX ?= /usr/local
INSTALL_DIR=$(DESTDIR)$(PREFIX)/lib/initcpio/install
HOOKS_DIR=$(DESTDIR)$(PREFIX)/lib/initcpio/hooks
DOC_DIR=$(DESTDIR)$(PREFIX)/share/doc/mkinitcpio-archiso

INSTALL_FILES=$(wildcard install/*)
HOOKS_FILES=$(wildcard hooks/*)
DOC_FILES=$(wildcard docs/*) $(wildcard *.rst)

all:

check: shellcheck shfmt

shellcheck:
	shellcheck -s bash $(shell find -P $(INSTALL_FILES) -type f)
	shellcheck -s dash $(shell find -P $(HOOKS_FILES) -type f)

shfmt:
	shfmt -i 4 -ci -d $(shell find -P $(HOOKS_FILES) $(INSTALL_FILES) -type f)

install: install-initcpio install-doc

install-initcpio:
	install -vdm755 $(HOOKS_DIR) $(INSTALL_DIR)
	cp -at $(HOOKS_DIR)/ $(HOOKS_FILES)
	cp -at $(INSTALL_DIR)/ $(INSTALL_FILES)

install-doc:
	install -vDm 644 $(DOC_FILES) -t $(DOC_DIR)

.PHONY: check install install-initcpio install-doc shellcheck shfmt
