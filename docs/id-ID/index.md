---
title: ARGVUS Fonts
description: Keluarga font yang diinstal oleh argvus-fonts dan di mana desktop memilihnya.
---

# Font ARGVUS

`argvus-fonts` menginstal keluarga font bawaan di bawah `/usr/share/fonts/`. Ini tidak
memilih font sendiri: pilihan disimpan dalam konfigurasi ARGVUS dan diterapkan ke
setiap permukaan oleh komponen yang memilikinya.

## Keluarga yang diinstal

| Family | Files | Used for |
| --- | --- | --- |
| IBM Plex Mono | Reguler, Miring, berat Tipis hingga Tebal | Keluarga default untuk desktop dan target monospace |
| Bitstream Vera Sans Mono | Huruf monospace | Tersedia sebagai keluarga monospace |
| Font Terminess Nerd | Wajah Mono, Propo, dan reguler dengan glif Nerd | Tersedia sebagai keluarga monospace atau proporsional |
| Font Simbol Nerd | Glif ikon | Tersedia sebagai keluarga ikon |
| Font Awesome 7 Gratis | Merek, Reguler dan Solid | Tersedia sebagai keluarga ikon |

Setiap keluarga mengirimkan lisensinya (`LICENSE.txt` atau `OFL.txt`) di samping file font.

## Tempat font dipilih

Preferensi font adalah pengaturan kanonik di `config.json`:

- `fonts.targets.<target>` menyimpan keluarga, gaya, dan ukuran masing-masing permukaan (taskbar,
telemetri, Panel Kontrol, sistem, aplikasi, terminal dan peramban).
- `fonts.rendering` holds antialiasing, hinting, subpixel order and DPI.

Ubah mereka di Pusat Kontrol (Tampilan > Font). Ukurannya tidak ditetapkan oleh  ini
package: nilai yang ditampilkan di Pusat Kontrol adalah yang berlaku. Jangan mengedit
file yang dihasilkan di bawah `data/generated/`; mereka ditulis ulang dari `config.json`.

## Halaman terkait

- [Penampilan dan tema](/docs/user-guide/appearance/) untuk tema yang menyertai font.
- [File konfigurasi](/docs/reference/configuration-files/) untuk pengaturan kanonik.

## Cadangan multibahasa

Paket ini memerlukan `noto-fonts-cjk`, menyediakan aksara Cina, Jepang, dan Korea, bersamaan dengan `noto-fonts` and `noto-fonts-emoji`. Fontconfig memilih glif cadangan untuk bahasa yang aktif; keluarga font utama yang dipilih pengguna tetap berlaku. Aplikasi terminal memerlukan terminal yang mendukung Unicode dengan font cadangan. Verifikasi dengan`fc-match "monospace:lang=ja:charset=65e5"` or `fc-match "monospace:lang=ko:charset=d55c"`. Font menyediakan rendering, bukan metode input.
