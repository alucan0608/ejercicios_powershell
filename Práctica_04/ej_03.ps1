[int]$num1 = Read-Host "Escribe un número"
[int]$num = 0

if ($num1 -gt 0) {
    while ($num -lt $num1) {
    Write-Host -NoNewline "$num1, "
    $num1 -= 1
    }
    Write-Host -NoNewline "$num"
} else {
    Write-Host "El número introducido debe ser positivo"
}