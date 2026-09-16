# argvus-fonts

Bundled fonts for the ARGVUS desktop: Bitstream Vera Sans Mono, Font Awesome
7 Free, IBM Plex Mono, Symbols Nerd Font, and Terminess Nerd Font.

[![CI](https://github.com/argvus/argvus-fonts/actions/workflows/ci.yml/badge.svg)](https://github.com/argvus/argvus-fonts/actions/workflows/ci.yml)
[![Release](https://github.com/argvus/argvus-fonts/actions/workflows/release.yml/badge.svg)](https://github.com/argvus/argvus-fonts/actions/workflows/release.yml)

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
makepkg -p packaging/arch/ci/PKGBUILD --printsrcinfo
```

See [packaging/arch/README.md](packaging/arch/README.md) for the difference
between local and release builds.

## Documentation

- [DEVELOPMENT.md](DEVELOPMENT.md) - layout, checks, and releases
- [CONTRIBUTING.md](CONTRIBUTING.md) - contribution workflow
- [SECURITY.md](SECURITY.md) - private vulnerability reports

## License

The package combines the third-party licenses documented in [LICENSE](LICENSE).
