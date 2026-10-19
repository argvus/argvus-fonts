---
title: ARGVUS Fonts
description: Font families installed by argvus-fonts and where the desktop chooses them.
---

# ARGVUS Fonts

`argvus-fonts` installs the bundled font families under `/usr/share/fonts/`. It does not
choose a font by itself: the choice is stored in the ARGVUS configuration and applied to
each surface by the component that owns it.

## Installed families

| Family | Files | Used for |
| --- | --- | --- |
| IBM Plex Mono | Regular, Italic, weights Thin to Bold | Default family for the desktop and the monospace targets |
| Bitstream Vera Sans Mono | Monospace face | Available as a monospace family |
| Terminess Nerd Font | Mono, Propo and regular faces with Nerd glyphs | Available as a monospace or proportional family |
| Symbols Nerd Font | Icon glyphs | Available as an icon family |
| Font Awesome 7 Free | Brands, Regular and Solid | Available as an icon family |

Each family ships its license (`LICENSE.txt` or `OFL.txt`) next to the font files.

## Where the font is chosen

Font preferences are canonical settings in `config.json`:

- `fonts.targets.<target>` holds the family, style and size of each surface (taskbar,
  telemetry, Control Panel, system, applications, terminal and browser).
- `fonts.rendering` holds antialiasing, hinting, subpixel order and DPI.

Change them in the Control Center (Appearance > Fonts). The sizes are not fixed by this
package: the value shown in the Control Center is the one in effect. Do not edit the
generated files under `data/generated/`; they are rewritten from `config.json`.

## Related pages

- [Appearance and themes](/docs/user-guide/appearance/) for the theme that accompanies a font.
- [Configuration files](/docs/reference/configuration-files/) for the canonical settings.
