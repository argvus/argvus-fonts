---
title: Phông chữ ARGVUS
description: Các họ phông chữ được cài đặt bởi argvus-fonts và nơi mà máy tính để bàn chọn chúng.
---

# Phông chữ ARGVUS

`argvus-fonts` cài đặt các họ phông chữ đi kèm dưới `/usr/share/fonts/`. Nó không
tự chọn một phông chữ: sự lựa chọn được lưu trong cấu hình ARGVUS và được áp dụng cho
từng bề mặt bởi thành phần sở hữu nó.

## Các họ phông chữ đã được cài đặt

| Gia Đình | Tập tin | Được sử dụng cho |
| --- | --- | --- |
| IBM Plex Mono | Regular, Italic, từ trọng lượng Mảnh đến Đậm | Gia đình mặc định cho máy tính để bàn và các mục tiêu chữ đơn |
| Bitstream Vera Sans Mono | Kiểu chữ đơn cách | Có sẵn dưới dạng gia đình chữ đơn cách |
| Terminess Nerd Font | Các kiểu Mono, Propo và thường với các ký tự Nerd | Có sẵn dưới dạng họ phông chữ monospace hoặc tỷ lệ |
| Phông chữ Symbols Nerd | Ký hiệu biểu tượng | Có sẵn dưới dạng bộ biểu tượng |
| Font Awesome 7 Miễn phí | Thương hiệu, Thường và Đầy đủ | Có sẵn như một gia đình biểu tượng |

Mỗi họ phông chữ đi kèm giấy phép của nó (`LICENSE.txt` hoặc `OFL.txt`) bên cạnh các tệp phông chữ.

## Nơi phông chữ được chọn

Tuỳ chọn phông chữ là các cài đặt chuẩn trong `config.json`:

- `fonts.targets.<target>` giữ họ, kiểu và kích thước của từng bề mặt (thanh tác vụ,
telemetry, Bảng điều khiển, hệ thống, ứng dụng, terminal và trình duyệt).
- `fonts.rendering` giữ các thiết lập khử răng cưa, gợi ý, thứ tự subpixel và DPI.

Thay đổi chúng trong Trung tâm điều khiển (Giao diện > Phông chữ). Kích thước không được cố định bằng
package: giá trị hiển thị trong Trung tâm điều khiển là giá trị đang có hiệu lực. Không chỉnh sửa
các tệp được tạo dưới `data/generated/`; chúng được viết lại từ `config.json`.

## Các trang liên quan

- [Giao diện và chủ đề](/docs/user-guide/appearance/) cho chủ đề đi kèm với một phông chữ.
- [Tệp cấu hình](/docs/reference/configuration-files/) cho các cài đặt chuẩn.

## Dự phòng đa ngôn ngữ

Gói này yêu cầu `noto-fonts-cjk`, cung cấp các ký tự Trung, Nhật và Hàn, cùng với `noto-fonts` và `noto-fonts-emoji`. Fontconfig chọn các ký tự thay thế cho ngôn ngữ đang hoạt động; các họ phông chữ chính do người dùng chọn vẫn có hiệu lực. Các ứng dụng terminal yêu cầu một terminal hỗ trợ Unicode với khả năng thay thế phông chữ. Kiểm tra bằng `fc-match "monospace:lang=ja:charset=65e5"` hoặc `fc-match "monospace:lang=ko:charset=d55c"`. Phông chữ cung cấp hiển thị, không phải phương thức nhập.
