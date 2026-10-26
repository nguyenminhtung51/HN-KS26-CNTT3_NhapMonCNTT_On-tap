# BÀI LÀM – THI THỬ HACKATHON 02 (GAMEZONE)

- **Họ tên:Nguyễn Minh Tùng** 
- **Lớp:CNTT3** 
- **Link repository:** 
- **Hệ điều hành (Windows/macOS):Windows** 

## 4.2. Thao tác CLI

### Các lệnh đã chạy

```shell
# Ghi lệnh vào đây
PS D:\de-on-tap-game\starter-kit\gamezone-website> pwd
PS D:\de-on-tap-game\starter-kit\gamezone-website> ls -Force -Recurse
PS D:\de-on-tap-game\starter-kit\gamezone-website> mv '.\cap_nhat.txt' "docs"
PS D:\de-on-tap-game\starter-kit\gamezone-website> mv '.\logo_gamezone.PNG' "media"
PS D:\de-on-tap-game\starter-kit\gamezone-website> cp '.\media\logo_gamezone.PNG' "backup"
PS D:\de-on-tap-game\starter-kit\gamezone-website> rm .\temp_207.tmp
PS D:\de-on-tap-game\starter-kit\gamezone-website> cd .\logs\
PS D:\de-on-tap-game\starter-kit\gamezone-website\logs> ls
PS D:\de-on-tap-game\starter-kit\gamezone-website\logs> cd ..
```

### Kết quả liệt kê toàn bộ dự án
```text
(Dán kết quả vào đây)
    Directory: D:\de-on-tap-game\starter-kit\gamezone-website


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----        10/26/2026   1:29 PM                backup
d-----        10/26/2026   1:23 PM                data
d-----        10/26/2026   1:26 PM                docs
d-----        10/26/2026   1:23 PM                logs
d-----        10/26/2026   1:27 PM                media
-a----        10/26/2026   1:10 PM             70 .env
-a----        10/26/2026   1:10 PM           1437 bai_lam.md
```

## 4.3. Lọc log thủ công

### Lệnh đã chạy

```shell
# Ghi lệnh vào đây
PS D:\de-on-tap-game\starter-kit\gamezone-website\logs> Get-Content ".\game.log" | Select-String "ERROR" > ".\daily_report.txt"

```

### 2 dòng lỗi đầu tiên trong daily_report.txt

```text
(Dán kết quả vào đây)
2025-11-05 08:03:15 [ERROR] Mat ket noi may chu game
2025-11-05 08:09:15 [ERROR] Mat ket noi may chu game
```

## 4.4. README.md

> Chấm trực tiếp trên `README.md` ở gốc dự án.

- [ ] Heading 1
- [ ] Mô tả in đậm + in nghiêng
- [ ] Bảng `Thư mục | Nội dung` (≥3 dòng)
- [ ] Code block lệnh liệt kê
- [ ] Task list (≥2 việc, ≥1 đã xong)
- [ ] Blockquote nhắc không upload `.env`

## 4.5. Chạy script auto_report

### Lệnh chạy

```shell
# Ghi lệnh vào đây
# Tac gia: "Nguyễn Minh Tùng"
# Ngay tao: "05/01/2008"

"=== BAO CAO LOI GAMEZONE ===" > ".\logs\auto_report.txt"
Get-Content ".\logs\game.log" | Select-String "ERROR" >> ".\logs\auto_report.txt"
Write-Host "Da tao bao cao: xong"

```

### Nội dung file logs/auto_report.txt

```text
(Dán kết quả vào đây)
=== BAO CAO LOI GAMEZONE ===

2025-11-05 08:03:15 [ERROR] Mat ket noi may chu game
2025-11-05 08:09:15 [ERROR] Mat ket noi may chu game
2025-11-05 08:12:15 [ERROR] Mat ket noi may chu game
2025-11-05 08:39:15 [ERROR] Mat ket noi may chu game
2025-11-05 08:42:15 [ERROR] Mat ket noi may chu game
2025-11-05 08:51:15 [ERROR] Loi luu tien trinh choi

```

## 4.6. Đếm số dòng lỗi

### Lệnh

```shell
# Ghi lệnh vào đây
(Get-Content ".\logs\auto_report.txt" | Select-String "ERROR").count
```

### Kết quả đếm

```text
(Dán kết quả vào đây)
6
```

## 4.7. Báo cáo tổng hợp

### Các lệnh đã chạy

```shell
# Ghi lệnh vào đây
  Id CommandLine
  -- -----------
   1 cd d:\
   2 cd .\de-on-tap-game\
   3 cd .\starter-kit\
   4 mv '.\GameZone Website FINAL\' "gamezone-website"
   5 cd .\gamezone-website\
   6 mkdir docs,media,data,logs,backup
   7 mv '.\Logo GameZone.PNG' "logo-gamezone.PNG"
   8 mv '.\Cap Nhat.txt' "cap_nhat.txt"
   9 mv .\logo-gamezone.PNG "logo_gamezone.PNG"
  10 mv '.\Giao Dich Thang 11.xlsx' "giao_dich" "giao_dich_thang_11.xlsx"
  11 mv '.\Giao Dich Thang 11.xlsx' "giao_dich_thang_11.xlsx"
  12 mv '.\Game.log' "game.log"
  13 pwd
  14 ls
  15 ls -Recurse
  16 ls -Force
  17 mv '.\cap_nhat.txt' "docs"
  18 mv '.\logo_gamezone.PNG' "media"
  19 cp '.\media\logo_gamezone.PNG' "backup"
  20 rm .\temp_207.tmp
  21 cd .\logs\
  22 ls
  23 cd ..
  24 ls -Force
  25 cd .\logs\
  26 Get-Content ".\logs\game.log" | Select-String "ERROR"
  27 Get-Content ".\game.log" | Select-String "ERROR"
  28 Get-Content ".\game.log" | Select-String "ERROR" > ".\daily_report.txt"
  29 cd ..
  30 mkdir ".\README.md"
  31 New-Item README.md
  32 .\auto_report.ps1
  33 (Get-Content ".\logs\auto_report.txt" | Select-String "ERROR").count
```

### Nội dung file logs/tong_hop.txt

```text
(Dán kết quả vào đây)
=== TONG HOP LOG GAME ZONE ===

2025-11-05 08:54:15 [WARNING] May chu qua tai CPU 90%



2025-11-05 08:03:15 [ERROR] Mat ket noi may chu game
2025-11-05 08:09:15 [ERROR] Mat ket noi may chu game
2025-11-05 08:12:15 [ERROR] Mat ket noi may chu game
2025-11-05 08:39:15 [ERROR] Mat ket noi may chu game
2025-11-05 08:42:15 [ERROR] Mat ket noi may chu game
2025-11-05 08:51:15 [ERROR] Loi luu tien trinh choi

```

## 4.8. Excel

> Chấm trực tiếp trên file `data/giao_dich_thang_11.xlsx`.
