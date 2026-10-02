---
title: ARGVUS Fonts
description: Typography system and fonts for ARGVUS desktop
---

# ARGVUS Fonts

ARGVUS includes a curated selection of fonts optimized for readability and visual consistency across the desktop. The typography system is designed to work seamlessly with the ARGVUS interface.

## Included Fonts

The ARGVUS Fonts package includes:
- **Inter** - Modern sans-serif for UI elements
- **Fira Code** - Monospace font for terminal and code editors
- **Noto Sans** - Unicode-rich sans-serif for international text
- Additional system fonts for compatibility

## Installation

Fonts are installed as part of ARGVUS or separately:

```bash
pacman -S argvus-fonts
```

## Configuration

Configure fonts through:
- ARGVUS Control Center → Fonts
- Individual application preferences
- GTK/Qt configuration files

## Font Specifications

- **UI Font**: Inter 10pt
- **Terminal Font**: Fira Code 10pt
- **System Font**: Noto Sans 11pt

For custom font configurations, edit your relevant configuration files (`.config/gtk-3.0/settings.ini`, etc.)
