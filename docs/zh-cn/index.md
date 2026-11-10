---
title: ARGVUS 字体
description: 由 argvus-fonts 安装的字体系列以及桌面选择它们的位置。
---

# ARGVUS 字体

`argvus-fonts` 将捆绑的字体家族安装到 `/usr/share/fonts/` 下。它本身并不选择字体：字体的选择存储在 ARGVUS 配置中，并由拥有该表面的组件应用。

## 已安装的字体家族

| 家族 | 文件 | 用途 |
| --- | --- | --- |
| IBM Plex Mono | Regular, Italic, 权重从 Thin 到 Bold | 桌面和等宽目标的默认字体家族 |
| Bitstream Vera Sans Mono | 等宽字体 | 可用作等宽字体家族 |
| Terminess Nerd Font | Mono, Propo 和带 Nerd 字形的 Regular 字体 | 可用作等宽或比例字体家族 |
| Symbols Nerd Font | 图标字形 | 可用作图标字体家族 |
| Font Awesome 7 Free | Brands, Regular 和 Solid | 可用作图标字体家族 |

每个字体家族都会将其许可（`LICENSE.txt` 或 `OFL.txt`）附在字体文件旁。

## 字体选择的位置

在 `config.json` 中，字体偏好是规范设置：

- `fonts.targets.<target>` 保存每个界面（任务栏、遥测、控制面板、系统、应用程序、终端和浏览器）的字体家族、样式和大小。
- `fonts.rendering` 保存抗锯齿、提示、子像素顺序和 DPI。

可在控制中心（外观 > 字体）中更改它们。大小不受此软件包固定：控制中心中显示的值即为生效值。请勿编辑 `data/generated/` 下生成的文件；它们由 `config.json` 重写。

## 相关页面

- [外观和主题](/docs/user-guide/appearance/)] 了解随字体附带的主题。
- [配置文件](/docs/reference/configuration-files/)] 了解规范设置。

## 多语言回退

该软件包需要 `noto-fonts-cjk`，提供中文、日文和韩文字形，以及 `noto-fonts` 和 `noto-fonts-emoji`。Fontconfig 会为活动语言选择回退字形；用户选择的主要字体族保持有效。终端应用程序需要支持 Unicode 的终端和字体回退。可使用 `fc-match "monospace:lang=ja:charset=65e5"` 或 `fc-match "monospace:lang=ko:charset=d55c"` 进行验证。字体提供的是渲染功能，而不是输入法。
