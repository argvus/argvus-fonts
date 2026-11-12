---
title: ARGVUS 글꼴
description: argvus-fonts에 의해 설치된 글꼴 패밀리와 데스크탑이 이를 선택하는 위치.
---

# ARGVUS 글꼴

`argvus-fonts`은 번들된 글꼴 패밀리를 `/usr/share/fonts/` 아래에 설치합니다. 자체적으로 글꼴을 선택하지는 않으며, 선택은 ARGVUS 구성에 저장되고 해당 소유 컴포넌트가 각 표면에 적용합니다.

## 설치된 패밀리

| 패밀리 | 파일 | 사용 용도 |
| --- | --- | --- |
| IBM Plex Mono | Regular, Italic, Thin에서 Bold까지의 가중치 | 데스크탑 및 고정폭 대상의 기본 패밀리 |
| Bitstream Vera Sans Mono | 고정폭 글꼴 | 고정폭 패밀리로 사용 가능 |
| Terminess Nerd Font | Nerd 글리프가 포함된 Mono, Propo, Regular 글꼴 | 고정폭 또는 비례 폭 패밀리로 사용 가능 |
| Symbols Nerd Font | 아이콘 글리프 | 아이콘 패밀리로 사용 가능 |
| Font Awesome 7 Free | Brands, Regular, Solid | 아이콘 패밀리로 사용 가능 |

각 패밀리는 글꼴 파일 옆에 라이선스(`LICENSE.txt` 또는 `OFL.txt`)를 제공합니다.

## 글꼴 선택 위치

`config.json`에서 글꼴 기본 설정은 표준 설정입니다:

- `fonts.targets.<target>`는 각 화면(작업 표시줄, 원격 측정, 제어판, 시스템, 애플리케이션, 터미널 및 브라우저)의 글꼴 계열, 스타일 및 크기를 저장합니다.
- `fonts.rendering`는 안티앨리어싱, 힌팅, 서브픽셀 순서 및 DPI를 저장합니다.

제어 센터(모양 > 글꼴)에서 이를 변경하세요. 크기는 이 패키지에 의해 고정되지 않습니다: 제어 센터에 표시된 값이 실제로 적용되는 값입니다. `data/generated/` 아래의 생성된 파일을 편집하지 마십시오; 이들은 `config.json`에서 다시 작성됩니다.

## 관련 페이지

- [글꼴과 함께 제공되는 테마에 대한 모양 및 테마](/docs/user-guide/appearance/)
- [표준 설정에 대한 구성 파일](/docs/reference/configuration-files/)

## 다국어 대체

이 패키지는 `noto-fonts-cjk`를 필요로 하며, 중국어, 일본어 및 한국어 글리프를 제공하고, `noto-fonts`와 `noto-fonts-emoji`도 포함합니다. Fontconfig는 활성 언어에 대한 대체 글리프를 선택하며, 사용자가 선택한 기본 글꼴 패밀리는 계속 적용됩니다. 터미널 응용 프로그램은 글꼴 대체 기능이 있는 유니코드 지원 터미널이 필요합니다. `fc-match "monospace:lang=ja:charset=65e5"` 또는 `fc-match "monospace:lang=ko:charset=d55c"`로 확인하십시오. 글꼴은 렌더링을 제공하며, 입력 방법은 제공하지 않습니다.
