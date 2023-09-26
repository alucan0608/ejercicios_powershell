[int]$num = Read-Host "Escribe un número"

for ($num1 = 0; $num1 -le 10; $num1++) {
    $res = $num1*$num
    Write-Host "$num1 x $num = $res"
}