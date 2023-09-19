[int]$num1 = Read-Host "Escribe un número"
$res1 = $num1 % 2

if ($res1 -ne 0) {
    Write-Host "El número es impar"
} Else {
    Write-Host "El número es par"
}