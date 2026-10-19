---
title: ARGVUS Fonts
description: Famílias de fonte instaladas pelo argvus-fonts e onde o desktop as escolhe.
---

# ARGVUS Fonts

O `argvus-fonts` instala as famílias de fonte incluídas em `/usr/share/fonts/`. Ele não
escolhe uma fonte sozinho: a escolha fica na configuração do ARGVUS e é aplicada em cada
superfície pelo componente responsável.

## Famílias instaladas

| Família | Arquivos | Usada para |
| --- | --- | --- |
| IBM Plex Mono | Regular, Italic, pesos de Thin a Bold | Família padrão do desktop e dos alvos monoespaçados |
| Bitstream Vera Sans Mono | Fonte monoespaçada | Disponível como família monoespaçada |
| Terminess Nerd Font | Faces Mono, Propo e regular com glifos Nerd | Disponível como família monoespaçada ou proporcional |
| Symbols Nerd Font | Glifos de ícone | Disponível como família de ícones |
| Font Awesome 7 Free | Brands, Regular e Solid | Disponível como família de ícones |

Cada família traz a licença (`LICENSE.txt` ou `OFL.txt`) junto dos arquivos da fonte.

## Onde a fonte é escolhida

As preferências de fonte são configurações canônicas em `config.json`:

- `fonts.targets.<alvo>` guarda família, estilo e tamanho de cada superfície (taskbar,
  telemetria, Control Panel, sistema, aplicativos, terminal e navegador).
- `fonts.rendering` guarda antialiasing, hinting, ordem de subpixel e DPI.

Altere-as no Control Center (Aparência > Fontes). Os tamanhos não são fixados por este
pacote: vale o valor mostrado no Control Center. Não edite os arquivos gerados em
`data/generated/`; eles são reescritos a partir do `config.json`.

## Páginas relacionadas

- [Aparência e temas](/docs/user-guide/appearance/) para o tema que acompanha uma fonte.
- [Arquivos de configuração](/docs/reference/configuration-files/) para as configurações canônicas.
