#!/usr/bin/env bash
# shellcheck shell=bash
# shellcheck disable=SC2154
# srcdir, pkgdir, pkgname, and pkgver are supplied by makepkg.

arch_normalize_source_tree() {
	local expected="${srcdir}/${pkgname}-${pkgver}"
	local -a roots=()

	while IFS= read -r -d '' root; do
		roots+=("$root")
	done < <(find "$srcdir" -mindepth 1 -maxdepth 1 -type d -print0)

	if (( ${#roots[@]} != 1 )); then
		printf 'error: expected exactly one extracted source directory in %s\n' "$srcdir" >&2
		return 1
	fi

	if [[ "${roots[0]}" != "$expected" ]]; then
		[[ ! -e "$expected" ]] || {
			printf 'error: source destination already exists: %s\n' "$expected" >&2
			return 1
		}
		mv -- "${roots[0]}" "$expected"
	fi
}

arch_check_fonts() {
	local source_root="${srcdir}/${pkgname}-${pkgver}"
	local fonts_root="${source_root}/src/usr/share/fonts"

	test -d "$fonts_root"
	test "$(find "$fonts_root" -type f \( -name '*.ttf' -o -name '*.otf' \) | wc -l)" -gt 0
	test -f "${source_root}/LICENSE"
	find "$fonts_root" -type f -name '*.ttf' -o -name '*.otf' | while IFS= read -r font; do
		test -s "$font"
	done
}

arch_package_fonts() {
	local source_root="${srcdir}/${pkgname}-${pkgver}"

	install -dm755 "${pkgdir}/usr/share"
	cp -a "${source_root}/src/usr/share/fonts" "${pkgdir}/usr/share/"
	install -Dm644 "${source_root}/LICENSE" \
		"${pkgdir}/usr/share/licenses/${pkgname}/LICENSE"
	install -Dm644 \
		"${source_root}/src/usr/share/fonts/Bitstream Vera Sans Mono/Bitstream Vera License.txt" \
		"${pkgdir}/usr/share/licenses/${pkgname}/Bitstream Vera License.txt"
	install -Dm644 \
		"${source_root}/src/usr/share/fonts/Symbols Nerd Font/LICENSE" \
		"${pkgdir}/usr/share/licenses/${pkgname}/MIT"
	install -Dm644 \
		"${source_root}/src/usr/share/fonts/IBM Plex Mono/OFL.txt" \
		"${pkgdir}/usr/share/licenses/${pkgname}/OFL-1.1"
	install -Dm644 \
		"${source_root}/src/usr/share/fonts/Terminess Nerd Font/LICENSE.txt" \
		"${pkgdir}/usr/share/licenses/${pkgname}/Terminess Nerd Font LICENSE.txt"
}
