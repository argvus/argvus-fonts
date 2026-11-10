---
title: Polices ARGVUS
description: Familles de polices installées par argvus-fonts et là où le bureau les choisit.
---
# Polices ARGVUS

`argvus-fonts` installe les familles de polices fournies sous `/usr/share/fonts/`. Elle ne choisit pas une police par elle-même : le choix est stocké dans la configuration ARGVUS et appliqué à chaque surface par le composant qui en est propriétaire.

## Familles installées

| Famille | Fichiers | Utilisé pour |
| --- | --- | --- |
| IBM Plex Mono | Regular, Italic, graisses Thin à Bold | Famille par défaut pour le bureau et les cibles monospace |
| Bitstream Vera Sans Mono | Police monospace | Disponible comme famille monospace |
| Terminess Nerd Font | Faces Mono, Propo et Regular avec glyphes Nerd | Disponible comme famille monospace ou proportionnelle |
| Symbols Nerd Font | Glyphes d'icônes | Disponible comme famille d'icônes |
| Font Awesome 7 Free | Brands, Regular et Solid | Disponible comme famille d'icônes |

Chaque famille est livrée avec sa licence (`LICENSE.txt` ou `OFL.txt`) à côté des fichiers de police.

## Où la police est choisie

Les préférences de police sont des paramètres canoniques dans `config.json` :

- `fonts.targets.<target>` contient la famille, le style et la taille de chaque interface (barre des tâches, télémétrie, Panneau de configuration, système, applications, terminal et navigateur).
- `fonts.rendering` contient l'anticrénelage, le hinting, l'ordre des sous-pixels et le DPI.

Modifiez-les dans le Centre de contrôle (Apparence > Polices). Les tailles ne sont pas fixées par ce paquet : la valeur affichée dans le Centre de contrôle est celle en vigueur. Ne modifiez pas les fichiers générés sous `data/generated/` ; ils sont réécrits à partir de `config.json`.

## Pages associées

- [Apparence et thèmes](/docs/user-guide/appearance/) pour le thème qui accompagne une police.
- [Fichiers de configuration](/docs/reference/configuration-files/) pour les paramètres canoniques.

## Repli multilingue

Le package nécessite `noto-fonts-cjk`, fournissant des glyphes chinois, japonais et coréens, ainsi que `noto-fonts` et `noto-fonts-emoji`. Fontconfig sélectionne des glyphes de secours pour la langue active ; les familles principales sélectionnées par l'utilisateur restent en vigueur. Les applications terminales nécessitent un terminal compatible Unicode avec des glyphes de secours. Vérifiez avec `fc-match "monospace:lang=ja:charset=65e5"` ou `fc-match "monospace:lang=ko:charset=d55c"`. Les polices fournissent le rendu, pas une méthode de saisie.
