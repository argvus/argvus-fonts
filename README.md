# argvus-fonts

Bundled fonts for the ARGVUS desktop: Bitstream Vera Sans Mono, Font Awesome
7 Free, IBM Plex Mono, Symbols Nerd Font, and Terminess Nerd Font.

[![CI](https://github.com/argvus/argvus-fonts/actions/workflows/ci.yml/badge.svg)](https://github.com/argvus/argvus-fonts/actions/workflows/ci.yml)
[![Release](https://github.com/argvus/argvus-fonts/actions/workflows/release.yml/badge.svg)](https://github.com/argvus/argvus-fonts/actions/workflows/release.yml)
[![License: mixed](https://img.shields.io/badge/license-mixed-lightgrey)](./LICENSE)
[![Language: Shell](https://img.shields.io/badge/Shell-POSIX-4EAA25?logo=gnubash&logoColor=white)](https://www.gnu.org/software/bash/)
[![Platform: Arch Linux | Wayland](https://img.shields.io/badge/platform-Arch%20Linux%20%7C%20Wayland-1793D1?logo=archlinux&logoColor=white)](https://archlinux.org/)
[![Pull requests](https://img.shields.io/github/issues-pr/argvus/argvus-fonts)](https://github.com/argvus/argvus-fonts/pulls)
[![Issues](https://img.shields.io/github/issues/argvus/argvus-fonts)](https://github.com/argvus/argvus-fonts/issues)
[![Last commit](https://img.shields.io/github/last-commit/argvus/argvus-fonts)](https://github.com/argvus/argvus-fonts/commits/main)
[![Docs](https://img.shields.io/badge/docs-project-blue)](./docs/)

This repository builds the `argvus-fonts` Arch Linux package. The font payload
is kept under `src/usr/share/fonts/`; the two PKGBUILDs and shared packaging
functions are under `packaging/arch/`.

## Build and install

On Arch Linux or a compatible distribution:

```sh
sudo pacman -S --needed base-devel git shellcheck
make validate
make build
make install
```

`make build` creates a deterministic local source archive in
`build/artifacts/` and a package in `build/dist/`. `make install` requires
`sudo` and installs the package found in that directory.

For package metadata only:

```sh
make validate
makepkg -p packaging/arch/remote/PKGBUILD --printsrcinfo
```

See [packaging/arch/README.md](packaging/arch/README.md) for the difference
between local and release builds.

## Documentation

- [DEVELOPMENT.md](DEVELOPMENT.md) - layout, checks, and releases
- [CONTRIBUTING.md](https://github.com/argvus/.github/blob/main/CONTRIBUTING.md) - contribution workflow
- [SECURITY.md](https://github.com/argvus/.github/blob/main/SECURITY.md) - private vulnerability reports
- [Code of Conduct](https://github.com/argvus/.github/blob/main/policies/CODE_OF_CONDUCT.md) — community standards
- [AI usage policy](https://github.com/argvus/.github/blob/main/policies/IA_USAGE.md) — rules for AI-assisted contributions

## License

The package combines the third-party licenses documented in [LICENSE](LICENSE).
