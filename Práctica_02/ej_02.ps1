[int]$num1 = Read-Host "Dime un número"
[int]$num2 = Read-Host "Dime otro número"

$suma = $num1 + $num2
$resta = $num1 - $num2
$mult = $num1 * $num2
$div = $num1 / $num2
$resto = $num1 % $num2

Write-Host "Suma ="$suma
Write-Host "Resta ="$resta
Write-Host "Multiplicación ="$mult
Write-Host "División ="$div
Write-Host "Resto ="$resto