[int]$num = Read-Host "Escribe un número"

Write-Host -NoNewline "1"
for ($num1 = 0; $num1 -lt $num; $num1 +=2) {
    Write-Host -NoNewline ", $num1"
}