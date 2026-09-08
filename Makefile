PREFIX ?= /usr
DESTDIR ?=
INSTALL ?= install
RM ?= rm -f

.DEFAULT_GOAL := help

.PHONY: help install uninstall validate build clean

help:
	@echo "Available targets:"
	@echo "  make build"
	@echo "  make install"
	@echo "  make uninstall"
	@echo "  make validate"

install:
	$(INSTALL) -dm755 "$(DESTDIR)$(PREFIX)/share/fonts"
	cp -R --no-preserve=ownership usr/share/fonts/. "$(DESTDIR)$(PREFIX)/share/fonts/"
	$(INSTALL) -Dm644 LICENSE \
		"$(DESTDIR)$(PREFIX)/share/licenses/argvus-fonts/LICENSE"
	@if [ -z "$(DESTDIR)" ] && command -v fc-cache >/dev/null 2>&1; then fc-cache -f "$(PREFIX)/share/fonts" || true; fi

uninstall:
	rm -rf "$(DESTDIR)$(PREFIX)/share/fonts"/TerminusTTF
	rm -rf "$(DESTDIR)$(PREFIX)/share/fonts"/Font\ Awesome\ 7\ Free
	rm -rf "$(DESTDIR)$(PREFIX)/share/fonts"/IBM\ Plex\ Mono
	$(RM) "$(DESTDIR)$(PREFIX)/share/licenses/argvus-fonts/LICENSE"
	@if [ -z "$(DESTDIR)" ] && command -v fc-cache >/dev/null 2>&1; then fc-cache -f "$(PREFIX)/share/fonts" || true; fi

validate:
	@set -eu
	test -d usr/share/fonts/TerminusTTF
	test -d "usr/share/fonts/Font Awesome 7 Free"
	test -d "usr/share/fonts/IBM Plex Mono"
	test -f usr/share/fonts/TerminusTTF/TerminusTTF.ttf
	test -f "usr/share/fonts/Font Awesome 7 Free/Font Awesome 7 Free-Regular-400.otf"
	test -f "usr/share/fonts/IBM Plex Mono/IBMPlexMono-Regular.ttf"
	@echo "argvus-fonts validation ok"

build:
	@tools/build-local-package.sh

clean:
	rm -rf dist
	rm -f packaging/arch/*.zst packaging/arch/*.tar.gz