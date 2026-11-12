---
title: ARGVUS Yazı Tipleri
description: Argvus-fonts tarafından yüklenen yazı tipi aileleri ve masaüstünün bunları seçtiği yer.
---

# ARGVUS Yazı Tipleri

`argvus-fonts`, birlikte verilen yazı tipi ailelerini `/usr/share/fonts/` altında kurar. Yapmaz
yalnızca bir yazı tipi seçin: seçim ARGVUS yapılandırmasında saklanır ve uygulanır
her yüzeyi ona sahip olan bileşene göre.

## Yüklü aileler

| Aile | Dosyalar | | için kullanılır
| --- | --- | --- |
| IBM Plex Mono | Regular, Italic, ağırlıklar İnce'den Kalın'a | Masaüstü ve monospace hedefleri için varsayılan aile |
| Bitstream Vera Sans Mono | Tek aralıklı yazı tipi | Tek aralıklı bir aile olarak mevcut |
| Terminess Nerd Font | Nerd glifleri ile Mono, Propo ve normal yazı tipleri | Monospace veya orantılı aile olarak mevcuttur |
| Symbols Nerd Font | Simgeler glifi | Bir simge ailesi olarak mevcut |
| Font Awesome 7 Ücretsiz | Markalar, Normal ve Dolgu | Bir ikon ailesi olarak mevcuttur |

Her aile, lisansını (`LICENSE.txt` veya `OFL.txt`) yazı tipi dosyalarının yanına göndermektedir.

## Yazı tipi seçildiği yerde

Yazı tipi tercihleri, `config.json` içindeki kanonik ayarlardır:

- `fonts.targets.<target>` her yüzeyin (görev çubuğu,
telemetri, Kontrol Paneli, sistem, uygulamalar, terminal ve tarayıcı).
- `fonts.rendering` antialiasing, ipucu verme, alt piksel sırası ve DPI değerlerini tutar.

Bunları Kontrol Merkezi'nde değiştirin (Görünüm > Yazı Tipleri). Boyutlar bu
package: tarafından sabitlenmez; Kontrol Merkezi'nde gösterilen değer geçerli olanıdır.
`data/generated/` altında oluşturulan dosyalar; `config.json`'den yeniden yazılmıştır.

## İlgili sayfalar

- [Görünüm ve temalar](/docs/user-guide/appearance/) bir yazı tipine eşlik eden tema için.
- [Yapılandırma dosyaları](/docs/reference/configuration-files/) canonical ayarlar için.

## Çok dilli geri dönüş

Paket, `noto-fonts-cjk`'yi gerektirir ve bu paket, `noto-fonts` ve `noto-fonts-emoji` ile birlikte Çince, Japonca ve Korece glifler sağlar. Fontconfig, etkin dil için yedek glifleri seçer; kullanıcı tarafından seçilen birincil yazı tipleri geçerli kalır. Terminal uygulamaları, yazı tipi yedeği ile Unicode destekli bir terminal gerektirir. `fc-match "monospace:lang=ja:charset=65e5"` veya `fc-match "monospace:lang=ko:charset=d55c"` ile doğrulayın. Yazı tipleri, girdi yöntemi değil, render sağlamak için kullanılır.
