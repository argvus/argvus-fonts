---
title: ARGVUS Schriften
description: Schriftartenfamilien, die von argvus-fonts installiert wurden und wo der Desktop sie auswählt.
---
# ARGVUS-Schriften

`argvus-fonts` installiert die mitgelieferten Schriftfamilien unter `/usr/share/fonts/`. Es wählt nicht selbst eine Schriftart aus: Die Auswahl wird in der ARGVUS-Konfiguration gespeichert und von der Komponente, die sie besitzt, auf jede Oberfläche angewendet.

## Installierte Familien

| Familie | Dateien | Verwendet für |
| --- | --- | --- |
| IBM Plex Mono | Regular, Italic, Gewichtungen Thin bis Bold | Standardfamilie für den Desktop und die Monospace-Ziele |
| Bitstream Vera Sans Mono | Monospaced Schrift | Verfügbar als Monospace-Familie |
| Terminess Nerd Font | Mono-, Propo- und Regular-Stile mit Nerd-Glyphen | Verfügbar als Monospace- oder proportionale Familie |
| Symbols Nerd Font | Icon-Glyphen | Verfügbar als Icon-Familie |
| Font Awesome 7 Free | Brands, Regular und Solid | Verfügbar als Icon-Familie |

Jede Familie enthält ihre Lizenz (`LICENSE.txt` oder `OFL.txt`) neben den Schriftdateien.

## Wo die Schriftart ausgewählt wird

Schriftartpräferenzen sind kanonische Einstellungen in `config.json`:

- `fonts.targets.<target>` enthält die Familie, den Stil und die Größe jeder Oberfläche (Taskleiste, Telemetrie, Systemsteuerung, System, Anwendungen, Terminal und Browser).
- `fonts.rendering` enthält Antialiasing, Hinting, Subpixel-Reihenfolge und DPI.

Ändern Sie sie im Kontrollzentrum (Erscheinungsbild > Schriftarten). Die Größen werden von diesem Paket nicht festgelegt: Der im Kontrollzentrum angezeigte Wert ist der tatsächlich wirksame. Bearbeiten Sie nicht die unter `data/generated/` generierten Dateien; sie werden aus `config.json` neu geschrieben.

## Verwandte Seiten

- [Erscheinungsbild und Designs](/docs/user-guide/appearance/) für das Thema, das einer Schriftart beiliegt.
- [Konfigurationsdateien](/docs/reference/configuration-files/) für die kanonischen Einstellungen.

## Mehrsprachiges Fallback

Das Paket erfordert `noto-fonts-cjk`, das chinesische, japanische und koreanische Glyphen bereitstellt, zusammen mit `noto-fonts` und `noto-fonts-emoji`. Fontconfig wählt Ersatzglyphen für die aktive Sprache aus; vom Benutzer gewählte Primärfamilien bleiben in Kraft. Terminalanwendungen erfordern ein Unicode-fähiges Terminal mit Schriftart-Ersatz. Überprüfen Sie mit `fc-match "monospace:lang=ja:charset=65e5"` oder `fc-match "monospace:lang=ko:charset=d55c"`. Schriftarten stellen die Darstellung bereit, nicht die Eingabemethode.
