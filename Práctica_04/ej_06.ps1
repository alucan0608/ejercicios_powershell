[int]$num = 33


while ($num1 -ne $num) {


    if ($num1 -gt $num) {
        Write-Host "El número introducido es mayor"
    } else {
        Write-Host "El número introducido es menor"
    }
}

Write-Host "Enhorabuena"