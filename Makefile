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
	cp -R --no-preserve=ownership src/usr/share/fonts/. "$(DESTDIR)$(PREFIX)/share/fonts/"
	$(INSTALL) -Dm644 LICENSE \
		"$(DESTDIR)$(PREFIX)/share/licenses/argvus-fonts/LICENSE"
	@if [ -z "$(DESTDIR)" ] && command -v fc-cache >/dev/null 2>&1; then fc-cache -f "$(PREFIX)/share/fonts" || true; fi

uninstall:
	rm -rf "$(DESTDIR)$(PREFIX)/share/fonts"/Font\ Awesome\ 7\ Free
	rm -rf "$(DESTDIR)$(PREFIX)/share/fonts"/IBM\ Plex\ Mono
	rm -rf "$(DESTDIR)$(PREFIX)/share/fonts"/Bitstream\ Vera\ Sans\ Mono
	rm -rf "$(DESTDIR)$(PREFIX)/share/fonts"/Symbols\ Nerd\ Font
	rm -rf "$(DESTDIR)$(PREFIX)/share/fonts"/Terminess\ Nerd\ Font
	$(RM) "$(DESTDIR)$(PREFIX)/share/licenses/argvus-fonts/LICENSE"
	@if [ -z "$(DESTDIR)" ] && command -v fc-cache >/dev/null 2>&1; then fc-cache -f "$(PREFIX)/share/fonts" || true; fi
	@if [ -z "$(DESTDIR)" ] && command -v fc-cache >/dev/null 2>&1; then fc-cache -f "$(PREFIX)/share/fonts" || true; fi

validate:
	@set -eu
	test -d "src/usr/share/fonts/Font Awesome 7 Free"
	test -d "src/usr/share/fonts/IBM Plex Mono"
	test -d "src/usr/share/fonts/Bitstream Vera Sans Mono"
	test -d "src/usr/share/fonts/Symbols Nerd Font"
	test -d "src/usr/share/fonts/Terminess Nerd Font"
	test -f "src/usr/share/fonts/Font Awesome 7 Free/Font Awesome 7 Free-Regular-400.otf"
	test -f "src/usr/share/fonts/IBM Plex Mono/IBMPlexMono-Regular.ttf"
	test -f "src/usr/share/fonts/Bitstream Vera Sans Mono/BitstromWeraNerdFont-Regular.ttf"
	test -f "src/usr/share/fonts/Symbols Nerd Font/SymbolsNerdFont-Regular.ttf"
	test -f "src/usr/share/fonts/Terminess Nerd Font/TerminessNerdFont-Regular.ttf"
	@echo "argvus-fonts validation ok"

build:
	@tools/build-local-package.sh

clean:
	rm -rf dist
	rm -f packaging/arch/*.zst packaging/arch/*.tar.gz