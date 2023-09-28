[int]$num = 33


while ($num1 -ne $num) {
    [int]$num1= Read-Host "Escribe un número"

    if ($num1 -gt $num) {
        Write-Host "El número introducido es mayor"
    } else {
        Write-Host "El número introducido es menor"
    }
}

Write-Host "Enhorabuena"