---
title: Caratteri ARGVUS
description: Famiglie di font installate da argvus-fonts e dove il desktop le seleziona.
---
# Caratteri ARGVUS

`argvus-fonts` installa le famiglie di caratteri incluse in `/usr/share/fonts/`. Non sceglie un carattere da solo: la scelta è memorizzata nella configurazione di ARGVUS e applicata a ogni superficie dal componente che la possiede.

## Famiglie installate

| Famiglia | File | Utilizzo |
| --- | --- | --- |
| IBM Plex Mono | Regular, Italic, pesi da Thin a Bold | Famiglia predefinita per il desktop e per i target monospace |
| Bitstream Vera Sans Mono | Carattere monospace | Disponibile come famiglia monospace |
| Terminess Nerd Font | Caratteri Mono, Propo e Regular con glifi Nerd | Disponibile come famiglia monospace o proporzionale |
| Symbols Nerd Font | Glifi icona | Disponibile come famiglia di icone |
| Font Awesome 7 Free | Brands, Regular e Solid | Disponibile come famiglia di icone |

Ogni famiglia include la propria licenza (`LICENSE.txt` o `OFL.txt`) accanto ai file dei caratteri.

## Dove viene scelto il carattere

Le preferenze dei font sono impostazioni canoniche in `config.json`: 

- `fonts.targets.<target>` contiene la famiglia, lo stile e la dimensione di ogni superficie (barra delle applicazioni, 
  telemetria, Pannello di Controllo, sistema, applicazioni, terminale e browser). 
- `fonts.rendering` contiene antialiasing, hinting, ordine dei subpixel e DPI. 

Cambiale nel Centro di controllo (Aspetto > Font). Le dimensioni non sono fissate da questo
Package: il valore mostrato nel Centro di controllo è quello effettivo. Non modificare il
generato sotto `data/generated/`; vengono riscritti da `config.json`. 

## Pagine correlate

- [Aspetto e temi](/docs/user-guide/appearance/) per il tema che accompagna un carattere. 
- [File di configurazione](/docs/reference/configuration-files/) per le impostazioni canoniche. 

## Riserva multilingue

Il pacchetto richiede `noto-fonts-cjk`, che fornisce glifi cinesi, giapponesi e coreani, insieme a `noto-fonts` e `noto-fonts-emoji`. Fontconfig seleziona i glifi di riserva per la lingua attiva; le famiglie principali selezionate dall'utente rimangono in vigore. Le applicazioni terminal richiedono un terminale compatibile con Unicode con supporto per il font di riserva. Verificare con `fc-match "monospace:lang=ja:charset=65e5"` o `fc-match "monospace:lang=ko:charset=d55c"`. I font forniscono la resa grafica, non un metodo di input.
