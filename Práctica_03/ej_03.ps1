[int]$num1 = Read-Host "Escribe un número"
[int]$num2 = Read-Host "Escribe otro número"

if ($num1 -lt $num2) {
    Write-Host "El número $num1 es menor que $num2"
}elseif ($num1 -gt $num2){
    Write-Host "El número $num1 es mayor que $num2"
}elseif ($num1 -eq $num2){
    Write-Host "El número $num1 y $num2 son iguales"
}