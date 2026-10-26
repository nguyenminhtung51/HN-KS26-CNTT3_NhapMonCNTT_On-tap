# Tac gia: "Nguyễn Minh Tùng"
# Ngay tao: "05/01/2008"

"=== BAO CAO LOI GAMEZONE ===" > ".\logs\auto_report.txt"
Get-Content ".\logs\game.log" | Select-String "ERROR" >> ".\logs\auto_report.txt"
Write-Host "Da tao bao cao: xong"
