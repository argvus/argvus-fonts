---
title: Fuentes ARGVUS
description: Familias de fuentes instaladas por argvus-fonts y dónde el escritorio las elige.
---
# Fuentes ARGVUS

`argvus-fonts` instala las familias de fuentes incluidas bajo `/usr/share/fonts/`. No
elige una fuente por sí misma: la elección se almacena en la configuración de ARGVUS y se aplica a
cada superficie por el componente que la posee.

## Familias instaladas

| Familia | Archivos | Usado para |
| --- | --- | --- |
| IBM Plex Mono | Regular, Cursiva, pesos de Thin a Bold | Familia predeterminada para el escritorio y los objetivos monoespaciados |
| Bitstream Vera Sans Mono | Fuente monoespaciada | Disponible como una familia monoespaciada |
| Terminess Nerd Font | Fuentes Mono, Propo y Regular con glifos Nerd | Disponible como familia monoespaciada o proporcional |
| Symbols Nerd Font | Glifos de iconos | Disponible como familia de iconos |
| Font Awesome 7 Free | Brands, Regular y Solid | Disponible como familia de iconos |

Cada familia incluye su licencia (`LICENSE.txt` o `OFL.txt`) junto a los archivos de fuente.

## Dónde se elige la fuente

Las preferencias de fuentes son configuraciones canónicas en `config.json`:

- `fonts.targets.<target>` contiene la familia, el estilo y el tamaño de cada superficie (barra de tareas, telemetría, Panel de control, sistema, aplicaciones, terminal y navegador).
- `fonts.rendering` contiene suavizado, hinting, orden de subpíxeles y DPI.

Cámbielos en el Centro de Control (Apariencia > Fuentes). Los tamaños no están fijados por este paquete: el valor que se muestra en el Centro de Control es el que está en efecto. No edite los archivos generados bajo `data/generated/`; se reescriben desde `config.json`.

## Páginas relacionadas

- [Apariencia y temas](/docs/user-guide/appearance/) para el tema que acompaña a una fuente.
- [Archivos de configuración](/docs/reference/configuration-files/) para las configuraciones canónicas.

## Reemplazo multilingüe

El paquete requiere `noto-fonts-cjk`, que proporciona glifos chinos, japoneses y coreanos, junto con `noto-fonts` y `noto-fonts-emoji`. Fontconfig selecciona glifos de respaldo para el idioma activo; las familias primarias seleccionadas por el usuario permanecen en efecto. Las aplicaciones de terminal requieren un terminal compatible con Unicode con respaldo de fuentes. Verifique con `fc-match "monospace:lang=ja:charset=65e5"` o `fc-match "monospace:lang=ko:charset=d55c"`. Las fuentes proporcionan renderizado, no un método de entrada.
