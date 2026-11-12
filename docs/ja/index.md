---
title: ARGVUS フォント
description: argvus-fontsによってインストールされたフォントファミリーと、デスクトップがそれらを選ぶ場所。
---
# ARGVUS フォント

`argvus-fonts` は、同梱されているフォントファミリーを `/usr/share/fonts/` 以下にインストールします。フォント自体は自動で選択されず、選択は ARGVUS の設定に保存され、各サーフェスにオーナーであるコンポーネントによって適用されます。

## インストールされているファミリー

| ファミリー | ファイル | 用途 |
| --- | --- | --- |
| IBM Plex Mono | レギュラー、イタリック、ウェイト Thin から Bold | デスクトップおよび等幅ターゲットのデフォルトファミリー |
| Bitstream Vera Sans Mono | 等幅フォント | 等幅ファミリーとして利用可能 |
| Terminess Nerd Font | Nerd グリフ付きの Mono、Propo、およびレギュラー | 等幅またはプロポーショナルファミリーとして利用可能 |
| Symbols Nerd Font | アイコングリフ | アイコンファミリーとして利用可能 |
| Font Awesome 7 Free | Brands、Regular、Solid | アイコンファミリーとして利用可能 |

各ファミリーは、フォントファイルの横にライセンス（`LICENSE.txt` または `OFL.txt`）を同梱しています。

## フォントが選択される場所

フォントの設定は `config.json` における標準設定です:

- `fonts.targets.<target>` には各サーフェス（タスクバー、テレメトリ、コントロールパネル、システム、アプリケーション、ターミナル、ブラウザ）のファミリー、スタイル、サイズが保存されます。
- `fonts.rendering` にはアンチエイリアス、ヒンティング、サブピクセル順序、DPI が保存されます。

これらはコントロールセンター（外観 > フォント）で変更してください。サイズはこのパッケージによって固定されているわけではありません：コントロールセンターに表示されている値が実際に有効な設定です。`data/generated/` 下の生成されたファイルを編集しないでください；それらは `config.json` から再生成されます。

## 関連ページ

- フォントに付随するテーマについては [Appearance and themes](/docs/user-guide/appearance/)
- 標準設定については [Configuration files](/docs/reference/configuration-files/)

## 多言語フォールバック

このパッケージは`noto-fonts-cjk`を必要とし、中国語、日本語、韓国語のグリフを提供します。また、`noto-fonts`および`noto-fonts-emoji`も含まれています。Fontconfigはアクティブな言語に対してフォールバックグリフを選択しますが、ユーザーが選択したプライマリファミリーは有効なままです。ターミナルアプリケーションは、フォントフォールバックに対応したUnicode対応ターミナルを必要とします。`fc-match "monospace:lang=ja:charset=65e5"`または`fc-match "monospace:lang=ko:charset=d55c"`で確認してください。フォントは描画を提供しますが、入力方式は提供しません。
