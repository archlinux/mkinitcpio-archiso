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
	shellcheck -s bash $(INSTALL_FILES)
	shellcheck -s dash $(HOOKS_FILES)

shfmt:
	shfmt -i 4 -d $(HOOKS_FILES) $(INSTALL_FILES)

install: install-initcpio install-doc

install-initcpio:
	install -vDm 644 $(HOOKS_FILES) -t $(HOOKS_DIR)
	install -vDm 644 $(INSTALL_FILES) -t $(INSTALL_DIR)

install-doc:
	install -vDm 644 $(DOC_FILES) -t $(DOC_DIR)

.PHONY: check install install-initcpio install-doc shellcheck shfmt
